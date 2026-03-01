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
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetDirectConnectGatewayAttachmentFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'region': region,
      'tags': tags,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory GetDirectConnectGatewayAttachmentResult.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDirectConnectGatewayAttachmentResult(
      arn: map['arn'] as String,
      dxGatewayId: map['dxGatewayId'] == null
          ? null
          : map['dxGatewayId'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetDirectConnectGatewayAttachmentFilter>(
              map['filters'],
              (value) => GetDirectConnectGatewayAttachmentFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
    );
  }
}
