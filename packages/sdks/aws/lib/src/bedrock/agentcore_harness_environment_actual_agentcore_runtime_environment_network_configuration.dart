// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_harness_environment_actual_agentcore_runtime_environment_network_configuration_network_mode_config.dart';

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration {
  /// Network mode. Valid values: `PUBLIC`, `VPC`.
  final pulumi.Input<String> networkMode;
  /// VPC configuration. See `networkModeConfig` Block below.
  final pulumi.Input<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>> networkModeConfigs;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration].
  /// [networkMode] Network mode. Valid values: `PUBLIC`, `VPC`.
  /// [networkModeConfigs] VPC configuration. See `networkModeConfig` Block below.
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration({
    required this.networkMode,
    required this.networkModeConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'networkModeConfigs': pulumi.Input.mapInputValue<List<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>, List<Map<String, dynamic>>>(networkModeConfigs, (value) => pulumi.Input.encodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfiguration(
      networkMode: pulumi.Input.fromValue(map['networkMode'] as String),
      networkModeConfigs: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig>(map['networkModeConfigs']!, (value) => AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
