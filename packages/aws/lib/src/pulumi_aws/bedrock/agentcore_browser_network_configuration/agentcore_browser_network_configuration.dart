// ignore_for_file: unused_element, unnecessary_cast

import '../agentcore_browser_network_configuration_vpc_config/agentcore_browser_network_configuration_vpc_config.dart';

class AgentcoreBrowserNetworkConfiguration {
  /// Network mode for the browser. Valid values: `PUBLIC`, `VPC`.
  final String networkMode;

  /// VPC configuration when <span pulumi-lang-nodejs="`networkMode`" pulumi-lang-dotnet="`NetworkMode`" pulumi-lang-go="`networkMode`" pulumi-lang-python="`network_mode`" pulumi-lang-yaml="`networkMode`" pulumi-lang-java="`networkMode`">`network_mode`</span> is `VPC`. See <span pulumi-lang-nodejs="`vpcConfig`" pulumi-lang-dotnet="`VpcConfig`" pulumi-lang-go="`vpcConfig`" pulumi-lang-python="`vpc_config`" pulumi-lang-yaml="`vpcConfig`" pulumi-lang-java="`vpcConfig`">`vpc_config`</span> below.
  final AgentcoreBrowserNetworkConfigurationVpcConfig? vpcConfig;

  AgentcoreBrowserNetworkConfiguration({
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

  factory AgentcoreBrowserNetworkConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentcoreBrowserNetworkConfiguration(
      networkMode: map['networkMode'] as String,
      vpcConfig: map['vpcConfig'] == null
          ? null
          : AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap(
              (map['vpcConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
