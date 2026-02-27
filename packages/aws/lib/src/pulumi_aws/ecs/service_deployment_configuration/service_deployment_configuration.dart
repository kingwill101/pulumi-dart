// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../service_deployment_configuration_canary_configuration/service_deployment_configuration_canary_configuration.dart';
import '../service_deployment_configuration_lifecycle_hook/service_deployment_configuration_lifecycle_hook.dart';
import '../service_deployment_configuration_linear_configuration/service_deployment_configuration_linear_configuration.dart';

class ServiceDeploymentConfiguration {
  /// Number of minutes to wait after a new deployment is fully provisioned before terminating the old deployment. Valid range: 0-1440 minutes. Used with `BLUE_GREEN`, `LINEAR`, and `CANARY` strategies.
  final String? bakeTimeInMinutes;

  /// Configuration block for canary deployment strategy. Required when `strategy` is set to `CANARY`. See below.
  final ServiceDeploymentConfigurationCanaryConfiguration? canaryConfiguration;

  /// Configuration block for lifecycle hooks that are invoked during deployments. See below.
  final List<ServiceDeploymentConfigurationLifecycleHook>? lifecycleHooks;

  /// Configuration block for linear deployment strategy. Required when `strategy` is set to `LINEAR`. See below.
  final ServiceDeploymentConfigurationLinearConfiguration? linearConfiguration;

  /// Type of deployment strategy. Valid values: `ROLLING`, `BLUE_GREEN`, `LINEAR`, `CANARY`. Default: `ROLLING`.
  final String? strategy;

  ServiceDeploymentConfiguration({
    this.bakeTimeInMinutes,
    this.canaryConfiguration,
    this.lifecycleHooks,
    this.linearConfiguration,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bakeTimeInMinutesValue = bakeTimeInMinutes;
    if (bakeTimeInMinutesValue != null) {
      map['bakeTimeInMinutes'] = bakeTimeInMinutesValue;
    }
    final canaryConfigurationValue = canaryConfiguration;
    if (canaryConfigurationValue != null) {
      map['canaryConfiguration'] = canaryConfigurationValue.toMap();
    }
    final lifecycleHooksValue = lifecycleHooks;
    if (lifecycleHooksValue != null) {
      map['lifecycleHooks'] = Input.encodeList<
          ServiceDeploymentConfigurationLifecycleHook,
          Map<String, dynamic>>(lifecycleHooksValue, (value) => value.toMap());
    }
    final linearConfigurationValue = linearConfiguration;
    if (linearConfigurationValue != null) {
      map['linearConfiguration'] = linearConfigurationValue.toMap();
    }
    final strategyValue = strategy;
    if (strategyValue != null) {
      map['strategy'] = strategyValue;
    }
    return map;
  }

  factory ServiceDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfiguration(
      bakeTimeInMinutes: map['bakeTimeInMinutes'] == null
          ? null
          : map['bakeTimeInMinutes'] as String,
      canaryConfiguration: map['canaryConfiguration'] == null
          ? null
          : ServiceDeploymentConfigurationCanaryConfiguration.fromMap(
              (map['canaryConfiguration'] as Map).cast<String, dynamic>()),
      lifecycleHooks: map['lifecycleHooks'] == null
          ? null
          : Input.decodeList<ServiceDeploymentConfigurationLifecycleHook>(
              map['lifecycleHooks'],
              (value) => ServiceDeploymentConfigurationLifecycleHook.fromMap(
                  (value as Map).cast<String, dynamic>())),
      linearConfiguration: map['linearConfiguration'] == null
          ? null
          : ServiceDeploymentConfigurationLinearConfiguration.fromMap(
              (map['linearConfiguration'] as Map).cast<String, dynamic>()),
      strategy: map['strategy'] == null ? null : map['strategy'] as String,
    );
  }
}
