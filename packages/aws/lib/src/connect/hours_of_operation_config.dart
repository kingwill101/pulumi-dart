// ignore_for_file: unused_element, unnecessary_cast

import 'hours_of_operation_config_end_time.dart';
import 'hours_of_operation_config_start_time.dart';

class HoursOfOperationConfig {
  /// Specifies the day that the hours of operation applies to.
  final String day;
  /// A end time block specifies the time that your contact center closes. The `end_time` is documented below.
  final HoursOfOperationConfigEndTime endTime;
  /// A start time block specifies the time that your contact center opens. The `start_time` is documented below.
  final HoursOfOperationConfigStartTime startTime;

  /// Creates a new [HoursOfOperationConfig].
  /// [day] Specifies the day that the hours of operation applies to.
  /// [endTime] A end time block specifies the time that your contact center closes. The `end_time` is documented below.
  /// [startTime] A start time block specifies the time that your contact center opens. The `start_time` is documented below.
  HoursOfOperationConfig({
    required this.day,
    required this.endTime,
    required this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'endTime': endTime.toMap(),
      'startTime': startTime.toMap(),
    };
  }

  factory HoursOfOperationConfig.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfig(
      day: map['day'] as String,
      endTime: HoursOfOperationConfigEndTime.fromMap((map['endTime'] as Map).cast<String, dynamic>()),
      startTime: HoursOfOperationConfigStartTime.fromMap((map['startTime'] as Map).cast<String, dynamic>()),
    );
  }
}

