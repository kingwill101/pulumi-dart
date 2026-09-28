// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_managed_vpc_resource.dart';
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_self_managed_lattice_resource.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  /// Private endpoint backed by a service-managed VPC resource. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint].
  /// [managedVpcResource] Private endpoint backed by a service-managed VPC resource. See below.
  /// [selfManagedLatticeResource] Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
