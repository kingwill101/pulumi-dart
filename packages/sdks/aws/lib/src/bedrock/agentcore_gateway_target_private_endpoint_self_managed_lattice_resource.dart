// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource {
  /// ARN or ID of the VPC Lattice resource configuration.
  final pulumi.Input<String> resourceConfigurationIdentifier;

  /// Creates a new [AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] ARN or ID of the VPC Lattice resource configuration.
  const AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource({
    required this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': resourceConfigurationIdentifier,
    };
  }

  factory AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreGatewayTargetPrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: pulumi.Input.fromValue(map['resourceConfigurationIdentifier'] as String),
    );
  }
}
