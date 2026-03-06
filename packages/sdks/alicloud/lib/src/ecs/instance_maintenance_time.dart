// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceMaintenanceTime {
  /// The end time of maintenance. The time must be on the hour at exactly 0 minute and 0 second. The `start_time` and `end_time` parameters must be specified at the same time. The `end_time` value must be 1 to 23 hours later than the `start_time` value. Specify the time in the HH:mm:ss format. The time must be in UTC+8.
  final pulumi.Input<String>? endTime;
  /// The start time of maintenance. The time must be on the hour at exactly 0 minute and 0 second. The `start_time` and `end_time` parameters must be specified at the same time. The `end_time` value must be 1 to 23 hours later than the `start_time` value. Specify the time in the HH:mm:ss format. The time must be in UTC+8.
  final pulumi.Input<String>? startTime;

  /// Creates a new [InstanceMaintenanceTime].
  /// [endTime] The end time of maintenance. The time must be on the hour at exactly 0 minute and 0 second. The `start_time` and `end_time` parameters must be specified at the same time. The `end_time` value must be 1 to 23 hours later than the `start_time` value. Specify the time in the HH:mm:ss format. The time must be in UTC+8.
  /// [startTime] The start time of maintenance. The time must be on the hour at exactly 0 minute and 0 second. The `start_time` and `end_time` parameters must be specified at the same time. The `end_time` value must be 1 to 23 hours later than the `start_time` value. Specify the time in the HH:mm:ss format. The time must be in UTC+8.
  const InstanceMaintenanceTime({
    this.endTime,
    this.startTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endTime': ?endTime,
      'startTime': ?startTime,
    };
  }

  factory InstanceMaintenanceTime.fromMap(Map<String, dynamic> map) {
    return InstanceMaintenanceTime(
      endTime: (() { final guardedValue = map['endTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      startTime: (() { final guardedValue = map['startTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

