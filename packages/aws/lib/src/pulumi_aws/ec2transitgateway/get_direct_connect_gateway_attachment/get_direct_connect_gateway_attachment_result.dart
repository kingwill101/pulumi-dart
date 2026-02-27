// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_direct_connect_gateway_attachment_filter/get_direct_connect_gateway_attachment_filter.dart';

/// Result data returned by getDirectConnectGatewayAttachment.
class GetDirectConnectGatewayAttachmentResult {
  /// ARN of the attachment.
  final String arn;
  final String? dxGatewayId;
  final List<GetDirectConnectGatewayAttachmentFilter>? filters;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  /// Key-value tags for the EC2 Transit Gateway Attachment.
  final Map<String, String> tags;
  final String? transitGatewayId;

  GetDirectConnectGatewayAttachmentResult({
    required this.arn,
    this.dxGatewayId,
    this.filters,
    required this.id,
    required this.region,
    required this.tags,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final dxGatewayIdValue = dxGatewayId;
    if (dxGatewayIdValue != null) {
      map['dxGatewayId'] = dxGatewayIdValue;
    }
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<
          GetDirectConnectGatewayAttachmentFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    map['tags'] = tags;
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    return map;
  }

  factory GetDirectConnectGatewayAttachmentResult.fromMap(
      Map<String, dynamic> map) {
    return GetDirectConnectGatewayAttachmentResult(
      arn: map['arn'] as String,
      dxGatewayId:
          map['dxGatewayId'] == null ? null : map['dxGatewayId'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetDirectConnectGatewayAttachmentFilter>(
              map['filters'],
              (value) => GetDirectConnectGatewayAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
    );
  }
}
