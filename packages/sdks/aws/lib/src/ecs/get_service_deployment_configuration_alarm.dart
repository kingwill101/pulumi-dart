// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationAlarm {
  /// List of CloudWatch alarm names
  final pulumi.Input<List<String>> alarmNames;
  /// Whether circuit breaker is enabled
  final pulumi.Input<bool> enable;
  /// Whether to rollback on failure
  final pulumi.Input<bool> rollback;

  /// Creates a new [GetServiceDeploymentConfigurationAlarm].
  /// [alarmNames] List of CloudWatch alarm names
  /// [enable] Whether circuit breaker is enabled
  /// [rollback] Whether to rollback on failure
  GetServiceDeploymentConfigurationAlarm({
    required this.alarmNames,
    required this.enable,
    required this.rollback,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmNames': alarmNames,
      'enable': enable,
      'rollback': rollback,
    };
  }

  factory GetServiceDeploymentConfigurationAlarm.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationAlarm(
      alarmNames: ((map['alarmNames'] as List).cast<String>()).input(),
      enable: (map['enable'] as bool).input(),
      rollback: (map['rollback'] as bool).input(),
    );
  }
}

