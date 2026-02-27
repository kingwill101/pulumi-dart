// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_vpn_attachment_filter/get_vpn_attachment_filter.dart';

/// Arguments for getVpnAttachment.
class GetVpnAttachmentArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetVpnAttachmentFilter>>? filters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway VPN Attachment.
  final pulumi.Input<Map<String, String>>? tags;

  /// Identifier of the EC2 Transit Gateway.
  final pulumi.Input<String>? transitGatewayId;

  /// Identifier of the EC2 VPN Connection.
  final pulumi.Input<String>? vpnConnectionId;

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
      map['filters'] = pulumi.Input.mapOptionalInputValue<
              List<GetVpnAttachmentFilter>, List<Map<String, dynamic>>>(
          filtersValue,
          (value) => pulumi.Input.encodeList<GetVpnAttachmentFilter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
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
      filters: pulumi.Input.asOptionalInput<List<GetVpnAttachmentFilter>>(
          map['filters']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      transitGatewayId:
          pulumi.Input.asOptionalInput<String>(map['transitGatewayId']),
      vpnConnectionId:
          pulumi.Input.asOptionalInput<String>(map['vpnConnectionId']),
    );
  }
}
