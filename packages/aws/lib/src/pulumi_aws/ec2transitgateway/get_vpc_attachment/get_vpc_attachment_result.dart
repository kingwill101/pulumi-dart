// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpc_attachment_filter/get_vpc_attachment_filter.dart';

/// Result data returned by getVpcAttachment.
class GetVpcAttachmentResult {
  /// Whether Appliance Mode support is enabled.
  final String applianceModeSupport;

  /// ARN of the attachment.
  final String arn;

  /// Whether DNS support is enabled.
  final String dnsSupport;
  final List<GetVpcAttachmentFilter>? filters;

  /// EC2 Transit Gateway VPC Attachment identifier
  final String id;

  /// Whether IPv6 support is enabled.
  final String ipv6Support;
  final String region;

  /// Whether Security Group Referencing Support is enabled.
  final String securityGroupReferencingSupport;

  /// Identifiers of EC2 Subnets.
  final List<String> subnetIds;

  /// Key-value tags for the EC2 Transit Gateway VPC Attachment
  final Map<String, String> tags;

  /// EC2 Transit Gateway identifier
  final String transitGatewayId;

  /// Identifier of EC2 VPC.
  final String vpcId;

  /// Identifier of the AWS account that owns the EC2 VPC.
  final String vpcOwnerId;

  GetVpcAttachmentResult({
    required this.applianceModeSupport,
    required this.arn,
    required this.dnsSupport,
    this.filters,
    required this.id,
    required this.ipv6Support,
    required this.region,
    required this.securityGroupReferencingSupport,
    required this.subnetIds,
    required this.tags,
    required this.transitGatewayId,
    required this.vpcId,
    required this.vpcOwnerId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applianceModeSupport'] = applianceModeSupport;
    map['arn'] = arn;
    map['dnsSupport'] = dnsSupport;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          Input.encodeList<GetVpcAttachmentFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['ipv6Support'] = ipv6Support;
    map['region'] = region;
    map['securityGroupReferencingSupport'] = securityGroupReferencingSupport;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    map['transitGatewayId'] = transitGatewayId;
    map['vpcId'] = vpcId;
    map['vpcOwnerId'] = vpcOwnerId;
    return map;
  }

  factory GetVpcAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentResult(
      applianceModeSupport: map['applianceModeSupport'] as String,
      arn: map['arn'] as String,
      dnsSupport: map['dnsSupport'] as String,
      filters: map['filters'] == null
          ? null
          : Input.decodeList<GetVpcAttachmentFilter>(
              map['filters'],
              (value) => GetVpcAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ipv6Support: map['ipv6Support'] as String,
      region: map['region'] as String,
      securityGroupReferencingSupport:
          map['securityGroupReferencingSupport'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
      vpcId: map['vpcId'] as String,
      vpcOwnerId: map['vpcOwnerId'] as String,
    );
  }
}
