// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'hours_of_operation_config_end_time.dart';
import 'hours_of_operation_config_start_time.dart';

class HoursOfOperationConfig {
  /// Specifies the day that the hours of operation applies to.
  final pulumi.Input<String> day;

  /// A end time block specifies the time that your contact center closes. The `end_time` is documented below.
  final pulumi.Input<HoursOfOperationConfigEndTime> endTime;

  /// A start time block specifies the time that your contact center opens. The `start_time` is documented below.
  final pulumi.Input<HoursOfOperationConfigStartTime> startTime;

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
      'endTime':
          pulumi.Input.mapInputValue<
            HoursOfOperationConfigEndTime,
            Map<String, dynamic>
          >(endTime, (value) => value.toMap()),
      'startTime':
          pulumi.Input.mapInputValue<
            HoursOfOperationConfigStartTime,
            Map<String, dynamic>
          >(startTime, (value) => value.toMap()),
    };
  }

  factory HoursOfOperationConfig.fromMap(Map<String, dynamic> map) {
    return HoursOfOperationConfig(
      day: pulumi.Input.fromValue(map['day'] as String),
      endTime: pulumi.Input.fromValue(
        HoursOfOperationConfigEndTime.fromMap(
          (map['endTime']! as Map).cast<String, dynamic>(),
        ),
      ),
      startTime: pulumi.Input.fromValue(
        HoursOfOperationConfigStartTime.fromMap(
          (map['startTime']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
