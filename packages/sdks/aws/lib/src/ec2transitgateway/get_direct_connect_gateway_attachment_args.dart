// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_direct_connect_gateway_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_direct_connect_gateway_attachment_get_direct_connect_gateway_attachment_args_doc}
/// Arguments for getDirectConnectGatewayAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_direct_connect_gateway_attachment_get_direct_connect_gateway_attachment_args_doc}
class GetDirectConnectGatewayAttachmentArgs {
  /// Identifier of the Direct Connect Gateway.
  final pulumi.Input<String>? dxGatewayId;
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetDirectConnectGatewayAttachmentFilter>>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway Direct Connect Gateway Attachment.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of the EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Creates a new [GetDirectConnectGatewayAttachmentArgs].
  /// [dxGatewayId] Identifier of the Direct Connect Gateway.
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway Direct Connect Gateway Attachment.
  /// [transitGatewayId] Identifier of the EC2 Transit Gateway.
  GetDirectConnectGatewayAttachmentArgs({
    this.dxGatewayId,
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dxGatewayId': ?dxGatewayId,
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetDirectConnectGatewayAttachmentFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetDirectConnectGatewayAttachmentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory GetDirectConnectGatewayAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetDirectConnectGatewayAttachmentArgs(
      dxGatewayId: map['dxGatewayId'] == null ? null : (map['dxGatewayId'] as String).input(),
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetDirectConnectGatewayAttachmentFilter>(map['filters'], (value) => GetDirectConnectGatewayAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
    );
  }
}

