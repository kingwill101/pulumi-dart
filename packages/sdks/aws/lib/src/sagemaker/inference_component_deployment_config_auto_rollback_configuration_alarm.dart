// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm {
  /// Name of a CloudWatch alarm.
  final pulumi.Input<String> alarmName;

  /// Creates a new [InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm].
  /// [alarmName] Name of a CloudWatch alarm.
  const InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm({
    required this.alarmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmName': alarmName,
    };
  }

  factory InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(Map<String, dynamic> map) {
    return InferenceComponentDeploymentConfigAutoRollbackConfigurationAlarm(
      alarmName: pulumi.Input.fromValue(map['alarmName'] as String),
    );
  }
}
