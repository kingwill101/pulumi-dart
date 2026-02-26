// ignore_for_file: unused_element, unnecessary_cast

import 'date_response2.dart';
import 'time_of_day_response.dart';

/// Specifies the maintenance denial period.
class DenyMaintenancePeriodResponse {
  /// End date of the deny maintenance period.
  final DateResponse2 endDate;

  /// Start date of the deny maintenance period.
  final DateResponse2 startDate;

  /// Time in UTC when the period starts and ends.
  final TimeOfDayResponse time;

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
      endDate: DateResponse2.fromMap(
          (map['endDate'] as Map).cast<String, dynamic>()),
      startDate: DateResponse2.fromMap(
          (map['startDate'] as Map).cast<String, dynamic>()),
      time: TimeOfDayResponse.fromMap(
          (map['time'] as Map).cast<String, dynamic>()),
    );
  }
}
