// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_peering_attachment_filter.dart';

/// Result data returned by getPeeringAttachment.
class GetPeeringAttachmentResult {
  /// ARN of the attachment.
  final String? arn;
  final List<GetPeeringAttachmentFilter>? filters;
  final String? id;
  /// Identifier of the peer AWS account.
  final String? peerAccountId;
  /// Identifier of the peer AWS region.
  final String? peerRegion;
  /// Identifier of the peer EC2 Transit Gateway.
  final String? peerTransitGatewayId;
  final String? region;
  final String? state;
  final Map<String, String>? tags;
  /// Identifier of the local EC2 Transit Gateway.
  final String? transitGatewayId;

  /// Creates a new [GetPeeringAttachmentResult].
  /// [arn] ARN of the attachment.
  /// [filters] Optional.
  /// [id] Optional.
  /// [peerAccountId] Identifier of the peer AWS account.
  /// [peerRegion] Identifier of the peer AWS region.
  /// [peerTransitGatewayId] Identifier of the peer EC2 Transit Gateway.
  /// [region] Optional.
  /// [state] Optional.
  /// [tags] Optional.
  /// [transitGatewayId] Identifier of the local EC2 Transit Gateway.
  const GetPeeringAttachmentResult({
    this.arn,
    this.filters,
    this.id,
    this.peerAccountId,
    this.peerRegion,
    this.peerTransitGatewayId,
    this.region,
    this.state,
    this.tags,
    this.transitGatewayId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetPeeringAttachmentFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'peerAccountId': ?peerAccountId,
      'peerRegion': ?peerRegion,
      'peerTransitGatewayId': ?peerTransitGatewayId,
      'region': ?region,
      'state': ?state,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
    };
  }

  factory GetPeeringAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetPeeringAttachmentResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetPeeringAttachmentFilter>(guardedValue, (value) => GetPeeringAttachmentFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerAccountId: (() { final guardedValue = map['peerAccountId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerRegion: (() { final guardedValue = map['peerRegion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      peerTransitGatewayId: (() { final guardedValue = map['peerTransitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
