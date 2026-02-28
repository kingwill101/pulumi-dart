// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_deployment_configuration_alarm.dart';
import 'get_service_deployment_configuration_canary_configuration.dart';
import 'get_service_deployment_configuration_deployment_circuit_breaker.dart';
import 'get_service_deployment_configuration_lifecycle_hook.dart';
import 'get_service_deployment_configuration_linear_configuration.dart';

class GetServiceDeploymentConfiguration {
  /// CloudWatch alarms configuration. See `alarms` Block for details.
  final List<GetServiceDeploymentConfigurationAlarm> alarms;

  /// Time to wait after deployment before terminating old tasks
  final String bakeTimeInMinutes;

  /// Canary deployment configuration. See `canary_configuration` Block for details.
  final List<GetServiceDeploymentConfigurationCanaryConfiguration>
      canaryConfigurations;

  /// Circuit breaker configuration. See `deployment_circuit_breaker` Block for details.
  final List<GetServiceDeploymentConfigurationDeploymentCircuitBreaker>
      deploymentCircuitBreakers;

  /// Lifecycle hooks for deployments. See `lifecycle_hook` Block for details.
  final List<GetServiceDeploymentConfigurationLifecycleHook> lifecycleHooks;

  /// Linear deployment configuration. See `linear_configuration` Block for details.
  final List<GetServiceDeploymentConfigurationLinearConfiguration>
      linearConfigurations;

  /// Upper limit on tasks during deployment
  final int maximumPercent;

  /// Lower limit on healthy tasks during deployment
  final int minimumHealthyPercent;

  /// Deployment strategy (ROLLING, BLUE_GREEN, LINEAR, or CANARY)
  final String strategy;

  /// Creates a new [GetServiceDeploymentConfiguration].
  /// [alarms] CloudWatch alarms configuration. See `alarms` Block for details.
  /// [bakeTimeInMinutes] Time to wait after deployment before terminating old tasks
  /// [canaryConfigurations] Canary deployment configuration. See `canary_configuration` Block for details.
  /// [deploymentCircuitBreakers] Circuit breaker configuration. See `deployment_circuit_breaker` Block for details.
  /// [lifecycleHooks] Lifecycle hooks for deployments. See `lifecycle_hook` Block for details.
  /// [linearConfigurations] Linear deployment configuration. See `linear_configuration` Block for details.
  /// [maximumPercent] Upper limit on tasks during deployment
  /// [minimumHealthyPercent] Lower limit on healthy tasks during deployment
  /// [strategy] Deployment strategy (ROLLING, BLUE_GREEN, LINEAR, or CANARY)
  GetServiceDeploymentConfiguration({
    required this.alarms,
    required this.bakeTimeInMinutes,
    required this.canaryConfigurations,
    required this.deploymentCircuitBreakers,
    required this.lifecycleHooks,
    required this.linearConfigurations,
    required this.maximumPercent,
    required this.minimumHealthyPercent,
    required this.strategy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alarms'] = pulumi.Input.encodeList<
        GetServiceDeploymentConfigurationAlarm,
        Map<String, dynamic>>(alarms, (value) => value.toMap());
    map['bakeTimeInMinutes'] = bakeTimeInMinutes;
    map['canaryConfigurations'] = pulumi.Input.encodeList<
        GetServiceDeploymentConfigurationCanaryConfiguration,
        Map<String, dynamic>>(canaryConfigurations, (value) => value.toMap());
    map['deploymentCircuitBreakers'] = pulumi.Input.encodeList<
            GetServiceDeploymentConfigurationDeploymentCircuitBreaker,
            Map<String, dynamic>>(
        deploymentCircuitBreakers, (value) => value.toMap());
    map['lifecycleHooks'] = pulumi.Input.encodeList<
        GetServiceDeploymentConfigurationLifecycleHook,
        Map<String, dynamic>>(lifecycleHooks, (value) => value.toMap());
    map['linearConfigurations'] = pulumi.Input.encodeList<
        GetServiceDeploymentConfigurationLinearConfiguration,
        Map<String, dynamic>>(linearConfigurations, (value) => value.toMap());
    map['maximumPercent'] = maximumPercent;
    map['minimumHealthyPercent'] = minimumHealthyPercent;
    map['strategy'] = strategy;
    return map;
  }

  factory GetServiceDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfiguration(
      alarms: pulumi.Input.decodeList<GetServiceDeploymentConfigurationAlarm>(
          map['alarms'],
          (value) => GetServiceDeploymentConfigurationAlarm.fromMap(
              (value as Map).cast<String, dynamic>())),
      bakeTimeInMinutes: map['bakeTimeInMinutes'] as String,
      canaryConfigurations: pulumi.Input.decodeList<
              GetServiceDeploymentConfigurationCanaryConfiguration>(
          map['canaryConfigurations'],
          (value) =>
              GetServiceDeploymentConfigurationCanaryConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deploymentCircuitBreakers: pulumi.Input.decodeList<
              GetServiceDeploymentConfigurationDeploymentCircuitBreaker>(
          map['deploymentCircuitBreakers'],
          (value) =>
              GetServiceDeploymentConfigurationDeploymentCircuitBreaker.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleHooks: pulumi.Input.decodeList<
              GetServiceDeploymentConfigurationLifecycleHook>(
          map['lifecycleHooks'],
          (value) => GetServiceDeploymentConfigurationLifecycleHook.fromMap(
              (value as Map).cast<String, dynamic>())),
      linearConfigurations: pulumi.Input.decodeList<
              GetServiceDeploymentConfigurationLinearConfiguration>(
          map['linearConfigurations'],
          (value) =>
              GetServiceDeploymentConfigurationLinearConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maximumPercent: map['maximumPercent'] as int,
      minimumHealthyPercent: map['minimumHealthyPercent'] as int,
      strategy: map['strategy'] as String,
    );
  }
}
