// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_vpn_attachments_attachment_zone.dart';

class GetTransitRouterVpnAttachmentsAttachment {
  /// Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment.
  final pulumi.Input<bool> autoPublishRouteEnabled;

  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String> cenId;

  /// (Available since v1.245.0) The billing method of the VPN attachment.
  final pulumi.Input<String> chargeType;

  /// The time when the VPN connection was created.
  final pulumi.Input<String> createTime;

  /// The ID of the resource supplied above.
  final pulumi.Input<String> id;

  /// The type of resource attached to the transit router.
  final pulumi.Input<String> resourceType;

  /// The Status of Transit Router Vpn Attachment. Valid values: `Attached`, `Attaching`, `Detaching`.
  final pulumi.Input<String> status;

  /// The tag of the resource.
  final pulumi.Input<Map<String, String>> tags;

  /// The description of the IPsec-VPN connection.
  final pulumi.Input<String> transitRouterAttachmentDescription;

  /// The ID of the VPN attachment.
  final pulumi.Input<String> transitRouterAttachmentId;

  /// The name of the VPN attachment.
  final pulumi.Input<String> transitRouterAttachmentName;

  /// The ID of the transit router.
  final pulumi.Input<String> transitRouterId;

  /// The ID of the IPsec-VPN attachment.
  final pulumi.Input<String> vpnId;

  /// The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  final pulumi.Input<int> vpnOwnerId;

  /// The Zone ID in the current region.System will create resources under the Zone that you specify.Left blank if associated IPSec connection is in dual-tunnel mode.
  final pulumi.Input<List<GetTransitRouterVpnAttachmentsAttachmentZone>> zones;

  /// Creates a new [GetTransitRouterVpnAttachmentsAttachment].
  /// [autoPublishRouteEnabled] Specifies whether to allow the transit router to automatically advertise routes to the IPsec-VPN attachment.
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [chargeType] (Available since v1.245.0) The billing method of the VPN attachment.
  /// [createTime] The time when the VPN connection was created.
  /// [id] The ID of the resource supplied above.
  /// [resourceType] The type of resource attached to the transit router.
  /// [status] The Status of Transit Router Vpn Attachment. Valid values: `Attached`, `Attaching`, `Detaching`.
  /// [tags] The tag of the resource.
  /// [transitRouterAttachmentDescription] The description of the IPsec-VPN connection.
  /// [transitRouterAttachmentId] The ID of the VPN attachment.
  /// [transitRouterAttachmentName] The name of the VPN attachment.
  /// [transitRouterId] The ID of the transit router.
  /// [vpnId] The ID of the IPsec-VPN attachment.
  /// [vpnOwnerId] The ID of the Alibaba Cloud account to which the IPsec-VPN connection belongs.
  /// [zones] The Zone ID in the current region.System will create resources under the Zone that you specify.Left blank if associated IPSec connection is in dual-tunnel mode.
  GetTransitRouterVpnAttachmentsAttachment({
    required this.autoPublishRouteEnabled,
    required this.cenId,
    required this.chargeType,
    required this.createTime,
    required this.id,
    required this.resourceType,
    required this.status,
    required this.tags,
    required this.transitRouterAttachmentDescription,
    required this.transitRouterAttachmentId,
    required this.transitRouterAttachmentName,
    required this.transitRouterId,
    required this.vpnId,
    required this.vpnOwnerId,
    required this.zones,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': autoPublishRouteEnabled,
      'cenId': cenId,
      'chargeType': chargeType,
      'createTime': createTime,
      'id': id,
      'resourceType': resourceType,
      'status': status,
      'tags': tags,
      'transitRouterAttachmentDescription': transitRouterAttachmentDescription,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterAttachmentName': transitRouterAttachmentName,
      'transitRouterId': transitRouterId,
      'vpnId': vpnId,
      'vpnOwnerId': vpnOwnerId,
      'zones':
          pulumi.Input.mapInputValue<
            List<GetTransitRouterVpnAttachmentsAttachmentZone>,
            List<Map<String, dynamic>>
          >(
            zones,
            (value) =>
                pulumi.Input.encodeList<
                  GetTransitRouterVpnAttachmentsAttachmentZone,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetTransitRouterVpnAttachmentsAttachment.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetTransitRouterVpnAttachmentsAttachment(
      autoPublishRouteEnabled: pulumi.Input.fromValue(
        map['autoPublishRouteEnabled'] as bool,
      ),
      cenId: pulumi.Input.fromValue(map['cenId'] as String),
      chargeType: pulumi.Input.fromValue(map['chargeType'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resourceType: pulumi.Input.fromValue(map['resourceType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      tags: pulumi.Input.fromValue((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentDescription: pulumi.Input.fromValue(
        map['transitRouterAttachmentDescription'] as String,
      ),
      transitRouterAttachmentId: pulumi.Input.fromValue(
        map['transitRouterAttachmentId'] as String,
      ),
      transitRouterAttachmentName: pulumi.Input.fromValue(
        map['transitRouterAttachmentName'] as String,
      ),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      vpnId: pulumi.Input.fromValue(map['vpnId'] as String),
      vpnOwnerId: pulumi.Input.fromValue(map['vpnOwnerId'] as int),
      zones: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetTransitRouterVpnAttachmentsAttachmentZone>(
          map['zones']!,
          (value) => GetTransitRouterVpnAttachmentsAttachmentZone.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
