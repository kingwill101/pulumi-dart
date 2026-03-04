// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointDeploymentConfigAutoRollbackConfigurationAlarm {
  /// The name of a CloudWatch alarm in your account.
  final pulumi.Input<String> alarmName;

  /// Creates a new [EndpointDeploymentConfigAutoRollbackConfigurationAlarm].
  /// [alarmName] The name of a CloudWatch alarm in your account.
  EndpointDeploymentConfigAutoRollbackConfigurationAlarm({
    required this.alarmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'alarmName': alarmName};
  }

  factory EndpointDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(
    Map<String, dynamic> map,
  ) {
    return EndpointDeploymentConfigAutoRollbackConfigurationAlarm(
      alarmName: pulumi.Input.fromValue(map['alarmName'] as String),
    );
  }
}
