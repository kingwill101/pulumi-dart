// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpc_attachment_filter.dart';

/// Result data returned by getVpcAttachment.
class GetVpcAttachmentResult {
  /// Whether Appliance Mode support is enabled.
  final String? applianceModeSupport;
  /// ARN of the attachment.
  final String? arn;
  /// Whether DNS support is enabled.
  final String? dnsSupport;
  final List<GetVpcAttachmentFilter>? filters;
  /// EC2 Transit Gateway VPC Attachment identifier
  final String? id;
  /// Whether IPv6 support is enabled.
  final String? ipv6Support;
  final String? region;
  /// Whether Security Group Referencing Support is enabled.
  final String? securityGroupReferencingSupport;
  /// Identifiers of EC2 Subnets.
  final List<String>? subnetIds;
  /// Key-value tags for the EC2 Transit Gateway VPC Attachment
  final Map<String, String>? tags;
  /// EC2 Transit Gateway identifier
  final String? transitGatewayId;
  /// Identifier of EC2 VPC.
  final String? vpcId;
  /// Identifier of the AWS account that owns the EC2 VPC.
  final String? vpcOwnerId;

  /// Creates a new [GetVpcAttachmentResult].
  /// [applianceModeSupport] Whether Appliance Mode support is enabled.
  /// [arn] ARN of the attachment.
  /// [dnsSupport] Whether DNS support is enabled.
  /// [filters] Optional.
  /// [id] EC2 Transit Gateway VPC Attachment identifier
  /// [ipv6Support] Whether IPv6 support is enabled.
  /// [region] Optional.
  /// [securityGroupReferencingSupport] Whether Security Group Referencing Support is enabled.
  /// [subnetIds] Identifiers of EC2 Subnets.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPC Attachment
  /// [transitGatewayId] EC2 Transit Gateway identifier
  /// [vpcId] Identifier of EC2 VPC.
  /// [vpcOwnerId] Identifier of the AWS account that owns the EC2 VPC.
  const GetVpcAttachmentResult({
    this.applianceModeSupport,
    this.arn,
    this.dnsSupport,
    this.filters,
    this.id,
    this.ipv6Support,
    this.region,
    this.securityGroupReferencingSupport,
    this.subnetIds,
    this.tags,
    this.transitGatewayId,
    this.vpcId,
    this.vpcOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applianceModeSupport': ?applianceModeSupport,
      'arn': ?arn,
      'dnsSupport': ?dnsSupport,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpcAttachmentFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'ipv6Support': ?ipv6Support,
      'region': ?region,
      'securityGroupReferencingSupport': ?securityGroupReferencingSupport,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'vpcId': ?vpcId,
      'vpcOwnerId': ?vpcOwnerId,
    };
  }

  factory GetVpcAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetVpcAttachmentResult(
      applianceModeSupport: (() { final guardedValue = map['applianceModeSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dnsSupport: (() { final guardedValue = map['dnsSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpcAttachmentFilter>(guardedValue, (value) => GetVpcAttachmentFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipv6Support: (() { final guardedValue = map['ipv6Support']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupReferencingSupport: (() { final guardedValue = map['securityGroupReferencingSupport']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpcOwnerId: (() { final guardedValue = map['vpcOwnerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
