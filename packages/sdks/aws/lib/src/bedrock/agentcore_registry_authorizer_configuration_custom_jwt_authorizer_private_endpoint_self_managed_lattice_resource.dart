// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  /// Identifier of the VPC Lattice resource configuration.
  final pulumi.Input<String?>? resourceConfigurationIdentifier;

  /// Creates a new [AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] Identifier of the VPC Lattice resource configuration.
  const AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
    };
  }

  factory AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreRegistryAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: (() { final guardedValue = map['resourceConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
