// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource {
  /// Identifier of the VPC Lattice resource configuration.
  final pulumi.Input<String?>? resourceConfigurationIdentifier;

  /// Creates a new [AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] Identifier of the VPC Lattice resource configuration.
  const AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
    };
  }

  factory AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return AgentcoreHarnessAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: (() { final guardedValue = map['resourceConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
