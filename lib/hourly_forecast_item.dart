import 'package:flutter/material.dart';

class HourlyForecastItem extends StatelessWidget {
  final String timeValue;
  final IconData icon;
  final String tempValue;
  const HourlyForecastItem({
    super.key,
    required this.timeValue,
    required this.icon,
    required this.tempValue,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(6)),
        child: Column(
          children: [
            Text(
              timeValue,
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            Icon(
              icon,
              size: 32,
            ),
            const SizedBox(height: 8),
            Text(
              tempValue,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
