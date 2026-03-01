// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_subnet_allocation_pool.dart';
import 'get_subnet_host_route.dart';

/// Result data returned by getSubnet.
class GetSubnetResult {
  /// A set of string tags applied on the subnet.
  final List<String> allTags;
  /// Allocation pools of the subnet.
  final List<GetSubnetAllocationPool> allocationPools;
  final String cidr;
  final String description;
  final bool? dhcpEnabled;
  /// DNS Nameservers of the subnet.
  final List<String> dnsNameservers;
  final bool? dnsPublishFixedIp;
  /// Whether the subnet has DHCP enabled or not.
  final bool enableDhcp;
  final String gatewayIp;
  /// Host Routes of the subnet.
  final List<GetSubnetHostRoute> hostRoutes;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final int ipVersion;
  final String ipv6AddressMode;
  final String ipv6RaMode;
  final String name;
  final String networkId;
  /// See Argument Reference above.
  final String region;
  final String segmentId;
  /// Service types of the subnet.
  final List<String> serviceTypes;
  final String subnetId;
  final String subnetpoolId;
  final List<String>? tags;
  final String tenantId;

  /// Creates a new [GetSubnetResult].
  /// [allTags] A set of string tags applied on the subnet.
  /// [allocationPools] Allocation pools of the subnet.
  /// [cidr] Required.
  /// [description] Required.
  /// [dhcpEnabled] Optional.
  /// [dnsNameservers] DNS Nameservers of the subnet.
  /// [dnsPublishFixedIp] Optional.
  /// [enableDhcp] Whether the subnet has DHCP enabled or not.
  /// [gatewayIp] Required.
  /// [hostRoutes] Host Routes of the subnet.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipVersion] Required.
  /// [ipv6AddressMode] Required.
  /// [ipv6RaMode] Required.
  /// [name] Required.
  /// [networkId] Required.
  /// [region] See Argument Reference above.
  /// [segmentId] Required.
  /// [serviceTypes] Service types of the subnet.
  /// [subnetId] Required.
  /// [subnetpoolId] Required.
  /// [tags] Optional.
  /// [tenantId] Required.
  GetSubnetResult({
    required this.allTags,
    required this.allocationPools,
    required this.cidr,
    required this.description,
    this.dhcpEnabled,
    required this.dnsNameservers,
    this.dnsPublishFixedIp,
    required this.enableDhcp,
    required this.gatewayIp,
    required this.hostRoutes,
    required this.id,
    required this.ipVersion,
    required this.ipv6AddressMode,
    required this.ipv6RaMode,
    required this.name,
    required this.networkId,
    required this.region,
    required this.segmentId,
    required this.serviceTypes,
    required this.subnetId,
    required this.subnetpoolId,
    this.tags,
    required this.tenantId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allTags': allTags,
      'allocationPools': pulumi.Input.encodeList<GetSubnetAllocationPool, Map<String, dynamic>>(allocationPools, (value) => value.toMap()),
      'cidr': cidr,
      'description': description,
      'dhcpEnabled': ?dhcpEnabled,
      'dnsNameservers': dnsNameservers,
      'dnsPublishFixedIp': ?dnsPublishFixedIp,
      'enableDhcp': enableDhcp,
      'gatewayIp': gatewayIp,
      'hostRoutes': pulumi.Input.encodeList<GetSubnetHostRoute, Map<String, dynamic>>(hostRoutes, (value) => value.toMap()),
      'id': id,
      'ipVersion': ipVersion,
      'ipv6AddressMode': ipv6AddressMode,
      'ipv6RaMode': ipv6RaMode,
      'name': name,
      'networkId': networkId,
      'region': region,
      'segmentId': segmentId,
      'serviceTypes': serviceTypes,
      'subnetId': subnetId,
      'subnetpoolId': subnetpoolId,
      'tags': ?tags,
      'tenantId': tenantId,
    };
  }

  factory GetSubnetResult.fromMap(Map<String, dynamic> map) {
    return GetSubnetResult(
      allTags: (map['allTags'] as List).cast<String>(),
      allocationPools: pulumi.Input.decodeList<GetSubnetAllocationPool>(map['allocationPools'], (value) => GetSubnetAllocationPool.fromMap((value as Map).cast<String, dynamic>())),
      cidr: map['cidr'] as String,
      description: map['description'] as String,
      dhcpEnabled: map['dhcpEnabled'] == null ? null : map['dhcpEnabled'] as bool,
      dnsNameservers: (map['dnsNameservers'] as List).cast<String>(),
      dnsPublishFixedIp: map['dnsPublishFixedIp'] == null ? null : map['dnsPublishFixedIp'] as bool,
      enableDhcp: map['enableDhcp'] as bool,
      gatewayIp: map['gatewayIp'] as String,
      hostRoutes: pulumi.Input.decodeList<GetSubnetHostRoute>(map['hostRoutes'], (value) => GetSubnetHostRoute.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipVersion: map['ipVersion'] as int,
      ipv6AddressMode: map['ipv6AddressMode'] as String,
      ipv6RaMode: map['ipv6RaMode'] as String,
      name: map['name'] as String,
      networkId: map['networkId'] as String,
      region: map['region'] as String,
      segmentId: map['segmentId'] as String,
      serviceTypes: (map['serviceTypes'] as List).cast<String>(),
      subnetId: map['subnetId'] as String,
      subnetpoolId: map['subnetpoolId'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      tenantId: map['tenantId'] as String,
    );
  }
}

