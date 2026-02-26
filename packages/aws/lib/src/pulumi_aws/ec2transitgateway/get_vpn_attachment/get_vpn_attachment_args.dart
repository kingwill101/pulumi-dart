// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_vpn_attachment_filter/get_vpn_attachment_filter.dart';

/// Arguments for getVpnAttachment.
class GetVpnAttachmentArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final Input<List<GetVpnAttachmentFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway VPN Attachment.
  final Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway.
  final Input<String>? transitGatewayId;

  /// Identifier of the EC2 VPN Connection.
  final Input<String>? vpnConnectionId;

  GetVpnAttachmentArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayId,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filtersValue = filters;
    if (filtersValue != null) {
      map['filters'] = Input.mapOptionalInputValue<List<GetVpnAttachmentFilter>,
              List<Map<String, dynamic>>>(
          filtersValue,
          (value) =>
              Input.encodeList<GetVpnAttachmentFilter, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
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

  factory GetVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnAttachmentArgs(
      filters:
          Input.asOptionalInput<List<GetVpnAttachmentFilter>>(map['filters']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId: Input.asOptionalInput<String>(map['transitGatewayId']),
      vpnConnectionId: Input.asOptionalInput<String>(map['vpnConnectionId']),
    );
  }
}
