// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_peer_attachment_transit_router_peer_attachment_args_doc}
/// The set of arguments for TransitRouterPeerAttachment.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_peer_attachment_transit_router_peer_attachment_args_doc}
class TransitRouterPeerAttachmentArgs {
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
  /// The default line type.
  /// Valid values: Platinum and Gold.
  /// Platinum is supported only when BandwidthType is set to DataTransfer.
  final pulumi.Input<String>? defaultLinkType;
  /// Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  final pulumi.Input<bool>? dryRun;
  /// The ID of the peer transit router.
  final pulumi.Input<String> peerTransitRouterId;
  /// The ID of the region where the peer transit router is deployed.
  final pulumi.Input<String>? peerTransitRouterRegionId;
  /// The resource type to attachment. Only support `VR` and default value is `VR`.
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<String>? resourceType;
  /// Field `route_table_association_enabled` has been deprecated from provider version 1.230.0.
  final pulumi.Input<bool>? routeTableAssociationEnabled;
  /// Field `route_table_propagation_enabled` has been deprecated from provider version 1.230.0.
  final pulumi.Input<bool>? routeTablePropagationEnabled;
  /// The tag of the resource
  final pulumi.Input<Map<String, String>>? tags;
  /// The new description of the inter-region connection.
  /// This parameter is optional. If you enter a description, it must be 1 to 256 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? transitRouterAttachmentDescription;
  /// . Field 'transit_router_attachment_name' has been deprecated from provider version 1.247.0. New field 'transit_router_peer_attachment_name' instead.
  final pulumi.Input<String>? transitRouterAttachmentName;
  /// The ID of the local Enterprise Edition transit router.
  final pulumi.Input<String>? transitRouterId;
  /// The new name of the inter-region connection.
  /// The name can be empty or 1 to 128 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? transitRouterPeerAttachmentName;

  /// Creates a new [TransitRouterPeerAttachmentArgs].
  /// [autoPublishRouteEnabled] Specifies whether to enable the local Enterprise Edition transit router to automatically advertise the routes of the inter-region connection to the peer transit router. Valid values:
  /// [bandwidth] The bandwidth value of the inter-region connection. Unit: Mbit/s.
  /// [bandwidthType] The method that is used to allocate bandwidth to the inter-region connection. Valid values:
  /// [cenBandwidthPackageId] The ID of the bandwidth plan that is used to allocate bandwidth to the inter-region connection.
  /// [cenId] The ID of the Cloud Enterprise Network (CEN) instance.
  /// [defaultLinkType] The default line type.
  /// [dryRun] Whether to perform PreCheck on this request, including permissions and instance status verification. Value:
  /// [peerTransitRouterId] The ID of the peer transit router.
  /// [peerTransitRouterRegionId] The ID of the region where the peer transit router is deployed.
  /// [resourceType] The resource type to attachment. Only support `VR` and default value is `VR`.
  /// [routeTableAssociationEnabled] Field `route_table_association_enabled` has been deprecated from provider version 1.230.0.
  /// [routeTablePropagationEnabled] Field `route_table_propagation_enabled` has been deprecated from provider version 1.230.0.
  /// [tags] The tag of the resource
  /// [transitRouterAttachmentDescription] The new description of the inter-region connection.
  /// [transitRouterAttachmentName] . Field 'transit_router_attachment_name' has been deprecated from provider version 1.247.0. New field 'transit_router_peer_attachment_name' instead.
  /// [transitRouterId] The ID of the local Enterprise Edition transit router.
  /// [transitRouterPeerAttachmentName] The new name of the inter-region connection.
  TransitRouterPeerAttachmentArgs({
    bool? autoPublishRouteEnabled,
    int? bandwidth,
    String? bandwidthType,
    String? cenBandwidthPackageId,
    String? cenId,
    String? defaultLinkType,
    bool? dryRun,
    required String peerTransitRouterId,
    String? peerTransitRouterRegionId,
    String? resourceType,
    bool? routeTableAssociationEnabled,
    bool? routeTablePropagationEnabled,
    Map<String, String>? tags,
    String? transitRouterAttachmentDescription,
    String? transitRouterAttachmentName,
    String? transitRouterId,
    String? transitRouterPeerAttachmentName,
  }) :
      autoPublishRouteEnabled = pulumi.Input.asOptionalInput<bool>(autoPublishRouteEnabled),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      bandwidthType = pulumi.Input.asOptionalInput<String>(bandwidthType),
      cenBandwidthPackageId = pulumi.Input.asOptionalInput<String>(cenBandwidthPackageId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      defaultLinkType = pulumi.Input.asOptionalInput<String>(defaultLinkType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      peerTransitRouterId = pulumi.Input.asInput<String>(peerTransitRouterId),
      peerTransitRouterRegionId = pulumi.Input.asOptionalInput<String>(peerTransitRouterRegionId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      routeTableAssociationEnabled = pulumi.Input.asOptionalInput<bool>(routeTableAssociationEnabled),
      routeTablePropagationEnabled = pulumi.Input.asOptionalInput<bool>(routeTablePropagationEnabled),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentName),
      transitRouterId = pulumi.Input.asOptionalInput<String>(transitRouterId),
      transitRouterPeerAttachmentName = pulumi.Input.asOptionalInput<String>(transitRouterPeerAttachmentName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': ?autoPublishRouteEnabled,
      'bandwidth': ?bandwidth,
      'bandwidthType': ?bandwidthType,
      'cenBandwidthPackageId': ?cenBandwidthPackageId,
      'cenId': ?cenId,
      'defaultLinkType': ?defaultLinkType,
      'dryRun': ?dryRun,
      'peerTransitRouterId': peerTransitRouterId,
      'peerTransitRouterRegionId': ?peerTransitRouterRegionId,
      'resourceType': ?resourceType,
      'routeTableAssociationEnabled': ?routeTableAssociationEnabled,
      'routeTablePropagationEnabled': ?routeTablePropagationEnabled,
      'tags': ?tags,
      'transitRouterAttachmentDescription': ?transitRouterAttachmentDescription,
      'transitRouterAttachmentName': ?transitRouterAttachmentName,
      'transitRouterId': ?transitRouterId,
      'transitRouterPeerAttachmentName': ?transitRouterPeerAttachmentName,
    };
  }

  factory TransitRouterPeerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterPeerAttachmentArgs(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : map['autoPublishRouteEnabled'] as bool,
      bandwidth: map['bandwidth'] == null ? null : map['bandwidth'] as int,
      bandwidthType: map['bandwidthType'] == null ? null : map['bandwidthType'] as String,
      cenBandwidthPackageId: map['cenBandwidthPackageId'] == null ? null : map['cenBandwidthPackageId'] as String,
      cenId: map['cenId'] == null ? null : map['cenId'] as String,
      defaultLinkType: map['defaultLinkType'] == null ? null : map['defaultLinkType'] as String,
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      peerTransitRouterId: map['peerTransitRouterId'] as String,
      peerTransitRouterRegionId: map['peerTransitRouterRegionId'] == null ? null : map['peerTransitRouterRegionId'] as String,
      resourceType: map['resourceType'] == null ? null : map['resourceType'] as String,
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : map['routeTableAssociationEnabled'] as bool,
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : map['routeTablePropagationEnabled'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : map['transitRouterAttachmentDescription'] as String,
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : map['transitRouterAttachmentName'] as String,
      transitRouterId: map['transitRouterId'] == null ? null : map['transitRouterId'] as String,
      transitRouterPeerAttachmentName: map['transitRouterPeerAttachmentName'] == null ? null : map['transitRouterPeerAttachmentName'] as String,
    );
  }
}

