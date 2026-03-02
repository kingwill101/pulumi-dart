// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_vpn_attachment_get_vpn_attachment_args_doc}
/// Arguments for getVpnAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_vpn_attachment_get_vpn_attachment_args_doc}
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

  /// Creates a new [GetVpnAttachmentArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway VPN Attachment.
  /// [transitGatewayId] Identifier of the EC2 Transit Gateway.
  /// [vpnConnectionId] Identifier of the EC2 VPN Connection.
  GetVpnAttachmentArgs({
    this.filters,
    this.region,
    this.tags,
    this.transitGatewayId,
    this.vpnConnectionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'filters': ?pulumi.Input.mapOptionalInputValue<List<GetVpnAttachmentFilter>, List<Map<String, dynamic>>>(filters, (value) => pulumi.Input.encodeList<GetVpnAttachmentFilter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'tags': ?tags,
      'transitGatewayId': ?transitGatewayId,
      'vpnConnectionId': ?vpnConnectionId,
    };
  }

  factory GetVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetVpnAttachmentArgs(
      filters: map['filters'] == null ? null : (pulumi.Input.decodeList<GetVpnAttachmentFilter>(map['filters'], (value) => GetVpnAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitGatewayId: map['transitGatewayId'] == null ? null : (map['transitGatewayId'] as String).input(),
      vpnConnectionId: map['vpnConnectionId'] == null ? null : (map['vpnConnectionId'] as String).input(),
    );
  }
}

