// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_code_interpreter_network_configuration_vpc_config/agentcore_code_interpreter_network_configuration_vpc_config.dart';

class AgentcoreCodeInterpreterNetworkConfiguration {
  /// Network mode for the code interpreter. Valid values: `PUBLIC`, `SANDBOX`, `VPC`.
  final String networkMode;

  /// VPC configuration. See `vpc_config` below.
  final AgentcoreCodeInterpreterNetworkConfigurationVpcConfig? vpcConfig;

  AgentcoreCodeInterpreterNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['networkMode'] = networkMode;
    final vpcConfigValue = vpcConfig;
    if (vpcConfigValue != null) {
      map['vpcConfig'] = vpcConfigValue.toMap();
    }
    return map;
  }

  factory AgentcoreCodeInterpreterNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreCodeInterpreterNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : AgentcoreCodeInterpreterNetworkConfigurationVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
