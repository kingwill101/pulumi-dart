// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'transit_router_vpn_attachment_zone.dart';

/// Input properties used for looking up and filtering TransitRouterVpnAttachment resources.
class TransitRouterVpnAttachmentState {
  /// Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment. Valid values:
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// The billing method.
  /// Set the value to `POSTPAY`, which is the default value and specifies the pay-as-you-go billing method.
  final pulumi.Input<String>? chargeType;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The ID of the region where the transit router is deployed.
  final pulumi.Input<String>? regionId;
  /// Status
  final pulumi.Input<String>? status;
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
  final pulumi.Input<String>? vpnId;
  /// The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  ///
  /// - If you do not set this parameter, the ID of the current Alibaba Cloud account is used.
  /// - You must set VpnOwnerId if you want to connect the transit router to an IPsec-VPN connection that belongs to another Alibaba Cloud account.
  final pulumi.Input<String>? vpnOwnerId;
  /// The Zone ID in the current region.
  /// System will create resources under the Zone that you specify.
  /// Left blank if associated IPSec connection is in dual-tunnel mode. See `zone` below.
  final pulumi.Input<List<TransitRouterVpnAttachmentZone>>? zones;

  /// Creates a new [TransitRouterVpnAttachmentState].
  /// [autoPublishRouteEnabled] Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment. Valid values:
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [chargeType] The billing method.
  /// [createTime] The creation time of the resource
  /// [regionId] The ID of the region where the transit router is deployed.
  /// [status] Status
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The new description of the VPN attachment.
  /// [transitRouterAttachmentName] The name of the VPN attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vpnId] The ID of the IPsec-VPN attachment.
  /// [vpnOwnerId] The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  /// [zones] The Zone ID in the current region.
  TransitRouterVpnAttachmentState({
    this.autoPublishRouteEnabled,
    this.cenId,
    this.chargeType,
    this.createTime,
    this.regionId,
    this.status,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterAttachmentName,
    this.transitRouterId,
    this.vpnId,
    this.vpnOwnerId,
    this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'cenId': ?cenId,
      'chargeType': ?chargeType,
      'createTime': ?createTime,
      'regionId': ?regionId,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'vpnId': ?vpnId,
      'vpnOwnerId': ?vpnOwnerId,
      'zones': ?pulumi.Input.mapOptionalInputValue<List<TransitRouterVpnAttachmentZone>, List<Map<String, dynamic>>>(zones, (value) => pulumi.Input.encodeList<TransitRouterVpnAttachmentZone, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory TransitRouterVpnAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterVpnAttachmentState(
      autoPublishRouteEnabled: (() { final guardedValue = map['autoPublishRouteEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      cenId: (() { final guardedValue = map['cenId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      chargeType: (() { final guardedValue = map['chargeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      regionId: (() { final guardedValue = map['regionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      transitRouterAttachmentDescription: (() { final guardedValue = map['transitRouterAttachmentDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterAttachmentName: (() { final guardedValue = map['transitRouterAttachmentName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: (() { final guardedValue = map['transitRouterId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnId: (() { final guardedValue = map['vpnId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vpnOwnerId: (() { final guardedValue = map['vpnOwnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      zones: (() { final guardedValue = map['zones']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TransitRouterVpnAttachmentZone>(guardedValue, (value) => TransitRouterVpnAttachmentZone.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}

