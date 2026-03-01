// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_agent_runtime_network_configuration_network_mode_config.dart';

class AgentcoreAgentRuntimeNetworkConfiguration {
  /// Network mode for the agent runtime. Valid values: `PUBLIC`, `VPC`.
  final String networkMode;

  /// Network mode configuration. See `network_mode_config` below.
  final AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig?
  networkModeConfig;

  /// Creates a new [AgentcoreAgentRuntimeNetworkConfiguration].
  /// [networkMode] Network mode for the agent runtime. Valid values: `PUBLIC`, `VPC`.
  /// [networkModeConfig] Network mode configuration. See `network_mode_config` below.
  AgentcoreAgentRuntimeNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'networkModeConfig': ?networkModeConfig == null
          ? null
          : networkModeConfig!.toMap(),
    };
  }

  factory AgentcoreAgentRuntimeNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreAgentRuntimeNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      networkModeConfig: map['networkModeConfig'] == null
          ? null
          : AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap(
              (map['networkModeConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
