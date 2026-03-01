// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration.dart';
import 'delegation.dart';
import 'ipam_pool_prefix_allocation.dart';
import 'network_security_group.dart';
import 'resource_navigation_link.dart';
import 'route_table.dart';
import 'service_association_link.dart';
import 'service_endpoint_policy.dart';
import 'service_endpoint_properties_format.dart';
import 'sub_resource.dart';

/// Subnet in a virtual network resource.
class Subnet {
  /// The address prefix for the subnet.
  final String? addressPrefix;
  /// List of address prefixes for the subnet.
  final List<String>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final List<ApplicationGatewayIPConfiguration>? applicationGatewayIPConfigurations;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final bool? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final List<Delegation>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Resource ID.
  final String? id;
  /// Array of IpAllocation which reference this subnet.
  final List<SubResource>? ipAllocations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final List<IpamPoolPrefixAllocation>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Nat gateway associated with this subnet.
  final SubResource? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final NetworkSecurityGroup? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final String? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final String? privateLinkServiceNetworkPolicies;
  /// The provisioning state of the resource.
  final String? provisioningState;
  /// Gets an array of references to the external resources using subnet.
  final List<ResourceNavigationLink>? resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  final RouteTable? routeTable;
  /// Gets an array of references to services injecting into this subnet.
  final List<ServiceAssociationLink>? serviceAssociationLinks;
  /// An array of service endpoint policies.
  final List<ServiceEndpointPolicy>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final List<ServiceEndpointPropertiesFormat>? serviceEndpoints;
  /// Reference to an existing service gateway.
  final SubResource? serviceGateway;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final String? sharingScope;
  /// Resource type.
  final String? type;

  /// Creates a new [Subnet].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [provisioningState] The provisioning state of the resource.
  /// [resourceNavigationLinks] Gets an array of references to the external resources using subnet.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceAssociationLinks] Gets an array of references to services injecting into this subnet.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [serviceGateway] Reference to an existing service gateway.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [type] Resource type.
  Subnet({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    this.defaultOutboundAccess,
    this.delegations,
    this.etag,
    this.id,
    this.ipAllocations,
    this.ipamPoolPrefixAllocations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    this.privateEndpointNetworkPolicies,
    this.privateLinkServiceNetworkPolicies,
    this.provisioningState,
    this.resourceNavigationLinks,
    this.routeTable,
    this.serviceAssociationLinks,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
    this.serviceGateway,
    this.sharingScope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?applicationGatewayIPConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayIPConfiguration, Map<String, dynamic>>(applicationGatewayIPConfigurations!, (value) => value.toMap()),
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?delegations == null ? null : pulumi.Input.encodeList<Delegation, Map<String, dynamic>>(delegations!, (value) => value.toMap()),
      'etag': ?etag,
      'id': ?id,
      'ipAllocations': ?ipAllocations == null ? null : pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(ipAllocations!, (value) => value.toMap()),
      'ipamPoolPrefixAllocations': ?ipamPoolPrefixAllocations == null ? null : pulumi.Input.encodeList<IpamPoolPrefixAllocation, Map<String, dynamic>>(ipamPoolPrefixAllocations!, (value) => value.toMap()),
      'name': ?name,
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'provisioningState': ?provisioningState,
      'resourceNavigationLinks': ?resourceNavigationLinks == null ? null : pulumi.Input.encodeList<ResourceNavigationLink, Map<String, dynamic>>(resourceNavigationLinks!, (value) => value.toMap()),
      'routeTable': ?routeTable == null ? null : routeTable!.toMap(),
      'serviceAssociationLinks': ?serviceAssociationLinks == null ? null : pulumi.Input.encodeList<ServiceAssociationLink, Map<String, dynamic>>(serviceAssociationLinks!, (value) => value.toMap()),
      'serviceEndpointPolicies': ?serviceEndpointPolicies == null ? null : pulumi.Input.encodeList<ServiceEndpointPolicy, Map<String, dynamic>>(serviceEndpointPolicies!, (value) => value.toMap()),
      'serviceEndpoints': ?serviceEndpoints == null ? null : pulumi.Input.encodeList<ServiceEndpointPropertiesFormat, Map<String, dynamic>>(serviceEndpoints!, (value) => value.toMap()),
      'serviceGateway': ?serviceGateway == null ? null : serviceGateway!.toMap(),
      'sharingScope': ?sharingScope,
      'type': ?type,
    };
  }

  factory Subnet.fromMap(Map<String, dynamic> map) {
    return Subnet(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      applicationGatewayIPConfigurations: map['applicationGatewayIPConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(map['applicationGatewayIPConfigurations'], (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      defaultOutboundAccess: map['defaultOutboundAccess'] == null ? null : map['defaultOutboundAccess'] as bool,
      delegations: map['delegations'] == null ? null : pulumi.Input.decodeList<Delegation>(map['delegations'], (value) => Delegation.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipAllocations: map['ipAllocations'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ipAllocations'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : pulumi.Input.decodeList<IpamPoolPrefixAllocation>(map['ipamPoolPrefixAllocations'], (value) => IpamPoolPrefixAllocation.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      natGateway: map['natGateway'] == null ? null : SubResource.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NetworkSecurityGroup.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : map['privateEndpointNetworkPolicies'] as String,
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : map['privateLinkServiceNetworkPolicies'] as String,
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      resourceNavigationLinks: map['resourceNavigationLinks'] == null ? null : pulumi.Input.decodeList<ResourceNavigationLink>(map['resourceNavigationLinks'], (value) => ResourceNavigationLink.fromMap((value as Map).cast<String, dynamic>())),
      routeTable: map['routeTable'] == null ? null : RouteTable.fromMap((map['routeTable'] as Map).cast<String, dynamic>()),
      serviceAssociationLinks: map['serviceAssociationLinks'] == null ? null : pulumi.Input.decodeList<ServiceAssociationLink>(map['serviceAssociationLinks'], (value) => ServiceAssociationLink.fromMap((value as Map).cast<String, dynamic>())),
      serviceEndpointPolicies: map['serviceEndpointPolicies'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPolicy>(map['serviceEndpointPolicies'], (value) => ServiceEndpointPolicy.fromMap((value as Map).cast<String, dynamic>())),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPropertiesFormat>(map['serviceEndpoints'], (value) => ServiceEndpointPropertiesFormat.fromMap((value as Map).cast<String, dynamic>())),
      serviceGateway: map['serviceGateway'] == null ? null : SubResource.fromMap((map['serviceGateway'] as Map).cast<String, dynamic>()),
      sharingScope: map['sharingScope'] == null ? null : map['sharingScope'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

