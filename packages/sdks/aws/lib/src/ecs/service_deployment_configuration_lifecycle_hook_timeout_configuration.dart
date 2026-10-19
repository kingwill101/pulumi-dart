// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration {
  /// Action ECS takes when the pause hook times out. Valid values: `ROLLBACK`, `CONTINUE`. Default: `ROLLBACK`.
  final pulumi.Input<String?>? action;
  /// Number of minutes to wait before executing the timeout action. Valid range: 1-20160 minutes. Default: `1440` (24 hours).
  final pulumi.Input<String?>? timeoutInMinutes;

  /// Creates a new [ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration].
  /// [action] Action ECS takes when the pause hook times out. Valid values: `ROLLBACK`, `CONTINUE`. Default: `ROLLBACK`.
  /// [timeoutInMinutes] Number of minutes to wait before executing the timeout action. Valid range: 1-20160 minutes. Default: `1440` (24 hours).
  const ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration({
    this.action,
    this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'timeoutInMinutes': ?timeoutInMinutes,
    };
  }

  factory ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeoutInMinutes: (() { final guardedValue = map['timeoutInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
