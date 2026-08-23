// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig {
  /// Whether a service-managed Amazon S3 gateway endpoint is provisioned in the VPC for the agent runtime. This value is managed by the service and cannot be set: it is rejected on both create and update. Agent runtimes created on or after the May 5, 2026 rollout do not include a service-managed Amazon S3 gateway.
  final pulumi.Input<bool>? requireServiceS3Endpoint;
  /// Security groups associated with the VPC configuration.
  final pulumi.Input<List<String>> securityGroups;
  /// Subnets associated with the VPC configuration.
  final pulumi.Input<List<String>> subnets;

  /// Creates a new [AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig].
  /// [requireServiceS3Endpoint] Whether a service-managed Amazon S3 gateway endpoint is provisioned in the VPC for the agent runtime. This value is managed by the service and cannot be set: it is rejected on both create and update. Agent runtimes created on or after the May 5, 2026 rollout do not include a service-managed Amazon S3 gateway.
  /// [securityGroups] Security groups associated with the VPC configuration.
  /// [subnets] Subnets associated with the VPC configuration.
  const AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig({
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

  factory AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig.fromMap(Map<String, dynamic> map) {
    return AgentcoreAgentRuntimeNetworkConfigurationNetworkModeConfig(
      requireServiceS3Endpoint: (() { final guardedValue = map['requireServiceS3Endpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      securityGroups: pulumi.Input.fromValue((map['securityGroups'] as List).cast<String>()),
      subnets: pulumi.Input.fromValue((map['subnets'] as List).cast<String>()),
    );
  }
}
