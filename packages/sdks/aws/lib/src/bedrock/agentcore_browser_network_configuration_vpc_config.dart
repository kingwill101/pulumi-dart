// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreBrowserNetworkConfigurationVpcConfig {
  /// Set of security group IDs for the VPC configuration.
  final pulumi.Input<List<String>> securityGroups;
  /// Set of subnet IDs for the VPC configuration.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [AgentcoreBrowserNetworkConfigurationVpcConfig].
  /// [securityGroups] Set of security group IDs for the VPC configuration.
  /// [subnets] Set of subnet IDs for the VPC configuration.
  const AgentcoreBrowserNetworkConfigurationVpcConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory AgentcoreBrowserNetworkConfigurationVpcConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreBrowserNetworkConfigurationVpcConfig(
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
