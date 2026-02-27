// ignore_for_file: unused_element, unnecessary_cast

import '../hours_of_operation_config_end_time/hours_of_operation_config_end_time.dart';
import '../hours_of_operation_config_start_time/hours_of_operation_config_start_time.dart';

class HoursOfOperationConfig {
  /// Specifies the day that the hours of operation applies to.
  final String day;

  /// A end time block specifies the time that your contact center closes. The `end_time` is documented below.
  final HoursOfOperationConfigEndTime endTime;

  /// A start time block specifies the time that your contact center opens. The `start_time` is documented below.
  final HoursOfOperationConfigStartTime startTime;

  HoursOfOperationConfig({
    required this.day,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['endTime'] = endTime.toMap();
    map['startTime'] = startTime.toMap();
    return map;
  }

  factory HoursOfOperationConfig.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfig(
      day: map['day'] as String,
      endTime: HoursOfOperationConfigEndTime.fromMap(
          (map['endTime'] as Map).cast<String, dynamic>()),
      startTime: HoursOfOperationConfigStartTime.fromMap(
          (map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}
