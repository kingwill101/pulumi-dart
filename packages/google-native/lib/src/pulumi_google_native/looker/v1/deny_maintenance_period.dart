// ignore_for_file: unused_element, unnecessary_cast

import 'date2.dart';
import 'time_of_day.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriod {
  /// End date of the deny maintenance period.
  final Date2 endDate;

  /// Start date of the deny maintenance period.
  final Date2 startDate;

  /// Time in UTC when the period starts and ends.
  final TimeOfDay time;

  DenyMaintenancePeriod({
    required this.endDate,
    required this.startDate,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['endDate'] = endDate.toMap();
    map['startDate'] = startDate.toMap();
    map['time'] = time.toMap();
    return map;
  }

  factory DenyMaintenancePeriod.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriod(
      endDate: Date2.fromMap((map['endDate'] as Map).cast<String, dynamic>()),
      startDate:
          Date2.fromMap((map['startDate'] as Map).cast<String, dynamic>()),
      time: TimeOfDay.fromMap((map['time'] as Map).cast<String, dynamic>()),
    );
  }
}
