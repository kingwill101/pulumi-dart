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
    pulumi.Output<bool>? autoPublishRouteEnabled,
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? bandwidthType,
    pulumi.Output<String>? cenBandwidthPackageId,
    pulumi.Output<String>? cenId,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? defaultLinkType,
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? peerTransitRouterId,
    pulumi.Output<String>? peerTransitRouterRegionId,
    pulumi.Output<String>? regionId,
    pulumi.Output<String>? resourceType,
    pulumi.Output<bool>? routeTableAssociationEnabled,
    pulumi.Output<bool>? routeTablePropagationEnabled,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<String>? transitRouterAttachmentDescription,
    pulumi.Output<String>? transitRouterAttachmentId,
    pulumi.Output<String>? transitRouterAttachmentName,
    pulumi.Output<String>? transitRouterId,
    pulumi.Output<String>? transitRouterPeerAttachmentName,
  }) :
      autoPublishRouteEnabled = pulumi.Input.asOptionalInput<bool>(autoPublishRouteEnabled),
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      bandwidthType = pulumi.Input.asOptionalInput<String>(bandwidthType),
      cenBandwidthPackageId = pulumi.Input.asOptionalInput<String>(cenBandwidthPackageId),
      cenId = pulumi.Input.asOptionalInput<String>(cenId),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      defaultLinkType = pulumi.Input.asOptionalInput<String>(defaultLinkType),
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      peerTransitRouterId = pulumi.Input.asOptionalInput<String>(peerTransitRouterId),
      peerTransitRouterRegionId = pulumi.Input.asOptionalInput<String>(peerTransitRouterRegionId),
      regionId = pulumi.Input.asOptionalInput<String>(regionId),
      resourceType = pulumi.Input.asOptionalInput<String>(resourceType),
      routeTableAssociationEnabled = pulumi.Input.asOptionalInput<bool>(routeTableAssociationEnabled),
      routeTablePropagationEnabled = pulumi.Input.asOptionalInput<bool>(routeTablePropagationEnabled),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      transitRouterAttachmentDescription = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentDescription),
      transitRouterAttachmentId = pulumi.Input.asOptionalInput<String>(transitRouterAttachmentId),
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
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] == null ? null : pulumi.Output.create<bool>(map['autoPublishRouteEnabled'] as bool),
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      bandwidthType: map['bandwidthType'] == null ? null : pulumi.Output.create<String>(map['bandwidthType'] as String),
      cenBandwidthPackageId: map['cenBandwidthPackageId'] == null ? null : pulumi.Output.create<String>(map['cenBandwidthPackageId'] as String),
      cenId: map['cenId'] == null ? null : pulumi.Output.create<String>(map['cenId'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      defaultLinkType: map['defaultLinkType'] == null ? null : pulumi.Output.create<String>(map['defaultLinkType'] as String),
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      peerTransitRouterId: map['peerTransitRouterId'] == null ? null : pulumi.Output.create<String>(map['peerTransitRouterId'] as String),
      peerTransitRouterRegionId: map['peerTransitRouterRegionId'] == null ? null : pulumi.Output.create<String>(map['peerTransitRouterRegionId'] as String),
      regionId: map['regionId'] == null ? null : pulumi.Output.create<String>(map['regionId'] as String),
      resourceType: map['resourceType'] == null ? null : pulumi.Output.create<String>(map['resourceType'] as String),
      routeTableAssociationEnabled: map['routeTableAssociationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTableAssociationEnabled'] as bool),
      routeTablePropagationEnabled: map['routeTablePropagationEnabled'] == null ? null : pulumi.Output.create<bool>(map['routeTablePropagationEnabled'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentDescription'] as String),
      transitRouterAttachmentId: map['transitRouterAttachmentId'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentId'] as String),
      transitRouterAttachmentName: map['transitRouterAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterAttachmentName'] as String),
      transitRouterId: map['transitRouterId'] == null ? null : pulumi.Output.create<String>(map['transitRouterId'] as String),
      transitRouterPeerAttachmentName: map['transitRouterPeerAttachmentName'] == null ? null : pulumi.Output.create<String>(map['transitRouterPeerAttachmentName'] as String),
    );
  }
}

