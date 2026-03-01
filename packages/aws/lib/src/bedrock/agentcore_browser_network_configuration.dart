// ignore_for_file: unused_element, unnecessary_cast

import 'agentcore_browser_network_configuration_vpc_config.dart';

class AgentcoreBrowserNetworkConfiguration {
  /// Network mode for the browser. Valid values: `PUBLIC`, `VPC`.
  final String networkMode;

  /// VPC configuration when `network_mode` is `VPC`. See `vpc_config` below.
  final AgentcoreBrowserNetworkConfigurationVpcConfig? vpcConfig;

  /// Creates a new [AgentcoreBrowserNetworkConfiguration].
  /// [networkMode] Network mode for the browser. Valid values: `PUBLIC`, `VPC`.
  /// [vpcConfig] VPC configuration when `network_mode` is `VPC`. See `vpc_config` below.
  AgentcoreBrowserNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'vpcConfig': ?vpcConfig == null ? null : vpcConfig!.toMap(),
    };
  }

  factory AgentcoreBrowserNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreBrowserNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
