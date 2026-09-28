// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_managed_vpc_resource.dart';
import 'registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_self_managed_lattice_resource.dart';

class RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  /// Private endpoint backed by a service-managed VPC resource. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource?>? managedVpcResource;
  /// Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  final pulumi.Input<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource?>? selfManagedLatticeResource;

  /// Creates a new [RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint].
  /// [managedVpcResource] Private endpoint backed by a service-managed VPC resource. See below.
  /// [selfManagedLatticeResource] Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  const RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    this.managedVpcResource,
    this.selfManagedLatticeResource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResource': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource, Map<String, dynamic>>(managedVpcResource, (value) => value.toMap()),
      'selfManagedLatticeResource': ?pulumi.Input.mapOptionalInputValue<RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(selfManagedLatticeResource, (value) => value.toMap()),
    };
  }

  factory RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint(
      managedVpcResource: (() { final guardedValue = map['managedVpcResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      selfManagedLatticeResource: (() { final guardedValue = map['selfManagedLatticeResource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
