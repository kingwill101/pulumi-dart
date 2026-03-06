// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_attachment_filter.dart';

/// Result data returned by getVpnAttachment.
class GetVpnAttachmentResult {
  final List<GetVpnAttachmentFilter>? filters;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;
  /// Key-value tags for the EC2 Transit Gateway VPN Attachment
  final Map<String, String> tags;
  final String? transitGatewayId;
  final String? vpnConnectionId;

  /// Creates a new [GetVpnAttachmentResult].
  /// [filters] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Required.
  /// [tags] Key-value tags for the EC2 Transit Gateway VPN Attachment
  /// [transitGatewayId] Optional.
  /// [vpnConnectionId] Optional.
  const GetVpnAttachmentResult({
    this.filters,
    required this.id,
    required this.region,
    required this.tags,
    this.transitGatewayId,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?(() { final guardedValue = filters; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetVpnAttachmentFilter, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': id,
      'region': region,
      'tags': tags,
      'transitGatewayId': ?transitGatewayId,
      'vpnConnectionId': ?vpnConnectionId,
    };
  }

  factory GetVpnAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetVpnAttachmentResult(
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetVpnAttachmentFilter>(guardedValue, (value) => GetVpnAttachmentFilter.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      vpnConnectionId: (() { final guardedValue = map['vpnConnectionId']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

