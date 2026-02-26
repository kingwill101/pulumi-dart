// ignore_for_file: unused_element, unnecessary_cast

class EndpointDeploymentConfigAutoRollbackConfigurationAlarm {
  /// The name of a CloudWatch alarm in your account.
  final String alarmName;

  EndpointDeploymentConfigAutoRollbackConfigurationAlarm({
    required this.alarmName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarmName'] = alarmName;
    return map;
  }

  factory EndpointDeploymentConfigAutoRollbackConfigurationAlarm.fromMap(
      Map<String, dynamic> map) {
    return EndpointDeploymentConfigAutoRollbackConfigurationAlarm(
      alarmName: map['alarmName'] as String,
    );
  }
}
