// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For schedules like: 'recur every day' or 'recur every 3 days'.
class DailySchedule {
  /// Specifies the number of days between each set of occurrences.
  final pulumi.Input<int> intervalDays;

  /// Creates a new [DailySchedule].
  /// [intervalDays] Specifies the number of days between each set of occurrences.
  DailySchedule({required this.intervalDays});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'intervalDays': intervalDays};
  }

  factory DailySchedule.fromMap(Map<String, dynamic> map) {
    return DailySchedule(
      intervalDays: pulumi.Input.fromValue(map['intervalDays'] as int),
    );
  }
}
