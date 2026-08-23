// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEnvironmentMonitor {
  /// ARN of the Amazon CloudWatch alarm.
  final pulumi.Input<String> alarmArn;
  /// ARN of an IAM role for AWS AppConfig to monitor.
  final pulumi.Input<String> alarmRoleArn;

  /// Creates a new [GetEnvironmentMonitor].
  /// [alarmArn] ARN of the Amazon CloudWatch alarm.
  /// [alarmRoleArn] ARN of an IAM role for AWS AppConfig to monitor.
  const GetEnvironmentMonitor({
    required this.alarmArn,
    required this.alarmRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmArn': alarmArn,
      'alarmRoleArn': alarmRoleArn,
    };
  }

  factory GetEnvironmentMonitor.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentMonitor(
      alarmArn: pulumi.Input.fromValue(map['alarmArn'] as String),
      alarmRoleArn: pulumi.Input.fromValue(map['alarmRoleArn'] as String),
    );
  }
}
