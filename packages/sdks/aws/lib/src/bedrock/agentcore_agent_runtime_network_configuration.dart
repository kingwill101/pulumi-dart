// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_agent_runtime_network_configuration_network_mode_config.dart';

class AgentcoreAgentRuntimeNetworkConfiguration {
  /// Network mode for the agent runtime. Valid values: `PUBLIC`, `VPC`.
  final pulumi.Input<String> networkMode;
  /// Network mode configuration. See `networkModeConfig` below.
  final pulumi.Input<AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig>? networkModeConfig;

  /// Creates a new [AgentcoreAgentRuntimeNetworkConfiguration].
  /// [networkMode] Network mode for the agent runtime. Valid values: `PUBLIC`, `VPC`.
  /// [networkModeConfig] Network mode configuration. See `networkModeConfig` below.
  const AgentcoreAgentRuntimeNetworkConfiguration({
    required this.networkMode,
    this.networkModeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'networkModeConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig, Map<String, dynamic>>(networkModeConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreAgentRuntimeNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeNetworkConfiguration(
      networkMode: pulumi.Input.fromValue(map['networkMode'] as String),
      networkModeConfig: (() { final guardedValue = map['networkModeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
