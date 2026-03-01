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
    return <String, dynamic>{
      'arn': arn,
      'filters': ?filters == null
          ? null
          : pulumi.Input.encodeList<
              GetPeeringAttachmentFilter,
              Map<String, dynamic>
            >(filters!, (value) => value.toMap()),
      'id': id,
      'peerAccountId': peerAccountId,
      'peerRegion': peerRegion,
      'peerTransitGatewayId': peerTransitGatewayId,
      'region': region,
      'state': state,
      'tags': tags,
      'transitGatewayId': transitGatewayId,
    };
  }

  factory GetPeeringAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentResult(
      arn: map['arn'] as String,
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetPeeringAttachmentFilter>(
              map['filters'],
              (value) => GetPeeringAttachmentFilter.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
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
