// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agentcore_code_interpreter_network_configuration_vpc_config.dart';

class AgentcoreCodeInterpreterNetworkConfiguration {
  /// Network mode for the code interpreter. Valid values: `PUBLIC`, `SANDBOX`, `VPC`.
  final pulumi.Input<String> networkMode;

  /// VPC configuration. See `vpc_config` below.
  final pulumi.Input<AgentcoreCodeInterpreterNetworkConfigurationVpcConfig>?
  vpcConfig;

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
      'vpcConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AgentcoreCodeInterpreterNetworkConfigurationVpcConfig,
            Map<String, dynamic>
          >(vpcConfig, (value) => value.toMap()),
    };
  }

  factory AgentcoreCodeInterpreterNetworkConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentcoreCodeInterpreterNetworkConfiguration(
      networkMode: pulumi.Input.fromValue(map['networkMode'] as String),
      vpcConfig: (() {
        final guardedValue = map['vpcConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentcoreCodeInterpreterNetworkConfigurationVpcConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
