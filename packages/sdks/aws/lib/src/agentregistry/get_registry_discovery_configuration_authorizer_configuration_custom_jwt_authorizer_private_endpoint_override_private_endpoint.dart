// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_managed_vpc_resource.dart';
import 'get_registry_discovery_configuration_authorizer_configuration_custom_jwt_authorizer_private_endpoint_override_private_endpoint_self_managed_lattice_resource.dart';

class GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint {
  /// Private endpoint backed by a service-managed VPC resource. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource>> managedVpcResources;
  /// Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  final pulumi.Input<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource>> selfManagedLatticeResources;

  /// Creates a new [GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint].
  /// [managedVpcResources] Private endpoint backed by a service-managed VPC resource. See below.
  /// [selfManagedLatticeResources] Private endpoint backed by a self-managed VPC Lattice resource configuration. See below.
  const GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint({
    required this.managedVpcResources,
    required this.selfManagedLatticeResources,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'managedVpcResources': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource>, List<Map<String, dynamic>>>(managedVpcResources, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'selfManagedLatticeResources': pulumi.Input.mapInputValue<List<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource>, List<Map<String, dynamic>>>(selfManagedLatticeResources, (value) => pulumi.Input.encodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint.fromMap(Map<String, dynamic> map) {
    return GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpoint(
      managedVpcResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource>(map['managedVpcResources']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointManagedVpcResource.fromMap((value as Map).cast<String, dynamic>()))),
      selfManagedLatticeResources: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource>(map['selfManagedLatticeResources']!, (value) => GetRegistryDiscoveryConfigurationAuthorizerConfigurationCustomJwtAuthorizerPrivateEndpointOverridePrivateEndpointSelfManagedLatticeResource.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
