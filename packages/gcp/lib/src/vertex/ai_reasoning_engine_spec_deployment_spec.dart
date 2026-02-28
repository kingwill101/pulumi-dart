// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_reasoning_engine_spec_deployment_spec_env.dart';
import 'ai_reasoning_engine_spec_deployment_spec_psc_interface_config.dart';
import 'ai_reasoning_engine_spec_deployment_spec_secret_env.dart';

class AiReasoningEngineSpecDeploymentSpec {
  /// Optional. Concurrency for each container and agent server.
  /// Recommended value: 2 * cpu + 1. Defaults to 9.
  final int? containerConcurrency;

  /// Optional. Environment variables to be set with the Reasoning
  /// Engine deployment.
  /// Structure is documented below.
  final List<AiReasoningEngineSpecDeploymentSpecEnv>? envs;

  /// Optional. The maximum number of application instances that can be
  /// launched to handle increased traffic. Defaults to 100.
  /// Range: [1, 1000]. If VPC-SC or PSC-I is enabled, the acceptable
  /// range is [1, 100].
  final int? maxInstances;

  /// Optional. The minimum number of application instances that will be
  /// kept running at all times. Defaults to 1. Range: [0, 10].
  final int? minInstances;

  /// Optional. Configuration for PSC-Interface.
  /// Structure is documented below.
  final AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig?
      pscInterfaceConfig;

  /// Optional. Resource limits for each container.
  /// Only 'cpu' and 'memory' keys are supported.
  /// Defaults to {"cpu": "4", "memory": "4Gi"}.
  /// The only supported values for CPU are '1', '2', '4', '6' and '8'.
  /// For more information, go to
  /// https://cloud.google.com/run/docs/configuring/cpu.
  /// The only supported values for memory are '1Gi', '2Gi', ... '32 Gi'.
  /// For more information, go to
  /// https://cloud.google.com/run/docs/configuring/memory-limits.
  final Map<String, String>? resourceLimits;

  /// Optional. Environment variables where the value is a secret in
  /// Cloud Secret Manager. To use this feature, add 'Secret Manager
  /// Secret Accessor' role (roles/secretmanager.secretAccessor) to AI
  /// Platform Reasoning Engine service Agent.
  /// Structure is documented below.
  final List<AiReasoningEngineSpecDeploymentSpecSecretEnv>? secretEnvs;

  /// Creates a new [AiReasoningEngineSpecDeploymentSpec].
  /// [containerConcurrency] Optional. Concurrency for each container and agent server.
  /// [envs] Optional. Environment variables to be set with the Reasoning
  /// [maxInstances] Optional. The maximum number of application instances that can be
  /// [minInstances] Optional. The minimum number of application instances that will be
  /// [pscInterfaceConfig] Optional. Configuration for PSC-Interface.
  /// [resourceLimits] Optional. Resource limits for each container.
  /// [secretEnvs] Optional. Environment variables where the value is a secret in
  AiReasoningEngineSpecDeploymentSpec({
    this.containerConcurrency,
    this.envs,
    this.maxInstances,
    this.minInstances,
    this.pscInterfaceConfig,
    this.resourceLimits,
    this.secretEnvs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerConcurrencyValue = containerConcurrency;
    if (containerConcurrencyValue != null) {
      map['containerConcurrency'] = containerConcurrencyValue;
    }
    final envsValue = envs;
    if (envsValue != null) {
      map['envs'] = pulumi.Input.encodeList<
          AiReasoningEngineSpecDeploymentSpecEnv,
          Map<String, dynamic>>(envsValue, (value) => value.toMap());
    }
    final maxInstancesValue = maxInstances;
    if (maxInstancesValue != null) {
      map['maxInstances'] = maxInstancesValue;
    }
    final minInstancesValue = minInstances;
    if (minInstancesValue != null) {
      map['minInstances'] = minInstancesValue;
    }
    final pscInterfaceConfigValue = pscInterfaceConfig;
    if (pscInterfaceConfigValue != null) {
      map['pscInterfaceConfig'] = pscInterfaceConfigValue.toMap();
    }
    final resourceLimitsValue = resourceLimits;
    if (resourceLimitsValue != null) {
      map['resourceLimits'] = resourceLimitsValue;
    }
    final secretEnvsValue = secretEnvs;
    if (secretEnvsValue != null) {
      map['secretEnvs'] = pulumi.Input.encodeList<
          AiReasoningEngineSpecDeploymentSpecSecretEnv,
          Map<String, dynamic>>(secretEnvsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AiReasoningEngineSpecDeploymentSpec.fromMap(
      Map<String, dynamic> map) {
    return AiReasoningEngineSpecDeploymentSpec(
      containerConcurrency: map['containerConcurrency'] == null
          ? null
          : map['containerConcurrency'] as int,
      envs: map['envs'] == null
          ? null
          : pulumi.Input.decodeList<AiReasoningEngineSpecDeploymentSpecEnv>(
              map['envs'],
              (value) => AiReasoningEngineSpecDeploymentSpecEnv.fromMap(
                  (value as Map).cast<String, dynamic>())),
      maxInstances:
          map['maxInstances'] == null ? null : map['maxInstances'] as int,
      minInstances:
          map['minInstances'] == null ? null : map['minInstances'] as int,
      pscInterfaceConfig: map['pscInterfaceConfig'] == null
          ? null
          : AiReasoningEngineSpecDeploymentSpecPscInterfaceConfig.fromMap(
              (map['pscInterfaceConfig'] as Map).cast<String, dynamic>()),
      resourceLimits: map['resourceLimits'] == null
          ? null
          : (map['resourceLimits'] as Map).cast<String, String>(),
      secretEnvs: map['secretEnvs'] == null
          ? null
          : pulumi.Input.decodeList<
                  AiReasoningEngineSpecDeploymentSpecSecretEnv>(
              map['secretEnvs'],
              (value) => AiReasoningEngineSpecDeploymentSpecSecretEnv.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
