// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource {
  /// Identifier of the VPC Lattice resource configuration, specified as a resource configuration ID or ARN.
  final pulumi.Input<String?>? resourceConfigurationIdentifier;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource].
  /// [resourceConfigurationIdentifier] Identifier of the VPC Lattice resource configuration, specified as a resource configuration ID or ARN.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource({
    this.resourceConfigurationIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceConfigurationIdentifier': ?resourceConfigurationIdentifier,
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource(
      resourceConfigurationIdentifier: (() { final guardedValue = map['resourceConfigurationIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
