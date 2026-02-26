// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_agent_runtime_network_configuration_network_mode_config/agentcore_agent_runtime_network_configuration_network_mode_config.dart';

class AgentcoreAgentRuntimeNetworkConfiguration {
  /// Network mode for the agent runtime. Valid values: `PUBLIC`, `VPC`.
  final String networkMode;

  /// Network mode configuration. See <span pulumi-lang-nodejs="`networkModeConfig`" pulumi-lang-dotnet="`NetworkModeConfig`" pulumi-lang-go="`networkModeConfig`" pulumi-lang-python="`network_mode_config`" pulumi-lang-yaml="`networkModeConfig`" pulumi-lang-java="`networkModeConfig`">`network_mode_config`</span> below.
  final AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig?
      networkModeConfig;

  AgentcoreAgentRuntimeNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkMode'] = networkMode;
    final networkModeConfigValue = networkModeConfig;
    if (networkModeConfigValue != null) {
      map['networkModeConfig'] = networkModeConfigValue.toMap();
    }
    return map;
  }

  factory AgentcoreAgentRuntimeNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      networkModeConfig: map['networkModeConfig'] == null
          ? null
          : AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap(
              (map['networkModeConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
