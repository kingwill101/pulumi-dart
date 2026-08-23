// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig {
  /// Whether to require an S3 endpoint for the service in the VPC.
  final pulumi.Input<bool> requireServiceS3Endpoint;
  /// Security groups for the VPC.
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets for the VPC.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig].
  /// [requireServiceS3Endpoint] Whether to require an S3 endpoint for the service in the VPC.
  /// [securityGroups] Security groups for the VPC.
  /// [subnets] Subnets for the VPC.
  const AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig({
    required this.requireServiceS3Endpoint,
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireServiceS3Endpoint': requireServiceS3Endpoint,
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentActualAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig(
      requireServiceS3Endpoint: pulumi.Input.fromValue(map['requireServiceS3Endpoint'] as bool),
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
