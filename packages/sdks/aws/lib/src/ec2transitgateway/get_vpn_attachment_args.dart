// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_vpn_attachment_filter.dart';

/// {@template pulumi_ec2transitgateway_get_vpn_attachment_get_vpn_attachment_args_doc}
/// Arguments for getVpnAttachment.
/// {@endtemplate}
/// {@macro pulumi_ec2transitgateway_get_vpn_attachment_get_vpn_attachment_args_doc}
class GetVpnAttachmentArgs {
  /// Configuration block(s) for filtering. Detailed below.
  final pulumi.Input<List<GetVpnAttachmentFilter>?>? filters;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway VPN Attachment.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Identifier of the EC2 Transit Gateway.
  final pulumi.Input<String?>? transitGatewayId;
  /// Identifier of the EC2 VPN Connection.
  final pulumi.Input<String?>? vpnConnectionId;

  /// Creates a new [GetVpnAttachmentArgs].
  /// [filters] Configuration block(s) for filtering. Detailed below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags, each pair of which must exactly match a pair on the desired Transit Gateway VPN Attachment.
  /// [transitGatewayId] Identifier of the EC2 Transit Gateway.
  /// [vpnConnectionId] Identifier of the EC2 VPN Connection.
  const GetVpnAttachmentArgs({
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
      filters: (() { final guardedValue = map['filters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetVpnAttachmentFilter>(guardedValue, (value) => GetVpnAttachmentFilter.fromMap((value as Map).cast<String, dynamic>()))); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitGatewayId: (() { final guardedValue = map['transitGatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnConnectionId: (() { final guardedValue = map['vpnConnectionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
