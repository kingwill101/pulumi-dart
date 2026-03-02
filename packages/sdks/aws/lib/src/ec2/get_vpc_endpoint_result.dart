// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_dns_entry.dart';
import 'get_vpc_endpoint_dns_option.dart';
import 'get_vpc_endpoint_filter.dart';

/// Result data returned by getVpcEndpoint.
class GetVpcEndpointResult {
  /// ARN of the VPC endpoint.
  final String arn;
  /// List of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final List<String> cidrBlocks;
  /// DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS entry blocks are documented below.
  final List<GetVpcEndpointDnsEntry> dnsEntries;
  /// DNS options for the VPC Endpoint. DNS options blocks are documented below.
  final List<GetVpcEndpointDnsOption> dnsOptions;
  final List<GetVpcEndpointFilter>? filters;
  final String id;
  final String ipAddressType;
  /// One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  final List<String> networkInterfaceIds;
  /// ID of the AWS account that owns the VPC endpoint.
  final String ownerId;
  /// Policy document associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  final String policy;
  /// Prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final String prefixListId;
  /// Whether or not the VPC is associated with a private hosted zone - `true` or `false`. Applicable for endpoints of type `Interface`.
  final bool privateDnsEnabled;
  final String region;
  /// Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  final bool requesterManaged;
  /// One or more route tables associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  final List<String> routeTableIds;
  /// One or more security groups associated with the network interfaces. Applicable for endpoints of type `Interface`.
  final List<String> securityGroupIds;
  final String serviceName;
  final String serviceRegion;
  final String state;
  /// One or more subnets in which the VPC Endpoint is located. Applicable for endpoints of type `Interface`.
  final List<String> subnetIds;
  final Map<String, String> tags;
  final String vpcEndpointType;
  final String vpcId;

  /// Creates a new [GetVpcEndpointResult].
  /// [arn] ARN of the VPC endpoint.
  /// [cidrBlocks] List of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [dnsEntries] DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS entry blocks are documented below.
  /// [dnsOptions] DNS options for the VPC Endpoint. DNS options blocks are documented below.
  /// [filters] Optional.
  /// [id] Required.
  /// [ipAddressType] Required.
  /// [networkInterfaceIds] One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  /// [ownerId] ID of the AWS account that owns the VPC endpoint.
  /// [policy] Policy document associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  /// [prefixListId] Prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [privateDnsEnabled] Whether or not the VPC is associated with a private hosted zone - `true` or `false`. Applicable for endpoints of type `Interface`.
  /// [region] Required.
  /// [requesterManaged] Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  /// [routeTableIds] One or more route tables associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  /// [securityGroupIds] One or more security groups associated with the network interfaces. Applicable for endpoints of type `Interface`.
  /// [serviceName] Required.
  /// [serviceRegion] Required.
  /// [state] Required.
  /// [subnetIds] One or more subnets in which the VPC Endpoint is located. Applicable for endpoints of type `Interface`.
  /// [tags] Required.
  /// [vpcEndpointType] Required.
  /// [vpcId] Required.
  GetVpcEndpointResult({
    required this.arn,
    required this.cidrBlocks,
    required this.dnsEntries,
    required this.dnsOptions,
    this.filters,
    required this.id,
    required this.ipAddressType,
    required this.networkInterfaceIds,
    required this.ownerId,
    required this.policy,
    required this.prefixListId,
    required this.privateDnsEnabled,
    required this.region,
    required this.requesterManaged,
    required this.routeTableIds,
    required this.securityGroupIds,
    required this.serviceName,
    required this.serviceRegion,
    required this.state,
    required this.subnetIds,
    required this.tags,
    required this.vpcEndpointType,
    required this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cidrBlocks': cidrBlocks,
      'dnsEntries': pulumi.Input.encodeList<GetVpcEndpointDnsEntry, Map<String, dynamic>>(dnsEntries, (value) => value.toMap()),
      'dnsOptions': pulumi.Input.encodeList<GetVpcEndpointDnsOption, Map<String, dynamic>>(dnsOptions, (value) => value.toMap()),
      'filters': ?filters == null ? null : pulumi.Input.encodeList<GetVpcEndpointFilter, Map<String, dynamic>>(filters!, (value) => value.toMap()),
      'id': id,
      'ipAddressType': ipAddressType,
      'networkInterfaceIds': networkInterfaceIds,
      'ownerId': ownerId,
      'policy': policy,
      'prefixListId': prefixListId,
      'privateDnsEnabled': privateDnsEnabled,
      'region': region,
      'requesterManaged': requesterManaged,
      'routeTableIds': routeTableIds,
      'securityGroupIds': securityGroupIds,
      'serviceName': serviceName,
      'serviceRegion': serviceRegion,
      'state': state,
      'subnetIds': subnetIds,
      'tags': tags,
      'vpcEndpointType': vpcEndpointType,
      'vpcId': vpcId,
    };
  }

  factory GetVpcEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointResult(
      arn: map['arn'] as String,
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      dnsEntries: pulumi.Input.decodeList<GetVpcEndpointDnsEntry>(map['dnsEntries']!, (value) => GetVpcEndpointDnsEntry.fromMap((value as Map).cast<String, dynamic>())),
      dnsOptions: pulumi.Input.decodeList<GetVpcEndpointDnsOption>(map['dnsOptions']!, (value) => GetVpcEndpointDnsOption.fromMap((value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null ? null : pulumi.Input.decodeList<GetVpcEndpointFilter>(map['filters']!, (value) => GetVpcEndpointFilter.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipAddressType: map['ipAddressType'] as String,
      networkInterfaceIds: (map['networkInterfaceIds'] as List).cast<String>(),
      ownerId: map['ownerId'] as String,
      policy: map['policy'] as String,
      prefixListId: map['prefixListId'] as String,
      privateDnsEnabled: map['privateDnsEnabled'] as bool,
      region: map['region'] as String,
      requesterManaged: map['requesterManaged'] as bool,
      routeTableIds: (map['routeTableIds'] as List).cast<String>(),
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      serviceName: map['serviceName'] as String,
      serviceRegion: map['serviceRegion'] as String,
      state: map['state'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcEndpointType: map['vpcEndpointType'] as String,
      vpcId: map['vpcId'] as String,
    );
  }
}

