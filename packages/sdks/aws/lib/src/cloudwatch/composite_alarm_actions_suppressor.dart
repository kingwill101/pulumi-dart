// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CompositeAlarmActionsSuppressor {
  /// Can be an AlarmName or an Amazon Resource Name (ARN) from an existing alarm.
  final pulumi.Input<String> alarm;

  /// The maximum time in seconds that the composite alarm waits after suppressor alarm goes out of the `ALARM` state. After this time, the composite alarm performs its actions.
  final pulumi.Input<int> extensionPeriod;

  /// The maximum time in seconds that the composite alarm waits for the suppressor alarm to go into the `ALARM` state. After this time, the composite alarm performs its actions.
  final pulumi.Input<int> waitPeriod;

  /// Creates a new [CompositeAlarmActionsSuppressor].
  /// [alarm] Can be an AlarmName or an Amazon Resource Name (ARN) from an existing alarm.
  /// [extensionPeriod] The maximum time in seconds that the composite alarm waits after suppressor alarm goes out of the `ALARM` state. After this time, the composite alarm performs its actions.
  /// [waitPeriod] The maximum time in seconds that the composite alarm waits for the suppressor alarm to go into the `ALARM` state. After this time, the composite alarm performs its actions.
  CompositeAlarmActionsSuppressor({
    required this.alarm,
    required this.extensionPeriod,
    required this.waitPeriod,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarm': alarm,
      'extensionPeriod': extensionPeriod,
      'waitPeriod': waitPeriod,
    };
  }

  factory CompositeAlarmActionsSuppressor.fromMap(Map<String, dynamic> map) {
    return CompositeAlarmActionsSuppressor(
      alarm: pulumi.Input.fromValue(map['alarm'] as String),
      extensionPeriod: pulumi.Input.fromValue(map['extensionPeriod'] as int),
      waitPeriod: pulumi.Input.fromValue(map['waitPeriod'] as int),
    );
  }
}
