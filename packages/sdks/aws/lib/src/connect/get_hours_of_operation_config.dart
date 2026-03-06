// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_hours_of_operation_config_end_time.dart';
import 'get_hours_of_operation_config_start_time.dart';

class GetHoursOfOperationConfig {
  /// Day that the hours of operation applies to.
  final pulumi.Input<String> day;
  /// End time block specifies the time that your contact center closes. The `end_time` is documented below.
  final pulumi.Input<List<GetHoursOfOperationConfigEndTime>> endTimes;
  /// Start time block specifies the time that your contact center opens. The `start_time` is documented below.
  final pulumi.Input<List<GetHoursOfOperationConfigStartTime>> startTimes;

  /// Creates a new [GetHoursOfOperationConfig].
  /// [day] Day that the hours of operation applies to.
  /// [endTimes] End time block specifies the time that your contact center closes. The `end_time` is documented below.
  /// [startTimes] Start time block specifies the time that your contact center opens. The `start_time` is documented below.
  const GetHoursOfOperationConfig({
    required this.day,
    required this.endTimes,
    required this.startTimes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'day': day,
      'endTimes': pulumi.Input.mapInputValue<List<GetHoursOfOperationConfigEndTime>, List<Map<String, dynamic>>>(endTimes, (value) => pulumi.Input.encodeList<GetHoursOfOperationConfigEndTime, Map<String, dynamic>>(value, (value) => value.toMap())),
      'startTimes': pulumi.Input.mapInputValue<List<GetHoursOfOperationConfigStartTime>, List<Map<String, dynamic>>>(startTimes, (value) => pulumi.Input.encodeList<GetHoursOfOperationConfigStartTime, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetHoursOfOperationConfig.fromMap(Map<String, dynamic> map) {
    return GetHoursOfOperationConfig(
      day: pulumi.Input.fromValue(map['day'] as String),
      endTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHoursOfOperationConfigEndTime>(map['endTimes']!, (value) => GetHoursOfOperationConfigEndTime.fromMap((value as Map).cast<String, dynamic>()))),
      startTimes: pulumi.Input.fromValue(pulumi.Input.decodeList<GetHoursOfOperationConfigStartTime>(map['startTimes']!, (value) => GetHoursOfOperationConfigStartTime.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

