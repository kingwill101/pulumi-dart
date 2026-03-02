// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig {
  /// Security groups associated with the VPC configuration.
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets associated with the VPC configuration.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig].
  /// [securityGroups] Security groups associated with the VPC configuration.
  /// [subnets] Subnets associated with the VPC configuration.
  AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig({
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig(
      securityGroups: ((map['securityGroups'] as List).cast<String>()).input(),
      subnets: ((map['subnets'] as List).cast<String>()).input(),
    );
  }
}

