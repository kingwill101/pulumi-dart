// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_endpoint_dns_entry/get_vpc_endpoint_dns_entry.dart';
import '../get_vpc_endpoint_dns_option/get_vpc_endpoint_dns_option.dart';
import '../get_vpc_endpoint_filter/get_vpc_endpoint_filter.dart';

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
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['cidrBlocks'] = cidrBlocks;
    map['dnsEntries'] =
        Input.encodeList<GetVpcEndpointDnsEntry, Map<String, dynamic>>(
            dnsEntries, (value) => value.toMap());
    map['dnsOptions'] =
        Input.encodeList<GetVpcEndpointDnsOption, Map<String, dynamic>>(
            dnsOptions, (value) => value.toMap());
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetVpcEndpointFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipAddressType'] = ipAddressType;
    map['networkInterfaceIds'] = networkInterfaceIds;
    map['ownerId'] = ownerId;
    map['policy'] = policy;
    map['prefixListId'] = prefixListId;
    map['privateDnsEnabled'] = privateDnsEnabled;
    map['region'] = region;
    map['requesterManaged'] = requesterManaged;
    map['routeTableIds'] = routeTableIds;
    map['securityGroupIds'] = securityGroupIds;
    map['serviceName'] = serviceName;
    map['serviceRegion'] = serviceRegion;
    map['state'] = state;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    map['vpcEndpointType'] = vpcEndpointType;
    map['vpcId'] = vpcId;
    return map;
  }

  factory GetVpcEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointResult(
      arn: map['arn'] as String,
      cidrBlocks: (map['cidrBlocks'] as List).cast<String>(),
      dnsEntries: Input.decodeList<GetVpcEndpointDnsEntry>(
          map['dnsEntries'],
          (value) => GetVpcEndpointDnsEntry.fromMap(
              (value as Map).cast<String, dynamic>())),
      dnsOptions: Input.decodeList<GetVpcEndpointDnsOption>(
          map['dnsOptions'],
          (value) => GetVpcEndpointDnsOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetVpcEndpointFilter>(
              map['filters'],
              (value) => GetVpcEndpointFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
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
