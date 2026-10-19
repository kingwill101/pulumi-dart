// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_managed_vpc_resource.dart';
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_self_managed_lattice_resource.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint {
  /// Private endpoint backed by a service-managed VPC resource. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource>> managedVpcResources;
  /// Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource>> selfManagedLatticeResources;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint].
  /// [managedVpcResources] Private endpoint backed by a service-managed VPC resource. See below.
  /// [selfManagedLatticeResources] Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint({
    required this.managedVpcResources,
    required this.selfManagedLatticeResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResources': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource>, List<Map<String, dynamic>>>(managedVpcResources, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfManagedLatticeResources': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource>, List<Map<String, dynamic>>>(selfManagedLatticeResources, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpoint(
      managedVpcResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource>(map['managedVpcResources']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointManagedVpcResource.fromMap((value as Map).cast<String, dynamic>()))),
      selfManagedLatticeResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource>(map['selfManagedLatticeResources']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointSelfManagedLatticeResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
