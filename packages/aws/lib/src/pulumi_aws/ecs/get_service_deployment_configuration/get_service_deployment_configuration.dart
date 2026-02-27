// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_deployment_configuration_alarm/get_service_deployment_configuration_alarm.dart';
import '../get_service_deployment_configuration_canary_configuration/get_service_deployment_configuration_canary_configuration.dart';
import '../get_service_deployment_configuration_deployment_circuit_breaker/get_service_deployment_configuration_deployment_circuit_breaker.dart';
import '../get_service_deployment_configuration_lifecycle_hook/get_service_deployment_configuration_lifecycle_hook.dart';
import '../get_service_deployment_configuration_linear_configuration/get_service_deployment_configuration_linear_configuration.dart';

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
    map['alarms'] = Input.encodeList<GetServiceDeploymentConfigurationAlarm,
        Map<String, dynamic>>(alarms, (value) => value.toMap());
    map['bakeTimeInMinutes'] = bakeTimeInMinutes;
    map['canaryConfigurations'] = Input.encodeList<
        GetServiceDeploymentConfigurationCanaryConfiguration,
        Map<String, dynamic>>(canaryConfigurations, (value) => value.toMap());
    map['deploymentCircuitBreakers'] = Input.encodeList<
            GetServiceDeploymentConfigurationDeploymentCircuitBreaker,
            Map<String, dynamic>>(
        deploymentCircuitBreakers, (value) => value.toMap());
    map['lifecycleHooks'] = Input.encodeList<
        GetServiceDeploymentConfigurationLifecycleHook,
        Map<String, dynamic>>(lifecycleHooks, (value) => value.toMap());
    map['linearConfigurations'] = Input.encodeList<
        GetServiceDeploymentConfigurationLinearConfiguration,
        Map<String, dynamic>>(linearConfigurations, (value) => value.toMap());
    map['maximumPercent'] = maximumPercent;
    map['minimumHealthyPercent'] = minimumHealthyPercent;
    map['strategy'] = strategy;
    return map;
  }

  factory GetServiceDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfiguration(
      alarms: Input.decodeList<GetServiceDeploymentConfigurationAlarm>(
          map['alarms'],
          (value) => GetServiceDeploymentConfigurationAlarm.fromMap(
              (value as Map).cast<String, dynamic>())),
      bakeTimeInMinutes: map['bakeTimeInMinutes'] as String,
      canaryConfigurations: Input.decodeList<
              GetServiceDeploymentConfigurationCanaryConfiguration>(
          map['canaryConfigurations'],
          (value) =>
              GetServiceDeploymentConfigurationCanaryConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deploymentCircuitBreakers: Input.decodeList<
              GetServiceDeploymentConfigurationDeploymentCircuitBreaker>(
          map['deploymentCircuitBreakers'],
          (value) =>
              GetServiceDeploymentConfigurationDeploymentCircuitBreaker.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleHooks:
          Input.decodeList<GetServiceDeploymentConfigurationLifecycleHook>(
              map['lifecycleHooks'],
              (value) => GetServiceDeploymentConfigurationLifecycleHook.fromMap(
                  (value as Map).cast<String, dynamic>())),
      linearConfigurations: Input.decodeList<
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
