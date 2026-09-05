// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig {
  /// Whether to require an S3 endpoint for the service in the VPC.
  final pulumi.Input<bool?>? requireServiceS3Endpoint;
  /// Security groups for the VPC.
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets for the VPC.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig].
  /// [requireServiceS3Endpoint] Whether to require an S3 endpoint for the service in the VPC.
  /// [securityGroups] Security groups for the VPC.
  /// [subnets] Subnets for the VPC.
  const AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig({
    this.requireServiceS3Endpoint,
    required this.securityGroups,
    required this.subnets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'requireServiceS3Endpoint': ?requireServiceS3Endpoint,
      'securityGroups': securityGroups,
      'subnets': subnets,
    };
  }

  factory AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessEnvironmentAgentcoreRuntimeEnvironmentNetworkConfigurationNetworkModeConfig(
      requireServiceS3Endpoint: (() { final guardedValue = map['requireServiceS3Endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
