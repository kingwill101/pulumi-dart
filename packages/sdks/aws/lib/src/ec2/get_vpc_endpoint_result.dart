// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_endpoint_dns_entry.dart';
import 'get_vpc_endpoint_dns_option.dart';
import 'get_vpc_endpoint_filter.dart';

/// Result data returned by getVpcEndpoint.
class GetVpcEndpointResult {
  /// ARN of the VPC endpoint.
  final String? arn;
  /// List of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final List<String>? cidrBlocks;
  /// DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS entry blocks are documented below.
  final List<GetVpcEndpointDnsEntry>? dnsEntries;
  /// DNS options for the VPC Endpoint. DNS options blocks are documented below.
  final List<GetVpcEndpointDnsOption>? dnsOptions;
  final List<GetVpcEndpointFilter>? filters;
  final String? id;
  final String? ipAddressType;
  /// One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  final List<String>? networkInterfaceIds;
  /// ID of the AWS account that owns the VPC endpoint.
  final String? ownerId;
  /// Policy document associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  final String? policy;
  /// Prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  final String? prefixListId;
  /// Whether or not the VPC is associated with a private hosted zone - `true` or `false`. Applicable for endpoints of type `Interface`.
  final bool? privateDnsEnabled;
  final String? region;
  /// Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  final bool? requesterManaged;
  /// One or more route tables associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  final List<String>? routeTableIds;
  /// One or more security groups associated with the network interfaces. Applicable for endpoints of type `Interface`.
  final List<String>? securityGroupIds;
  final String? serviceName;
  final String? serviceRegion;
  final String? state;
  /// One or more subnets in which the VPC Endpoint is located. Applicable for endpoints of type `Interface`.
  final List<String>? subnetIds;
  final Map<String, String>? tags;
  final String? vpcEndpointType;
  final String? vpcId;

  /// Creates a new [GetVpcEndpointResult].
  /// [arn] ARN of the VPC endpoint.
  /// [cidrBlocks] List of CIDR blocks for the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [dnsEntries] DNS entries for the VPC Endpoint. Applicable for endpoints of type `Interface`. DNS entry blocks are documented below.
  /// [dnsOptions] DNS options for the VPC Endpoint. DNS options blocks are documented below.
  /// [filters] Optional.
  /// [id] Optional.
  /// [ipAddressType] Optional.
  /// [networkInterfaceIds] One or more network interfaces for the VPC Endpoint. Applicable for endpoints of type `Interface`.
  /// [ownerId] ID of the AWS account that owns the VPC endpoint.
  /// [policy] Policy document associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  /// [prefixListId] Prefix list ID of the exposed AWS service. Applicable for endpoints of type `Gateway`.
  /// [privateDnsEnabled] Whether or not the VPC is associated with a private hosted zone - `true` or `false`. Applicable for endpoints of type `Interface`.
  /// [region] Optional.
  /// [requesterManaged] Whether or not the VPC Endpoint is being managed by its service - `true` or `false`.
  /// [routeTableIds] One or more route tables associated with the VPC Endpoint. Applicable for endpoints of type `Gateway`.
  /// [securityGroupIds] One or more security groups associated with the network interfaces. Applicable for endpoints of type `Interface`.
  /// [serviceName] Optional.
  /// [serviceRegion] Optional.
  /// [state] Optional.
  /// [subnetIds] One or more subnets in which the VPC Endpoint is located. Applicable for endpoints of type `Interface`.
  /// [tags] Optional.
  /// [vpcEndpointType] Optional.
  /// [vpcId] Optional.
  const GetVpcEndpointResult({
    this.arn,
    this.cidrBlocks,
    this.dnsEntries,
    this.dnsOptions,
    this.filters,
    this.id,
    this.ipAddressType,
    this.networkInterfaceIds,
    this.ownerId,
    this.policy,
    this.prefixListId,
    this.privateDnsEnabled,
    this.region,
    this.requesterManaged,
    this.routeTableIds,
    this.securityGroupIds,
    this.serviceName,
    this.serviceRegion,
    this.state,
    this.subnetIds,
    this.tags,
    this.vpcEndpointType,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cidrBlocks': ?cidrBlocks,
      'dnsEntries': ?(() { final guardedValue = dnsEntries; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcEndpointDnsEntry, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsOptions': ?(() { final guardedValue = dnsOptions; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcEndpointDnsOption, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcEndpointFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipAddressType': ?ipAddressType,
      'networkInterfaceIds': ?networkInterfaceIds,
      'ownerId': ?ownerId,
      'policy': ?policy,
      'prefixListId': ?prefixListId,
      'privateDnsEnabled': ?privateDnsEnabled,
      'region': ?region,
      'requesterManaged': ?requesterManaged,
      'routeTableIds': ?routeTableIds,
      'securityGroupIds': ?securityGroupIds,
      'serviceName': ?serviceName,
      'serviceRegion': ?serviceRegion,
      'state': ?state,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'vpcEndpointType': ?vpcEndpointType,
      'vpcId': ?vpcId,
    };
  }

  factory GetVpcEndpointResult.fromMap(Map<String, dynamic> map) {
    return GetVpcEndpointResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlocks: (() { final guardedValue = map['cidrBlocks']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      dnsEntries: (() { final guardedValue = map['dnsEntries']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcEndpointDnsEntry>(guardedValue, (value) => GetVpcEndpointDnsEntry.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsOptions: (() { final guardedValue = map['dnsOptions']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcEndpointDnsOption>(guardedValue, (value) => GetVpcEndpointDnsOption.fromMap((value as Map).cast<String, dynamic>())); })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcEndpointFilter>(guardedValue, (value) => GetVpcEndpointFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressType: (() { final guardedValue = map['ipAddressType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      prefixListId: (() { final guardedValue = map['prefixListId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      privateDnsEnabled: (() { final guardedValue = map['privateDnsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      requesterManaged: (() { final guardedValue = map['requesterManaged']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      routeTableIds: (() { final guardedValue = map['routeTableIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      serviceName: (() { final guardedValue = map['serviceName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRegion: (() { final guardedValue = map['serviceRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      vpcEndpointType: (() { final guardedValue = map['vpcEndpointType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
