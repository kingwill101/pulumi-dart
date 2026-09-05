// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_cidr_block_association.dart';
import 'get_vpc_filter.dart';
import 'get_vpc_ipv6_cidr_block_association.dart';

/// Result data returned by getVpc.
class GetVpcResult {
  /// ARN of VPC.
  final String? arn;
  /// CIDR block for the association.
  final String? cidrBlock;
  /// Information about the IPv4 CIDR blocks associated with the VPC. See `cidrBlockAssociations` Block below.
  final List<GetVpcCidrBlockAssociation>? cidrBlockAssociations;
  final bool? default_;
  final String? dhcpOptionsId;
  /// Whether the VPC has DNS hostname support.
  final bool? enableDnsHostnames;
  /// Whether the VPC has DNS support.
  final bool? enableDnsSupport;
  /// Whether Network Address Usage metrics are enabled for your VPC.
  final bool? enableNetworkAddressUsageMetrics;
  final List<GetVpcFilter>? filters;
  final String? id;
  /// Allowed tenancy of instances launched into the selected VPC. May be any of `"default"`, `"dedicated"`, or `"host"`.
  final String? instanceTenancy;
  /// (**Deprecated** use `ipv6CidrBlockAssociations` instead) Association ID for the IPv6 CIDR block.
  final String? ipv6AssociationId;
  /// IPv6 CIDR block for the association.
  final String? ipv6CidrBlock;
  /// Information about the IPv6 CIDR blocks associated with the VPC. See `ipv6CidrBlockAssociations` Block below.
  final List<GetVpcIpv6CidrBlockAssociation>? ipv6CidrBlockAssociations;
  /// ID of the main route table associated with this VPC.
  final String? mainRouteTableId;
  /// ID of the AWS account that owns the VPC.
  final String? ownerId;
  final String? region;
  /// State of the association.
  final String? state;
  final Map<String, String>? tags;

  /// Creates a new [GetVpcResult].
  /// [arn] ARN of VPC.
  /// [cidrBlock] CIDR block for the association.
  /// [cidrBlockAssociations] Information about the IPv4 CIDR blocks associated with the VPC. See `cidrBlockAssociations` Block below.
  /// [default_] Optional.
  /// [dhcpOptionsId] Optional.
  /// [enableDnsHostnames] Whether the VPC has DNS hostname support.
  /// [enableDnsSupport] Whether the VPC has DNS support.
  /// [enableNetworkAddressUsageMetrics] Whether Network Address Usage metrics are enabled for your VPC.
  /// [filters] Optional.
  /// [id] Optional.
  /// [instanceTenancy] Allowed tenancy of instances launched into the selected VPC. May be any of `"default"`, `"dedicated"`, or `"host"`.
  /// [ipv6AssociationId] (**Deprecated** use `ipv6CidrBlockAssociations` instead) Association ID for the IPv6 CIDR block.
  /// [ipv6CidrBlock] IPv6 CIDR block for the association.
  /// [ipv6CidrBlockAssociations] Information about the IPv6 CIDR blocks associated with the VPC. See `ipv6CidrBlockAssociations` Block below.
  /// [mainRouteTableId] ID of the main route table associated with this VPC.
  /// [ownerId] ID of the AWS account that owns the VPC.
  /// [region] Optional.
  /// [state] State of the association.
  /// [tags] Optional.
  const GetVpcResult({
    this.arn,
    this.cidrBlock,
    this.cidrBlockAssociations,
    this.default_,
    this.dhcpOptionsId,
    this.enableDnsHostnames,
    this.enableDnsSupport,
    this.enableNetworkAddressUsageMetrics,
    this.filters,
    this.id,
    this.instanceTenancy,
    this.ipv6AssociationId,
    this.ipv6CidrBlock,
    this.ipv6CidrBlockAssociations,
    this.mainRouteTableId,
    this.ownerId,
    this.region,
    this.state,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'cidrBlock': ?cidrBlock,
      'cidrBlockAssociations': ?(() { final guardedValue = cidrBlockAssociations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcCidrBlockAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'default': ?default_,
      'dhcpOptionsId': ?dhcpOptionsId,
      'enableDnsHostnames': ?enableDnsHostnames,
      'enableDnsSupport': ?enableDnsSupport,
      'enableNetworkAddressUsageMetrics': ?enableNetworkAddressUsageMetrics,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'instanceTenancy': ?instanceTenancy,
      'ipv6AssociationId': ?ipv6AssociationId,
      'ipv6CidrBlock': ?ipv6CidrBlock,
      'ipv6CidrBlockAssociations': ?(() { final guardedValue = ipv6CidrBlockAssociations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcIpv6CidrBlockAssociation, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'mainRouteTableId': ?mainRouteTableId,
      'ownerId': ?ownerId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
    };
  }

  factory GetVpcResult.fromMap(Map<String, dynamic> map) {
    return GetVpcResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlock: (() { final guardedValue = map['cidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cidrBlockAssociations: (() { final guardedValue = map['cidrBlockAssociations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcCidrBlockAssociation>(guardedValue, (value) => GetVpcCidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      default_: (() { final guardedValue = map['default']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dhcpOptionsId: (() { final guardedValue = map['dhcpOptionsId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enableDnsHostnames: (() { final guardedValue = map['enableDnsHostnames']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableDnsSupport: (() { final guardedValue = map['enableDnsSupport']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      enableNetworkAddressUsageMetrics: (() { final guardedValue = map['enableNetworkAddressUsageMetrics']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcFilter>(guardedValue, (value) => GetVpcFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      instanceTenancy: (() { final guardedValue = map['instanceTenancy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6AssociationId: (() { final guardedValue = map['ipv6AssociationId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CidrBlock: (() { final guardedValue = map['ipv6CidrBlock']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6CidrBlockAssociations: (() { final guardedValue = map['ipv6CidrBlockAssociations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcIpv6CidrBlockAssociation>(guardedValue, (value) => GetVpcIpv6CidrBlockAssociation.fromMap((value as Map).cast<String, dynamic>())); })(),
      mainRouteTableId: (() { final guardedValue = map['mainRouteTableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
