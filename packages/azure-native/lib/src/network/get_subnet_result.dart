// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration_response.dart';
import 'delegation_response.dart';
import 'ipam_pool_prefix_allocation_response.dart';
import 'ipconfiguration_profile_response.dart';
import 'ipconfiguration_response.dart';
import 'network_security_group_response.dart';
import 'private_endpoint_response.dart';
import 'resource_navigation_link_response.dart';
import 'route_table_response.dart';
import 'service_association_link_response.dart';
import 'service_endpoint_policy_response.dart';
import 'service_endpoint_properties_format_response.dart';
import 'sub_resource_response.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  /// The address prefix for the subnet.
  final String? addressPrefix;
  /// List of address prefixes for the subnet.
  final List<String>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final List<ApplicationGatewayIPConfigurationResponse>? applicationGatewayIPConfigurations;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final bool? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final List<DelegationResponse>? delegations;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Resource ID.
  final String? id;
  /// Array of IpAllocation which reference this subnet.
  final List<SubResourceResponse>? ipAllocations;
  /// Array of IP configuration profiles which reference this subnet.
  final List<IPConfigurationProfileResponse> ipConfigurationProfiles;
  /// An array of references to the network interface IP configurations using subnet.
  final List<IPConfigurationResponse> ipConfigurations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final List<IpamPoolPrefixAllocationResponse>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final String? name;
  /// Nat gateway associated with this subnet.
  final SubResourceResponse? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final NetworkSecurityGroupResponse? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final String? privateEndpointNetworkPolicies;
  /// An array of references to private endpoints.
  final List<PrivateEndpointResponse> privateEndpoints;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final String? privateLinkServiceNetworkPolicies;
  /// The provisioning state of the subnet resource.
  final String provisioningState;
  /// A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  final String purpose;
  /// An array of references to the external resources using subnet.
  final List<ResourceNavigationLinkResponse> resourceNavigationLinks;
  /// The reference to the RouteTable resource.
  final RouteTableResponse? routeTable;
  /// An array of references to services injecting into this subnet.
  final List<ServiceAssociationLinkResponse> serviceAssociationLinks;
  /// An array of service endpoint policies.
  final List<ServiceEndpointPolicyResponse>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final List<ServiceEndpointPropertiesFormatResponse>? serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final String? sharingScope;
  /// Resource type.
  final String? type;

  /// Creates a new [GetSubnetResult].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipConfigurationProfiles] Array of IP configuration profiles which reference this subnet.
  /// [ipConfigurations] An array of references to the network interface IP configurations using subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateEndpoints] An array of references to private endpoints.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [provisioningState] The provisioning state of the subnet resource.
  /// [purpose] A read-only string identifying the intention of use for this subnet based on delegations and other user-defined properties.
  /// [resourceNavigationLinks] An array of references to the external resources using subnet.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceAssociationLinks] An array of references to services injecting into this subnet.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [type] Resource type.
  GetSubnetResult({
    this.addressPrefix,
    this.addressPrefixes,
    this.applicationGatewayIPConfigurations,
    required this.azureApiVersion,
    this.defaultOutboundAccess,
    this.delegations,
    required this.etag,
    this.id,
    this.ipAllocations,
    required this.ipConfigurationProfiles,
    required this.ipConfigurations,
    this.ipamPoolPrefixAllocations,
    this.name,
    this.natGateway,
    this.networkSecurityGroup,
    this.privateEndpointNetworkPolicies,
    required this.privateEndpoints,
    this.privateLinkServiceNetworkPolicies,
    required this.provisioningState,
    required this.purpose,
    required this.resourceNavigationLinks,
    this.routeTable,
    required this.serviceAssociationLinks,
    this.serviceEndpointPolicies,
    this.serviceEndpoints,
    this.sharingScope,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?applicationGatewayIPConfigurations == null ? null : pulumi.Input.encodeList<ApplicationGatewayIPConfigurationResponse, Map<String, dynamic>>(applicationGatewayIPConfigurations!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?delegations == null ? null : pulumi.Input.encodeList<DelegationResponse, Map<String, dynamic>>(delegations!, (value) => value.toMap()),
      'etag': etag,
      'id': ?id,
      'ipAllocations': ?ipAllocations == null ? null : pulumi.Input.encodeList<SubResourceResponse, Map<String, dynamic>>(ipAllocations!, (value) => value.toMap()),
      'ipConfigurationProfiles': pulumi.Input.encodeList<IPConfigurationProfileResponse, Map<String, dynamic>>(ipConfigurationProfiles, (value) => value.toMap()),
      'ipConfigurations': pulumi.Input.encodeList<IPConfigurationResponse, Map<String, dynamic>>(ipConfigurations, (value) => value.toMap()),
      'ipamPoolPrefixAllocations': ?ipamPoolPrefixAllocations == null ? null : pulumi.Input.encodeList<IpamPoolPrefixAllocationResponse, Map<String, dynamic>>(ipamPoolPrefixAllocations!, (value) => value.toMap()),
      'name': ?name,
      'natGateway': ?natGateway == null ? null : natGateway!.toMap(),
      'networkSecurityGroup': ?networkSecurityGroup == null ? null : networkSecurityGroup!.toMap(),
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateEndpoints': pulumi.Input.encodeList<PrivateEndpointResponse, Map<String, dynamic>>(privateEndpoints, (value) => value.toMap()),
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'provisioningState': provisioningState,
      'purpose': purpose,
      'resourceNavigationLinks': pulumi.Input.encodeList<ResourceNavigationLinkResponse, Map<String, dynamic>>(resourceNavigationLinks, (value) => value.toMap()),
      'routeTable': ?routeTable == null ? null : routeTable!.toMap(),
      'serviceAssociationLinks': pulumi.Input.encodeList<ServiceAssociationLinkResponse, Map<String, dynamic>>(serviceAssociationLinks, (value) => value.toMap()),
      'serviceEndpointPolicies': ?serviceEndpointPolicies == null ? null : pulumi.Input.encodeList<ServiceEndpointPolicyResponse, Map<String, dynamic>>(serviceEndpointPolicies!, (value) => value.toMap()),
      'serviceEndpoints': ?serviceEndpoints == null ? null : pulumi.Input.encodeList<ServiceEndpointPropertiesFormatResponse, Map<String, dynamic>>(serviceEndpoints!, (value) => value.toMap()),
      'sharingScope': ?sharingScope,
      'type': ?type,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      applicationGatewayIPConfigurations: map['applicationGatewayIPConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayIPConfigurationResponse>(map['applicationGatewayIPConfigurations'], (value) => ApplicationGatewayIPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      defaultOutboundAccess: map['defaultOutboundAccess'] == null ? null : map['defaultOutboundAccess'] as bool,
      delegations: map['delegations'] == null ? null : pulumi.Input.decodeList<DelegationResponse>(map['delegations'], (value) => DelegationResponse.fromMap((value as Map).cast<String, dynamic>())),
      etag: map['etag'] as String,
      id: map['id'] == null ? null : map['id'] as String,
      ipAllocations: map['ipAllocations'] == null ? null : pulumi.Input.decodeList<SubResourceResponse>(map['ipAllocations'], (value) => SubResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipConfigurationProfiles: pulumi.Input.decodeList<IPConfigurationProfileResponse>(map['ipConfigurationProfiles'], (value) => IPConfigurationProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipConfigurations: pulumi.Input.decodeList<IPConfigurationResponse>(map['ipConfigurations'], (value) => IPConfigurationResponse.fromMap((value as Map).cast<String, dynamic>())),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : pulumi.Input.decodeList<IpamPoolPrefixAllocationResponse>(map['ipamPoolPrefixAllocations'], (value) => IpamPoolPrefixAllocationResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      natGateway: map['natGateway'] == null ? null : SubResourceResponse.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : NetworkSecurityGroupResponse.fromMap((map['networkSecurityGroup'] as Map).cast<String, dynamic>()),
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : map['privateEndpointNetworkPolicies'] as String,
      privateEndpoints: pulumi.Input.decodeList<PrivateEndpointResponse>(map['privateEndpoints'], (value) => PrivateEndpointResponse.fromMap((value as Map).cast<String, dynamic>())),
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : map['privateLinkServiceNetworkPolicies'] as String,
      provisioningState: map['provisioningState'] as String,
      purpose: map['purpose'] as String,
      resourceNavigationLinks: pulumi.Input.decodeList<ResourceNavigationLinkResponse>(map['resourceNavigationLinks'], (value) => ResourceNavigationLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      routeTable: map['routeTable'] == null ? null : RouteTableResponse.fromMap((map['routeTable'] as Map).cast<String, dynamic>()),
      serviceAssociationLinks: pulumi.Input.decodeList<ServiceAssociationLinkResponse>(map['serviceAssociationLinks'], (value) => ServiceAssociationLinkResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceEndpointPolicies: map['serviceEndpointPolicies'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPolicyResponse>(map['serviceEndpointPolicies'], (value) => ServiceEndpointPolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPropertiesFormatResponse>(map['serviceEndpoints'], (value) => ServiceEndpointPropertiesFormatResponse.fromMap((value as Map).cast<String, dynamic>())),
      sharingScope: map['sharingScope'] == null ? null : map['sharingScope'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

