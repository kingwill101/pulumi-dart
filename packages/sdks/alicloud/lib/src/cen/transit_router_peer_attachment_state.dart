// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterPeerAttachment resources.
class TransitRouterPeerAttachmentState {
  /// Specifies whether to enable the local Enterprise Edition transit router to automatically advertise the routes of the inter-region connection to the peer transit router. Valid values:
  final pulumi.Input<bool>? autoPublishRouteEnabled;
  /// The bandwidth value of the inter-region connection. Unit: Mbit/s.
  ///
  /// - This parameter specifies the maximum bandwidth value for the inter-region connection if you set `BandwidthType` to `BandwidthPackage`.
  /// - This parameter specifies the bandwidth throttling threshold for the inter-region connection if you set `BandwidthType` to `DataTransfer`.
  final pulumi.Input<int>? bandwidth;
  /// The method that is used to allocate bandwidth to the inter-region connection. Valid values:
  ///
  /// - `BandwidthPackage`: allocates bandwidth from a bandwidth plan.
  /// - `DataTransfer`: bandwidth is billed based on the pay-by-data-transfer metering method.
  final pulumi.Input<String>? bandwidthType;
  /// The ID of the bandwidth plan that is used to allocate bandwidth to the inter-region connection.
  ///
  /// > **NOTE:**   If you set `BandwidthType` to `DataTransfer`, you do not need to set this parameter.
  final pulumi.Input<String>? cenBandwidthPackageId;
  /// The ID of the Cloud Enterprise Network (CEN) instance.
  final pulumi.Input<String>? cenId;
  /// The creation time of the resource
  final pulumi.Input<String>? createTime;
  /// The default line type.
  /// Valid values: Platinum and Gold.
  /// Platinum is supported only when BandwidthType is set to DataTransfer.
  final pulumi.Input<String>? defaultLinkType;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the peer transit router.
  final pulumi.Input<String>? peerTransitRouterId;
  /// The ID of the region where the peer transit router is deployed.
  final pulumi.Input<String>? peerTransitRouterRegionId;
  /// The ID of the region where the local Enterprise Edition transit router is deployed.
  final pulumi.Input<String>? regionId;
  /// The resource type to attachment. Only support `VR` and default value is `VR`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? resourceType;
  /// Field `route_table_association_enabled` has been deprecated from provider version 1.230.0.
  final pulumi.Input<bool>? routeTableAssociationEnabled;
  /// Field `route_table_propagation_enabled` has been deprecated from provider version 1.230.0.
  final pulumi.Input<bool>? routeTablePropagationEnabled;
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The new description of the inter-region connection.
  /// This parameter is optional. If you enter a description, it must be 1 to 256 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// The ID of the inter-region connection.
  final pulumi.Input<String>? transitRouterAttachmentId;
  /// . Field 'transit_router_attachment_name' has been deprecated from provider version 1.247.0. New field 'transit_router_peer_attachment_name' instead.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the local Enterprise Edition transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The new name of the inter-region connection.
  /// The name can be empty or 1 to 128 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? transitRouterPeerAttachmentName;

