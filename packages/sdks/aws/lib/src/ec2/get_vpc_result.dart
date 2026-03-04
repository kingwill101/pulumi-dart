// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_cidr_block_association.dart';
import 'get_vpc_filter.dart';

/// Result data returned by getVpc.
class GetVpcResult {
  /// ARN of VPC
  final String arn;

  /// CIDR block for the association.
  final String cidrBlock;
  final List<GetVpcCidrBlockAssociation> cidrBlockAssociations;
  final bool default_;
  final String dhcpOptionsId;

  /// Whether or not the VPC has DNS hostname support
  final bool enableDnsHostnames;

  /// Whether or not the VPC has DNS support
  final bool enableDnsSupport;

  /// Whether Network Address Usage metrics are enabled for your VPC
  final bool enableNetworkAddressUsageMetrics;
  final List<GetVpcFilter>? filters;
  final String id;

  /// Allowed tenancy of instances launched into the
  /// selected VPC. May be any of `"default"`, `"dedicated"`, or `"host"`.
  final String instanceTenancy;

  /// Association ID for the IPv6 CIDR block.
  final String ipv6AssociationId;

  /// IPv6 CIDR block.
  final String ipv6CidrBlock;

  /// ID of the main route table associated with this VPC.
  final String mainRouteTableId;

  /// ID of the AWS account that owns the VPC.
  final String ownerId;
  final String region;

  /// State of the association.
  final String state;
  final Map<String, String> tags;

  /// Creates a new [GetVpcResult].
  /// [arn] ARN of VPC
  /// [cidrBlock] CIDR block for the association.
  /// [cidrBlockAssociations] Required.
  /// [default_] Required.
  /// [dhcpOptionsId] Required.
  /// [enableDnsHostnames] Whether or not the VPC has DNS hostname support
  /// [enableDnsSupport] Whether or not the VPC has DNS support
  /// [enableNetworkAddressUsageMetrics] Whether Network Address Usage metrics are enabled for your VPC
  /// [filters] Optional.
  /// [id] Required.
  /// [instanceTenancy] Allowed tenancy of instances launched into the
  /// [ipv6AssociationId] Association ID for the IPv6 CIDR block.
  /// [ipv6CidrBlock] IPv6 CIDR block.
  /// [mainRouteTableId] ID of the main route table associated with this VPC.
  /// [ownerId] ID of the AWS account that owns the VPC.
  /// [region] Required.
  /// [state] State of the association.
  /// [tags] Required.
  GetVpcResult({
    required this.arn,
    required this.cidrBlock,
    required this.cidrBlockAssociations,
    required this.default_,
    required this.dhcpOptionsId,
    required this.enableDnsHostnames,
    required this.enableDnsSupport,
    required this.enableNetworkAddressUsageMetrics,
    this.filters,
    required this.id,
    required this.instanceTenancy,
    required this.ipv6AssociationId,
    required this.ipv6CidrBlock,
    required this.mainRouteTableId,
    required this.ownerId,
    required this.region,
    required this.state,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'cidrBlock': cidrBlock,
      'cidrBlockAssociations':
          pulumi.Input.encodeList<
            GetVpcCidrBlockAssociation,
            Map<String, dynamic>
          >(cidrBlockAssociations, (value) => value.toMap()),
      'default': default_,
      'dhcpOptionsId': dhcpOptionsId,
      'enableDnsHostnames': enableDnsHostnames,
      'enableDnsSupport': enableDnsSupport,
      'enableNetworkAddressUsageMetrics': enableNetworkAddressUsageMetrics,
      'filters': ?(() {
        final guardedValue = filters;
        if (guardedValue == null) return null;
        return pulumi.Input.encodeList<GetVpcFilter, Map<String, dynamic>>(
          guardedValue,
          (value) => value.toMap(),
        );
      })(),
      'id': id,
      'instanceTenancy': instanceTenancy,
      'ipv6AssociationId': ipv6AssociationId,
      'ipv6CidrBlock': ipv6CidrBlock,
      'mainRouteTableId': mainRouteTableId,
      'ownerId': ownerId,
      'region': region,
      'state': state,
      'tags': tags,
    };
  }

  factory GetVpcResult.fromMap(Map<String, dynamic> map) {
    return GetVpcResult(
      arn: map['arn'] as String,
      cidrBlock: map['cidrBlock'] as String,
      cidrBlockAssociations:
          pulumi.Input.decodeList<GetVpcCidrBlockAssociation>(
            map['cidrBlockAssociations']!,
            (value) => GetVpcCidrBlockAssociation.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      default_: map['default'] as bool,
      dhcpOptionsId: map['dhcpOptionsId'] as String,
      enableDnsHostnames: map['enableDnsHostnames'] as bool,
      enableDnsSupport: map['enableDnsSupport'] as bool,
      enableNetworkAddressUsageMetrics:
          map['enableNetworkAddressUsageMetrics'] as bool,
      filters: (() {
        final guardedValue = map['filters'];
        if (guardedValue == null) return null;
        return pulumi.Input.decodeList<GetVpcFilter>(
          guardedValue,
          (value) =>
              GetVpcFilter.fromMap((value as Map).cast<String, dynamic>()),
        );
      })(),
      id: map['id'] as String,
      instanceTenancy: map['instanceTenancy'] as String,
      ipv6AssociationId: map['ipv6AssociationId'] as String,
      ipv6CidrBlock: map['ipv6CidrBlock'] as String,
      mainRouteTableId: map['mainRouteTableId'] as String,
      ownerId: map['ownerId'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
