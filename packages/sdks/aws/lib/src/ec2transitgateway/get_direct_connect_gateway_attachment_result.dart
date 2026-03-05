// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_direct_connect_gateway_attachment_filter.dart';

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

  /// Creates a new [GetDirectConnectGatewayAttachmentResult].
  /// [arn] ARN of the attachment.
  /// [dxGatewayId] Optional.
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [tags] Key-value tags for the EC2 Transit Gateway Attachment.
  /// [transitGatewayId] Optional.
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
    return <String, dynamic>{
      'arn': arn,
      'dxGatewayId': ?dxGatewayId,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDirectConnectGatewayAttachmentFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'tags': tags,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory GetDirectConnectGatewayAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetDirectConnectGatewayAttachmentResult(
      arn: map['arn'] as String,
      dxGatewayId: (() { final guardedValue = map['dxGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDirectConnectGatewayAttachmentFilter>(guardedValue, (value) => GetDirectConnectGatewayAttachmentFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

