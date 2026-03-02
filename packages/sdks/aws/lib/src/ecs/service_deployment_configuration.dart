// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'service_deployment_configuration_canary_configuration.dart';
import 'service_deployment_configuration_lifecycle_hook.dart';
import 'service_deployment_configuration_linear_configuration.dart';

class ServiceDeploymentConfiguration {
  /// Number of minutes to wait after a new deployment is fully provisioned before terminating the old deployment. Valid range: 0-1440 minutes. Used with `BLUE_GREEN`, `LINEAR`, and `CANARY` strategies.
  final pulumi.Input<String>? bakeTimeInMinutes;
  /// Configuration block for canary deployment strategy. Required when `strategy` is set to `CANARY`. See below.
  final pulumi.Input<ServiceDeploymentConfigurationCanaryConfiguration>? canaryConfiguration;
  /// Configuration block for lifecycle hooks that are invoked during deployments. See below.
  final pulumi.Input<List<ServiceDeploymentConfigurationLifecycleHook>>? lifecycleHooks;
  /// Configuration block for linear deployment strategy. Required when `strategy` is set to `LINEAR`. See below.
  final pulumi.Input<ServiceDeploymentConfigurationLinearConfiguration>? linearConfiguration;
  /// Type of deployment strategy. Valid values: `ROLLING`, `BLUE_GREEN`, `LINEAR`, `CANARY`. Default: `ROLLING`.
  final pulumi.Input<String>? strategy;

  /// Creates a new [ServiceDeploymentConfiguration].
  /// [bakeTimeInMinutes] Number of minutes to wait after a new deployment is fully provisioned before terminating the old deployment. Valid range: 0-1440 minutes. Used with `BLUE_GREEN`, `LINEAR`, and `CANARY` strategies.
  /// [canaryConfiguration] Configuration block for canary deployment strategy. Required when `strategy` is set to `CANARY`. See below.
  /// [lifecycleHooks] Configuration block for lifecycle hooks that are invoked during deployments. See below.
  /// [linearConfiguration] Configuration block for linear deployment strategy. Required when `strategy` is set to `LINEAR`. See below.
  /// [strategy] Type of deployment strategy. Valid values: `ROLLING`, `BLUE_GREEN`, `LINEAR`, `CANARY`. Default: `ROLLING`.
  ServiceDeploymentConfiguration({
    this.bakeTimeInMinutes,
    this.canaryConfiguration,
    this.lifecycleHooks,
    this.linearConfiguration,
    this.strategy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bakeTimeInMinutes': ?bakeTimeInMinutes,
      'canaryConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentConfigurationCanaryConfiguration, Map<String, dynamic>>(canaryConfiguration, (value) => value.toMap()),
      'lifecycleHooks': ?pulumi.Input.mapOptionalInputValue<List<ServiceDeploymentConfigurationLifecycleHook>, List<Map<String, dynamic>>>(lifecycleHooks, (value) => pulumi.Input.encodeList<ServiceDeploymentConfigurationLifecycleHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linearConfiguration': ?pulumi.Input.mapOptionalInputValue<ServiceDeploymentConfigurationLinearConfiguration, Map<String, dynamic>>(linearConfiguration, (value) => value.toMap()),
      'strategy': ?strategy,
    };
  }

  factory ServiceDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentConfiguration(
      bakeTimeInMinutes: map['bakeTimeInMinutes'] == null ? null : (map['bakeTimeInMinutes'] as String).input(),
      canaryConfiguration: map['canaryConfiguration'] == null ? null : (ServiceDeploymentConfigurationCanaryConfiguration.fromMap((map['canaryConfiguration'] as Map).cast<String, dynamic>())).input(),
      lifecycleHooks: map['lifecycleHooks'] == null ? null : (pulumi.Input.decodeList<ServiceDeploymentConfigurationLifecycleHook>(map['lifecycleHooks'], (value) => ServiceDeploymentConfigurationLifecycleHook.fromMap((value as Map).cast<String, dynamic>()))).input(),
      linearConfiguration: map['linearConfiguration'] == null ? null : (ServiceDeploymentConfigurationLinearConfiguration.fromMap((map['linearConfiguration'] as Map).cast<String, dynamic>())).input(),
      strategy: map['strategy'] == null ? null : (map['strategy'] as String).input(),
    );
  }
}