  /// Creates a new [TransitRouterPeerAttachmentState].
  /// [autoPublishRouteEnabled] Specifies whether to enable the local Enterprise Edition transit router to automatically advertise the routes of the inter-region connection to the peer transit router. Valid values:
  /// [bandwidth] The bandwidth value of the inter-region connection. Unit: Mbit/s.
  /// [bandwidthType] The method that is used to allocate bandwidth to the inter-region connection. Valid values:
  /// [cenBandwidthPackageId] The ID of the bandwidth plan that is used to allocate bandwidth to the inter-region connection.
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [createTime] The creation time of the resource
  /// [defaultLinkType] The default line type.
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [peerTransitRouterId] The ID of the peer transit router.
  /// [peerTransitRouterRegionId] The ID of the region where the peer transit router is deployed.
  /// [regionId] The ID of the region where the local Enterprise Edition transit router is deployed.
  /// [resourceType] The resource type to attachment. Only support `VR` and default value is `VR`.
  /// [routeTableAssociationEnabled] Field `route_table_association_enabled` has been deprecated from provider version 1.230.0.
  /// [routeTablePropagationEnabled] Field `route_table_propagation_enabled` has been deprecated from provider version 1.230.0.
  /// [status] The status of the resource
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The new description of the inter-region connection.
  /// [transitRouterAttachmentId] The ID of the inter-region connection.
  /// [transitRouterAttachmentName] . Field 'transit_router_attachment_name' has been deprecated from provider version 1.247.0. New field 'transit_router_peer_attachment_name' instead.
  /// [transitRouterId] The ID of the local Enterprise Edition transit router.
  /// [transitRouterPeerAttachmentName] The new name of the inter-region connection.
  TransitRouterPeerAttachmentState({
    this.autoPublishRouteEnabled,
    this.bandwidth,
    this.bandwidthType,
    this.cenBandwidthPackageId,
    this.cenId,
    this.createTime,
    this.defaultLinkType,
    this.dryRun,
    this.peerTransitRouterId,
    this.peerTransitRouterRegionId,
    this.regionId,
    this.resourceType,
    this.routeTableAssociationEnabled,
    this.routeTablePropagationEnabled,
    this.status,
    this.tags,
    this.transitRouterAttachmentDescription,
    this.transitRouterAttachmentId,
    this.transitRouterAttachmentName,
    this.transitRouterId,
    this.transitRouterPeerAttachmentName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'bandwidth': ?bandwidth,
      'bandwidthType': ?bandwidthType,
      'cenBandwidthPackageId': ?cenBandwidthPackageId,
      'cenId': ?cenId,
      'createTime': ?createTime,
      'defaultLinkType': ?defaultLinkType,
      'dryRun': ?dryRun,
      'peerTransitRouterId': ?peerTransitRouterId,
      'peerTransitRouterRegionId': ?peerTransitRouterRegionId,
      'regionId': ?regionId,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'status': ?status,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentId': ?transitRouterAttachmentId,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'transitRouterPeerAttachmentName': ?transitRouterPeerAttachmentName,
    };
  }

  factory TransitRouterPeerAttachmentState.fromMap(Map<String, dynamic> map) {
    return TransitRouterPeerAttachmentState(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : (map['autoPublishRouteEnabled'] as bool).input(),
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      bandwidthType: map['bandwidthType'] == null ? null : (map['bandwidthType'] as String).input(),
      cenBandwidthPackageId: map['cenBandwidthPackageId'] == null ? null : (map['cenBandwidthPackageId'] as String).input(),
      cenId: map['cenId'] == null ? null : (map['cenId'] as String).input(),
      createTime: map['createTime'] == null ? null : (map['createTime'] as String).input(),
      defaultLinkType: map['defaultLinkType'] == null ? null : (map['defaultLinkType'] as String).input(),
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      peerTransitRouterId: map['peerTransitRouterId'] == null ? null : (map['peerTransitRouterId'] as String).input(),
      peerTransitRouterRegionId: map['peerTransitRouterRegionId'] == null ? null : (map['peerTransitRouterRegionId'] as String).input(),
      regionId: map['regionId'] == null ? null : (map['regionId'] as String).input(),
      resourceType: map['resourceType'] == null ? null : (map['resourceType'] as String).input(),
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : (map['routeTableAssociationEnabled'] as bool).input(),
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : (map['routeTablePropagationEnabled'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : (map['transitRouterAttachmentDescription'] as String).input(),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : (map['transitRouterAttachmentId'] as String).input(),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : (map['transitRouterAttachmentName'] as String).input(),
      transitRouterId: map['transitRouterId'] == null ? null : (map['transitRouterId'] as String).input(),
      transitRouterPeerAttachmentName: map['transitRouterPeerAttachmentName'] == null ? null : (map['transitRouterPeerAttachmentName'] as String).input(),
    );
  }
}

