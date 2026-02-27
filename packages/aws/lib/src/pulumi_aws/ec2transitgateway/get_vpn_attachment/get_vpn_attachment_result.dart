// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpn_attachment_filter/get_vpn_attachment_filter.dart';

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

  GetVpnAttachmentResult({
    this.filters,
    required this.id,
    required this.region,
    required this.tags,
    this.transitGatewayId,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] =
          pulumi.Input.encodeList<GetVpnAttachmentFilter, Map<String, dynamic>>(
              filtersValue, (value) => value.toMap());
    }
    map['id'] = id;
    map['region'] = region;
    map['tags'] = tags;
    final transitGatewayIdValue = transitGatewayId;
    if (transitGatewayIdValue != null) {
      map['transitGatewayId'] = transitGatewayIdValue;
    }
    final vpnConnectionIdValue = vpnConnectionId;
    if (vpnConnectionIdValue != null) {
      map['vpnConnectionId'] = vpnConnectionIdValue;
    }
    return map;
  }

  factory GetVpnAttachmentResult.fromMap(Map<String, dynamic> map) {
    return GetVpnAttachmentResult(
      filters: map['filters'] == null
          ? null
          : pulumi.Input.decodeList<GetVpnAttachmentFilter>(
              map['filters'],
              (value) => GetVpnAttachmentFilter.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      transitGatewayId: map['transitGatewayId'] == null
          ? null
          : map['transitGatewayId'] as String,
      vpnConnectionId: map['vpnConnectionId'] == null
          ? null
          : map['vpnConnectionId'] as String,
    );
  }
}
