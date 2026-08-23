// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_agentcore_runtime_environment_network_configuration_network_mode_config.dart';

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration {
  /// Network mode. Valid values: `PUBLIC`, `VPC`.
  final pulumi.Input<String> networkMode;
  /// VPC configuration. See `networkModeConfig` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>>? networkModeConfigs;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration].
  /// [networkMode] Network mode. Valid values: `PUBLIC`, `VPC`.
  /// [networkModeConfigs] VPC configuration. See `networkModeConfig` Block below.
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'networkModeConfigs': ?pulumi.Input.mapOptionalInputValue<List<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>, List<Map<String, dynamic>>>(networkModeConfigs, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfiguration(
      networkMode: pulumi.Input.fromValue(map['networkMode'] as String),
      networkModeConfigs: (() { final guardedValue = map['networkModeConfigs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>(guardedValue, (value) => AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
