// ignore_for_file: unused_element, unnecessary_cast


class EndpointDeploymentConfigAutoRollbackConfigurationAlarm {
  /// The name of a CloudWatch alarm in your account.
  final String alarmName;

  /// Creates a new [EndpointDeploymentConfigAutoRollbackConfigurationAlarm].
  /// [alarmName] The name of a CloudWatch alarm in your account.
  EndpointDeploymentConfigAutoRollbackConfigurationAlarm({
    required this.alarmName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmName': alarmName,
    };
  }

  factory EndpointDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(Map<String, dynamic> map) {
    return EndpointDeploymentConfigAutoRollbackConfigurationAlarm(
      alarmName: map['alarmName'] as String,
    );
  }
}

