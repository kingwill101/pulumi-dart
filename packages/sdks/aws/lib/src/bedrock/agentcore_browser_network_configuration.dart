// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_browser_network_configuration_vpc_config.dart';

class AgentcoreBrowserNetworkConfiguration {
  /// Network mode for the browser. Valid values: `PUBLIC`, `VPC`.
  final pulumi.Input<String> networkMode;
  /// VPC configuration when `network_mode` is `VPC`. See `vpc_config` below.
  final pulumi.Input<AgentcoreBrowserNetworkConfigurationVpcConfig>? vpcConfig;

  /// Creates a new [AgentcoreBrowserNetworkConfiguration].
  /// [networkMode] Network mode for the browser. Valid values: `PUBLIC`, `VPC`.
  /// [vpcConfig] VPC configuration when `network_mode` is `VPC`. See `vpc_config` below.
  const AgentcoreBrowserNetworkConfiguration({
    required this.networkMode,
    this.vpcConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkMode': networkMode,
      'vpcConfig': ?pulumi.Input.mapOptionalInputValue<AgentcoreBrowserNetworkConfigurationVpcConfig, Map<String, dynamic>>(vpcConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreBrowserNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserNetworkConfiguration(
      networkMode: pulumi.Input.fromValue(map['networkMode'] as String),
      vpcConfig: (() { final guardedValue = map['vpcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

