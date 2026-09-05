// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentMonitor {
  /// ARN of the Amazon CloudWatch alarm.
  final pulumi.Input<String> alarmArn;
  /// ARN of an IAM role for AWS AppConfig to monitor `alarmArn`.
  final pulumi.Input<String?>? alarmRoleArn;

  /// Creates a new [EnvironmentMonitor].
  /// [alarmArn] ARN of the Amazon CloudWatch alarm.
  /// [alarmRoleArn] ARN of an IAM role for AWS AppConfig to monitor `alarmArn`.
  const EnvironmentMonitor({
    required this.alarmArn,
    this.alarmRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmArn': alarmArn,
      'alarmRoleArn': ?alarmRoleArn,
    };
  }

  factory EnvironmentMonitor.fromMap(Map<String, dynamic> map) {
    return EnvironmentMonitor(
      alarmArn: pulumi.Input.fromValue(map['alarmArn'] as String),
      alarmRoleArn: (() { final guardedValue = map['alarmRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
