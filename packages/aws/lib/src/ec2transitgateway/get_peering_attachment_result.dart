// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_attachment_filter.dart';

/// Result data returned by getPeeringAttachment.
class GetPeeringAttachmentResult {
  /// ARN of the attachment.
  final String arn;
  final List<GetPeeringAttachmentFilter>? filters;
  final String id;

  /// Identifier of the peer AWS account.
  final String peerAccountId;

  /// Identifier of the peer AWS region.
  final String peerRegion;

  /// Identifier of the peer EC2 Transit Gateway.
  final String peerTransitGatewayId;
  final String region;
  final String state;
  final Map<String, String> tags;

  /// Identifier of the local EC2 Transit Gateway.
  final String transitGatewayId;

  /// Creates a new [GetPeeringAttachmentResult].
  /// [arn] ARN of the attachment.
  /// [filters] Optional.
  /// [id] Required.
  /// [peerAccountId] Identifier of the peer AWS account.
  /// [peerRegion] Identifier of the peer AWS region.
  /// [peerTransitGatewayId] Identifier of the peer EC2 Transit Gateway.
  /// [region] Required.
  /// [state] Required.
  /// [tags] Required.
  /// [transitGatewayId] Identifier of the local EC2 Transit Gateway.
  GetPeeringAttachmentResult({
    required this.arn,
    this.filters,
    required this.id,
    required this.peerAccountId,
    required this.peerRegion,
    required this.peerTransitGatewayId,
    required this.region,
    required this.state,
    required this.tags,
    required this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = pulumi.Input.encodeList<GetPeeringAttachmentFilter,
          Map<String, dynamic>>(filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['peerAccountId'] = peerAccountId;
    map['peerRegion'] = peerRegion;
    map['peerTransitGatewayId'] = peerTransitGatewayId;
    map['region'] = region;
    map['state'] = state;
    map['tags'] = tags;
    map['transitGatewayId'] = transitGatewayId;
    return map;
  }

  factory GetPeeringAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentResult(
      arn: map['arn'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPeeringAttachmentFilter>(
              map['filters'],
              (value) => GetPeeringAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      peerAccountId: map['peerAccountId'] as String,
      peerRegion: map['peerRegion'] as String,
      peerTransitGatewayId: map['peerTransitGatewayId'] as String,
      region: map['region'] as String,
      state: map['state'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] as String,
    );
  }
}
