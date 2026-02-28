// ignore_for_file: unused_element, unnecessary_cast

import 'date_response.dart';
import 'time_of_day_response.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriodResponse {
  /// End date of the deny maintenance period.
  final DateResponse endDate;

  /// Start date of the deny maintenance period.
  final DateResponse startDate;

  /// Time in UTC when the period starts and ends.
  final TimeOfDayResponse time;

  /// Creates a new [DenyMaintenancePeriodResponse].
  /// [endDate] End date of the deny maintenance period.
  /// [startDate] Start date of the deny maintenance period.
  /// [time] Time in UTC when the period starts and ends.
  DenyMaintenancePeriodResponse({
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

  factory DenyMaintenancePeriodResponse.fromMap(Map<String, dynamic> map) {
    return DenyMaintenancePeriodResponse(
      endDate:
          DateResponse.fromMap((map['endDate'] as Map).cast<String, dynamic>()),
      startDate: DateResponse.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
      time: TimeOfDayResponse.fromMap(
          (map['time'] as Map).cast<String, dynamic>()),
    );
  }
}
