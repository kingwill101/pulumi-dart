// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_code_interpreter_network_configuration_vpc_config.dart';

class AgentcoreCodeInterpreterNetworkConfiguration {
  /// Network mode for the code interpreter. Valid values: `PUBLIC`, `SANDBOX`, `VPC`.
  final String networkMode;
  /// VPC configuration. See `vpc_config` below.
  final AgentcoreCodeInterpreterNetworkConfigurationVpcConfig? vpcConfig;

  /// Creates a new [AgentcoreCodeInterpreterNetworkConfiguration].
  /// [networkMode] Network mode for the code interpreter. Valid values: `PUBLIC`, `SANDBOX`, `VPC`.
  /// [vpcConfig] VPC configuration. See `vpc_config` below.
  AgentcoreCodeInterpreterNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'vpcConfig': ?vpcConfig == null ? null : vpcConfig!.toMap(),
    };
  }

  factory AgentcoreCodeInterpreterNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      vpcConfig: map['vpcConfig'] == null ? null : AgentcoreCodeInterpreterNetworkConfigurationVpcConfig.fromMap((map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

