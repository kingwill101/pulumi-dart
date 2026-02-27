// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_hours_of_operation_config_end_time/get_hours_of_operation_config_end_time.dart';
import '../get_hours_of_operation_config_start_time/get_hours_of_operation_config_start_time.dart';

class GetHoursOfOperationConfig {
  /// Day that the hours of operation applies to.
  final String day;

  /// End time block specifies the time that your contact center closes. The `end_time` is documented below.
  final List<GetHoursOfOperationConfigEndTime> endTimes;

  /// Start time block specifies the time that your contact center opens. The `start_time` is documented below.
  final List<GetHoursOfOperationConfigStartTime> startTimes;

  GetHoursOfOperationConfig({
    required this.day,
    required this.endTimes,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['day'] = day;
    map['endTimes'] = Input.encodeList<GetHoursOfOperationConfigEndTime,
        Map<String, dynamic>>(endTimes, (value) => value.toMap());
    map['startTimes'] = Input.encodeList<GetHoursOfOperationConfigStartTime,
        Map<String, dynamic>>(startTimes, (value) => value.toMap());
    return map;
  }

  factory GetHoursOfOperationConfig.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfig(
      day: map['day'] as String,
      endTimes: Input.decodeList<GetHoursOfOperationConfigEndTime>(
          map['endTimes'],
          (value) => GetHoursOfOperationConfigEndTime.fromMap(
              (value as Map).cast<String, dynamic>())),
      startTimes: Input.decodeList<GetHoursOfOperationConfigStartTime>(
          map['startTimes'],
          (value) => GetHoursOfOperationConfigStartTime.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
