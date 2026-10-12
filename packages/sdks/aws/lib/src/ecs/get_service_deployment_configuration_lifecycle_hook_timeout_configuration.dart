// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration {
  /// Action ECS takes when the pause hook times out (`CONTINUE` or `ROLLBACK`)
  final pulumi.Input<String> action;
  /// Time until ECS executes the timeout action
  final pulumi.Input<String> timeoutInMinutes;

  /// Creates a new [GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration].
  /// [action] Action ECS takes when the pause hook times out (`CONTINUE` or `ROLLBACK`)
  /// [timeoutInMinutes] Time until ECS executes the timeout action
  const GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration({
    required this.action,
    required this.timeoutInMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'timeoutInMinutes': timeoutInMinutes,
    };
  }

  factory GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfigurationLifecycleHookTimeoutConfiguration(
      action: pulumi.Input.fromValue(map['action'] as String),
      timeoutInMinutes: pulumi.Input.fromValue(map['timeoutInMinutes'] as String),
    );
  }
}
