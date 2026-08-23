// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonDeploymentConfigurationAlarms {
  /// List of CloudWatch alarm names to monitor during deployment.
  final pulumi.Input<List<String>>? alarmNames;
  /// Whether to enable alarm monitoring for deployments. Defaults to `false`.
  final pulumi.Input<bool>? enable;

  /// Creates a new [DaemonDeploymentConfigurationAlarms].
  /// [alarmNames] List of CloudWatch alarm names to monitor during deployment.
  /// [enable] Whether to enable alarm monitoring for deployments. Defaults to `false`.
  const DaemonDeploymentConfigurationAlarms({
    this.alarmNames,
    this.enable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alarmNames': ?alarmNames,
      'enable': ?enable,
    };
  }

  factory DaemonDeploymentConfigurationAlarms.fromMap(Map<String, dynamic> map) {
    return DaemonDeploymentConfigurationAlarms(
      alarmNames: (() { final guardedValue = map['alarmNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      enable: (() { final guardedValue = map['enable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
