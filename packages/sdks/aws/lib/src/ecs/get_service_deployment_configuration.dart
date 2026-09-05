// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_deployment_configuration_alarm.dart';
import 'get_service_deployment_configuration_canary_configuration.dart';
import 'get_service_deployment_configuration_deployment_circuit_breaker.dart';
import 'get_service_deployment_configuration_lifecycle_hook.dart';
import 'get_service_deployment_configuration_linear_configuration.dart';

class GetServiceDeploymentConfiguration {
  /// CloudWatch alarms configuration. See `alarms` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationAlarm>> alarms;
  /// Time to wait after deployment before terminating old tasks
  final pulumi.Input<String> bakeTimeInMinutes;
  /// Canary deployment configuration. See `canaryConfiguration` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationCanaryConfiguration>> canaryConfigurations;
  /// Circuit breaker configuration. See `deploymentCircuitBreaker` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationDeploymentCircuitBreaker>> deploymentCircuitBreakers;
  /// Lifecycle hooks for deployments. See `lifecycleHook` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationLifecycleHook>> lifecycleHooks;
  /// Linear deployment configuration. See `linearConfiguration` Block for details.
  final pulumi.Input<List<GetServiceDeploymentConfigurationLinearConfiguration>> linearConfigurations;
  /// Upper limit on tasks during deployment
  final pulumi.Input<int> maximumPercent;
  /// Lower limit on healthy tasks during deployment
  final pulumi.Input<int> minimumHealthyPercent;
  /// Deployment strategy (ROLLING, BLUE_GREEN, LINEAR, or CANARY)
  final pulumi.Input<String> strategy;

  /// Creates a new [GetServiceDeploymentConfiguration].
  /// [alarms] CloudWatch alarms configuration. See `alarms` Block for details.
  /// [bakeTimeInMinutes] Time to wait after deployment before terminating old tasks
  /// [canaryConfigurations] Canary deployment configuration. See `canaryConfiguration` Block for details.
  /// [deploymentCircuitBreakers] Circuit breaker configuration. See `deploymentCircuitBreaker` Block for details.
  /// [lifecycleHooks] Lifecycle hooks for deployments. See `lifecycleHook` Block for details.
  /// [linearConfigurations] Linear deployment configuration. See `linearConfiguration` Block for details.
  /// [maximumPercent] Upper limit on tasks during deployment
  /// [minimumHealthyPercent] Lower limit on healthy tasks during deployment
  /// [strategy] Deployment strategy (ROLLING, BLUE_GREEN, LINEAR, or CANARY)
  const GetServiceDeploymentConfiguration({
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
    return <String, dynamic>{
      'alarms': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationAlarm>, List<Map<String, dynamic>>>(alarms, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationAlarm, Map<String, dynamic>>(value, (value) => value.toMap())),
      'bakeTimeInMinutes': bakeTimeInMinutes,
      'canaryConfigurations': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationCanaryConfiguration>, List<Map<String, dynamic>>>(canaryConfigurations, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationCanaryConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'deploymentCircuitBreakers': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationDeploymentCircuitBreaker>, List<Map<String, dynamic>>>(deploymentCircuitBreakers, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationDeploymentCircuitBreaker, Map<String, dynamic>>(value, (value) => value.toMap())),
      'lifecycleHooks': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationLifecycleHook>, List<Map<String, dynamic>>>(lifecycleHooks, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationLifecycleHook, Map<String, dynamic>>(value, (value) => value.toMap())),
      'linearConfigurations': pulumi.Input.mapInputValue<List<GetServiceDeploymentConfigurationLinearConfiguration>, List<Map<String, dynamic>>>(linearConfigurations, (value) => pulumi.Input.encodeList<GetServiceDeploymentConfigurationLinearConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'maximumPercent': maximumPercent,
      'minimumHealthyPercent': minimumHealthyPercent,
      'strategy': strategy,
    };
  }

  factory GetServiceDeploymentConfiguration.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentConfiguration(
      alarms: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationAlarm>(map['alarms']!, (value) => GetServiceDeploymentConfigurationAlarm.fromMap((value as Map).cast<String, dynamic>()))),
      bakeTimeInMinutes: pulumi.Input.fromValue(map['bakeTimeInMinutes'] as String),
      canaryConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationCanaryConfiguration>(map['canaryConfigurations']!, (value) => GetServiceDeploymentConfigurationCanaryConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      deploymentCircuitBreakers: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationDeploymentCircuitBreaker>(map['deploymentCircuitBreakers']!, (value) => GetServiceDeploymentConfigurationDeploymentCircuitBreaker.fromMap((value as Map).cast<String, dynamic>()))),
      lifecycleHooks: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationLifecycleHook>(map['lifecycleHooks']!, (value) => GetServiceDeploymentConfigurationLifecycleHook.fromMap((value as Map).cast<String, dynamic>()))),
      linearConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetServiceDeploymentConfigurationLinearConfiguration>(map['linearConfigurations']!, (value) => GetServiceDeploymentConfigurationLinearConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      maximumPercent: pulumi.Input.fromValue((map['maximumPercent'] as num).toInt()),
      minimumHealthyPercent: pulumi.Input.fromValue((map['minimumHealthyPercent'] as num).toInt()),
      strategy: pulumi.Input.fromValue(map['strategy'] as String),
    );
  }
}
