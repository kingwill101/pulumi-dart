// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_gateway_ipconfiguration.dart';
import 'delegation.dart';
import 'ipam_pool_prefix_allocation.dart';
import 'network_security_group_network.dart';
import 'route_table_network.dart';
import 'service_endpoint_policy_network.dart';
import 'service_endpoint_properties_format.dart';
import 'sub_resource.dart';

/// {@template pulumi_network_subnet_args_doc}
/// The set of arguments for Subnet.
/// {@endtemplate}
/// {@macro pulumi_network_subnet_args_doc}
class SubnetArgs {
  /// The address prefix for the subnet.
  final pulumi.Input<String>? addressPrefix;
  /// List of address prefixes for the subnet.
  final pulumi.Input<List<String>>? addressPrefixes;
  /// Application gateway IP configurations of virtual network resource.
  final pulumi.Input<List<ApplicationGatewayIPConfiguration>>? applicationGatewayIPConfigurations;
  /// Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  final pulumi.Input<bool>? defaultOutboundAccess;
  /// An array of references to the delegations on the subnet.
  final pulumi.Input<List<Delegation>>? delegations;
  /// Resource ID.
  final pulumi.Input<String>? id;
  /// Array of IpAllocation which reference this subnet.
  final pulumi.Input<List<SubResource>>? ipAllocations;
  /// A list of IPAM Pools for allocating IP address prefixes.
  final pulumi.Input<List<IpamPoolPrefixAllocation>>? ipamPoolPrefixAllocations;
  /// The name of the resource that is unique within a resource group. This name can be used to access the resource.
  final pulumi.Input<String>? name;
  /// Nat gateway associated with this subnet.
  final pulumi.Input<SubResource>? natGateway;
  /// The reference to the NetworkSecurityGroup resource.
  final pulumi.Input<NetworkSecurityGroupNetwork>? networkSecurityGroup;
  /// Enable or Disable apply network policies on private end point in the subnet.
  final pulumi.Input<String>? privateEndpointNetworkPolicies;
  /// Enable or Disable apply network policies on private link service in the subnet.
  final pulumi.Input<String>? privateLinkServiceNetworkPolicies;
  /// The name of the resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The reference to the RouteTable resource.
  final pulumi.Input<RouteTableNetwork>? routeTable;
  /// An array of service endpoint policies.
  final pulumi.Input<List<ServiceEndpointPolicyNetwork>>? serviceEndpointPolicies;
  /// An array of service endpoints.
  final pulumi.Input<List<ServiceEndpointPropertiesFormat>>? serviceEndpoints;
  /// Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  final pulumi.Input<String>? sharingScope;
  /// The name of the subnet.
  final pulumi.Input<String>? subnetName;
  /// Resource type.
  final pulumi.Input<String>? type;
  /// The name of the virtual network.
  final pulumi.Input<String> virtualNetworkName;

