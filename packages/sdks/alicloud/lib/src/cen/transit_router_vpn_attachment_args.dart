// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpn_attachment_zone.dart';

/// {@template pulumi_cen_transit_router_vpn_attachment_transit_router_vpn_attachment_args_doc}
/// The set of arguments for TransitRouterVpnAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_vpn_attachment_transit_router_vpn_attachment_args_doc}
class TransitRouterVpnAttachmentArgs {
  /// Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment. Valid values:
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// The billing method.
  /// Set the value to `POSTPAY`, which is the default value and specifies the pay-as-you-go billing method.
  final pulumi.Input<String>? chargeType;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The new description of the VPN attachment.
  /// The description must be 2 to 256 characters in length. The description must start with a letter but cannot start with `http://` or `https://`.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// The name of the VPN attachment.
  /// The name must be 2 to 128 characters in length, and can contain letters, digits, underscores (\_), and hyphens (-). It must start with a letter.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The ID of the IPsec-VPN attachment.
  final pulumi.Input<String> vpnId;
  /// The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  ///
  /// - If you do not set this parameter, the ID of the current Alibaba Cloud account is used.
  /// - You must set VpnOwnerId if you want to connect the transit router to an IPsec-VPN connection that belongs to another Alibaba Cloud account.
  final pulumi.Input<String>? vpnOwnerId;
  /// The Zone ID in the current region.
  /// System will create resources under the Zone that you specify.
  /// Left blank if associated IPSec connection is in dual-tunnel mode. See `zone` below.
  final pulumi.Input<List<TransitRouterVpnAttachmentZone>>? zones;

  /// Creates a new [TransitRouterVpnAttachmentArgs].
  /// [autoPublishRouteEnabled] Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment. Valid values:
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [chargeType] The billing method.
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The new description of the VPN attachment.
  /// [transitRouterAttachmentName] The name of the VPN attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vpnId] The ID of the IPsec-VPN attachment.
  /// [vpnOwnerId] The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  /// [zones] The Zone ID in the current region.
  TransitRouterVpnAttachmentArgs({
    this.autoPublishRouteEnabled,
    this.cenId,
    this.chargeType,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterAttachmentName,
    this.transitRouterId,
    required this.vpnId,
    this.vpnOwnerId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': ?cenId,
      'chargeType': ?chargeType,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'vpnId': vpnId,
      'vpnOwnerId': ?vpnOwnerId,
      'zones': ?pulumi.Input.mapOptionalInputValue<List<TransitRouterVpnAttachmentZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<TransitRouterVpnAttachmentZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransitRouterVpnAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpnAttachmentArgs(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : (map['autoPublishRouteEnabled']! as bool).input(),
      cenId: map['cenId'] == null ? null : (map['cenId']! as String).input(),
      chargeType: map['chargeType'] == null ? null : (map['chargeType']! as String).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : (map['transitRouterAttachmentDescription']! as String).input(),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : (map['transitRouterAttachmentName']! as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId']! as String).input(),
      vpnId: (map['vpnId'] as String).input(),
      vpnOwnerId: map['vpnOwnerId'] == null ? null : (map['vpnOwnerId']! as String).input(),
      zones: map['zones'] == null ? null : (pulumi.Input.decodeList<TransitRouterVpnAttachmentZone>(map['zones']!, (value) => TransitRouterVpnAttachmentZone.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