  /// Creates a new [SubnetArgs].
  /// [addressPrefix] The address prefix for the subnet.
  /// [addressPrefixes] List of address prefixes for the subnet.
  /// [applicationGatewayIPConfigurations] Application gateway IP configurations of virtual network resource.
  /// [defaultOutboundAccess] Set this property to false to disable default outbound connectivity for all VMs in the subnet. This property can only be set at the time of subnet creation and cannot be updated for an existing subnet.
  /// [delegations] An array of references to the delegations on the subnet.
  /// [id] Resource ID.
  /// [ipAllocations] Array of IpAllocation which reference this subnet.
  /// [ipamPoolPrefixAllocations] A list of IPAM Pools for allocating IP address prefixes.
  /// [name] The name of the resource that is unique within a resource group. This name can be used to access the resource.
  /// [natGateway] Nat gateway associated with this subnet.
  /// [networkSecurityGroup] The reference to the NetworkSecurityGroup resource.
  /// [privateEndpointNetworkPolicies] Enable or Disable apply network policies on private end point in the subnet.
  /// [privateLinkServiceNetworkPolicies] Enable or Disable apply network policies on private link service in the subnet.
  /// [resourceGroupName] The name of the resource group.
  /// [routeTable] The reference to the RouteTable resource.
  /// [serviceEndpointPolicies] An array of service endpoint policies.
  /// [serviceEndpoints] An array of service endpoints.
  /// [sharingScope] Set this property to Tenant to allow sharing subnet with other subscriptions in your AAD tenant. This property can only be set if defaultOutboundAccess is set to false, both properties can only be set if subnet is empty.
  /// [subnetName] The name of the subnet.
  /// [type] Resource type.
  /// [virtualNetworkName] The name of the virtual network.
  SubnetArgs({
    String? addressPrefix,
    List<String>? addressPrefixes,
    List<ApplicationGatewayIPConfiguration>? applicationGatewayIPConfigurations,
    bool? defaultOutboundAccess,
    List<Delegation>? delegations,
    String? id,
    List<SubResource>? ipAllocations,
    List<IpamPoolPrefixAllocation>? ipamPoolPrefixAllocations,
    String? name,
    SubResource? natGateway,
    NetworkSecurityGroupNetwork? networkSecurityGroup,
    String? privateEndpointNetworkPolicies,
    String? privateLinkServiceNetworkPolicies,
    required String resourceGroupName,
    RouteTableNetwork? routeTable,
    List<ServiceEndpointPolicyNetwork>? serviceEndpointPolicies,
    List<ServiceEndpointPropertiesFormat>? serviceEndpoints,
    String? sharingScope,
    String? subnetName,
    String? type,
    required String virtualNetworkName,
  }) :
      addressPrefix = pulumi.Input.asOptionalInput<String>(addressPrefix),
      addressPrefixes = pulumi.Input.asOptionalInput<List<String>>(addressPrefixes),
      applicationGatewayIPConfigurations = pulumi.Input.asOptionalInput<List<ApplicationGatewayIPConfiguration>>(applicationGatewayIPConfigurations),
      defaultOutboundAccess = pulumi.Input.asOptionalInput<bool>(defaultOutboundAccess),
      delegations = pulumi.Input.asOptionalInput<List<Delegation>>(delegations),
      id = pulumi.Input.asOptionalInput<String>(id),
      ipAllocations = pulumi.Input.asOptionalInput<List<SubResource>>(ipAllocations),
      ipamPoolPrefixAllocations = pulumi.Input.asOptionalInput<List<IpamPoolPrefixAllocation>>(ipamPoolPrefixAllocations),
      name = pulumi.Input.asOptionalInput<String>(name),
      natGateway = pulumi.Input.asOptionalInput<SubResource>(natGateway),
      networkSecurityGroup = pulumi.Input.asOptionalInput<NetworkSecurityGroupNetwork>(networkSecurityGroup),
      privateEndpointNetworkPolicies = pulumi.Input.asOptionalInput<String>(privateEndpointNetworkPolicies),
      privateLinkServiceNetworkPolicies = pulumi.Input.asOptionalInput<String>(privateLinkServiceNetworkPolicies),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      routeTable = pulumi.Input.asOptionalInput<RouteTableNetwork>(routeTable),
      serviceEndpointPolicies = pulumi.Input.asOptionalInput<List<ServiceEndpointPolicyNetwork>>(serviceEndpointPolicies),
      serviceEndpoints = pulumi.Input.asOptionalInput<List<ServiceEndpointPropertiesFormat>>(serviceEndpoints),
      sharingScope = pulumi.Input.asOptionalInput<String>(sharingScope),
      subnetName = pulumi.Input.asOptionalInput<String>(subnetName),
      type = pulumi.Input.asOptionalInput<String>(type),
      virtualNetworkName = pulumi.Input.asInput<String>(virtualNetworkName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressPrefix': ?addressPrefix,
      'addressPrefixes': ?addressPrefixes,
      'applicationGatewayIPConfigurations': ?pulumi.Input.mapOptionalInputValue<List<ApplicationGatewayIPConfiguration>, List<Map<String, dynamic>>>(applicationGatewayIPConfigurations, (value) => pulumi.Input.encodeList<ApplicationGatewayIPConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultOutboundAccess': ?defaultOutboundAccess,
      'delegations': ?pulumi.Input.mapOptionalInputValue<List<Delegation>, List<Map<String, dynamic>>>(delegations, (value) => pulumi.Input.encodeList<Delegation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'id': ?id,
      'ipAllocations': ?pulumi.Input.mapOptionalInputValue<List<SubResource>, List<Map<String, dynamic>>>(ipAllocations, (value) => pulumi.Input.encodeList<SubResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'ipamPoolPrefixAllocations': ?pulumi.Input.mapOptionalInputValue<List<IpamPoolPrefixAllocation>, List<Map<String, dynamic>>>(ipamPoolPrefixAllocations, (value) => pulumi.Input.encodeList<IpamPoolPrefixAllocation, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
      'natGateway': ?pulumi.Input.mapOptionalInputValue<SubResource, Map<String, dynamic>>(natGateway, (value) => value.toMap()),
      'networkSecurityGroup': ?networkSecurityGroup,
      'privateEndpointNetworkPolicies': ?privateEndpointNetworkPolicies,
      'privateLinkServiceNetworkPolicies': ?privateLinkServiceNetworkPolicies,
      'resourceGroupName': resourceGroupName,
      'routeTable': ?routeTable,
      'serviceEndpointPolicies': ?serviceEndpointPolicies,
      'serviceEndpoints': ?pulumi.Input.mapOptionalInputValue<List<ServiceEndpointPropertiesFormat>, List<Map<String, dynamic>>>(serviceEndpoints, (value) => pulumi.Input.encodeList<ServiceEndpointPropertiesFormat, Map<String, dynamic>>(value, (value) => value.toMap())),
      'sharingScope': ?sharingScope,
      'subnetName': ?subnetName,
      'type': ?type,
      'virtualNetworkName': virtualNetworkName,
    };
  }

  factory SubnetArgs.fromMap(Map<String, dynamic> map) {
    return SubnetArgs(
      addressPrefix: map['addressPrefix'] == null ? null : map['addressPrefix'] as String,
      addressPrefixes: map['addressPrefixes'] == null ? null : (map['addressPrefixes'] as List).cast<String>(),
      applicationGatewayIPConfigurations: map['applicationGatewayIPConfigurations'] == null ? null : pulumi.Input.decodeList<ApplicationGatewayIPConfiguration>(map['applicationGatewayIPConfigurations'], (value) => ApplicationGatewayIPConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      defaultOutboundAccess: map['defaultOutboundAccess'] == null ? null : map['defaultOutboundAccess'] as bool,
      delegations: map['delegations'] == null ? null : pulumi.Input.decodeList<Delegation>(map['delegations'], (value) => Delegation.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] == null ? null : map['id'] as String,
      ipAllocations: map['ipAllocations'] == null ? null : pulumi.Input.decodeList<SubResource>(map['ipAllocations'], (value) => SubResource.fromMap((value as Map).cast<String, dynamic>())),
      ipamPoolPrefixAllocations: map['ipamPoolPrefixAllocations'] == null ? null : pulumi.Input.decodeList<IpamPoolPrefixAllocation>(map['ipamPoolPrefixAllocations'], (value) => IpamPoolPrefixAllocation.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
      natGateway: map['natGateway'] == null ? null : SubResource.fromMap((map['natGateway'] as Map).cast<String, dynamic>()),
      networkSecurityGroup: map['networkSecurityGroup'] == null ? null : map['networkSecurityGroup'] as NetworkSecurityGroupNetwork,
      privateEndpointNetworkPolicies: map['privateEndpointNetworkPolicies'] == null ? null : map['privateEndpointNetworkPolicies'] as String,
      privateLinkServiceNetworkPolicies: map['privateLinkServiceNetworkPolicies'] == null ? null : map['privateLinkServiceNetworkPolicies'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      routeTable: map['routeTable'] == null ? null : map['routeTable'] as RouteTableNetwork,
      serviceEndpointPolicies: map['serviceEndpointPolicies'] == null ? null : (map['serviceEndpointPolicies'] as List).cast<ServiceEndpointPolicyNetwork>(),
      serviceEndpoints: map['serviceEndpoints'] == null ? null : pulumi.Input.decodeList<ServiceEndpointPropertiesFormat>(map['serviceEndpoints'], (value) => ServiceEndpointPropertiesFormat.fromMap((value as Map).cast<String, dynamic>())),
      sharingScope: map['sharingScope'] == null ? null : map['sharingScope'] as String,
      subnetName: map['subnetName'] == null ? null : map['subnetName'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      virtualNetworkName: map['virtualNetworkName'] as String,
    );
  }
}

