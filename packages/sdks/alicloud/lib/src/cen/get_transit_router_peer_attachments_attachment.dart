// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterPeerAttachmentsAttachment {
  /// Auto publish route enabled.
  final pulumi.Input<bool> autoPublishRouteEnabled;
  /// The bandwidth of the bandwidth package.
  final pulumi.Input<int> bandwidth;
  /// ID of the CEN bandwidth package.
  final pulumi.Input<String> cenBandwidthPackageId;
  /// ID of the geographic.
  final pulumi.Input<String> geographicSpanId;
  /// The ID of CEN Transit Router peer attachments.
  final pulumi.Input<String> id;
  /// ID of the peer transit router.
  final pulumi.Input<String> peerTransitRouterId;
  /// Owner ID of the peer transit router.
  final pulumi.Input<String> peerTransitRouterOwnerId;
  /// Region ID of the peer transit router.
  final pulumi.Input<String> peerTransitRouterRegionId;
  /// Type of the resource.
  final pulumi.Input<String> resourceType;
  /// The status of CEN Transit Router peer attachment. Valid values `Attached`, `Attaching` and `Detaching`.
  final pulumi.Input<String> status;
  /// The description of CEN Transit Router peer attachments.
  final pulumi.Input<String> transitRouterAttachmentDescription;
  /// The ID of CEN Transit Router peer attachments.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// Name of the transit router attachment.
  final pulumi.Input<String> transitRouterAttachmentName;
  /// The ID of transit router.
  final pulumi.Input<String> transitRouterId;

  /// Creates a new [GetTransitRouterPeerAttachmentsAttachment].
  /// [autoPublishRouteEnabled] Auto publish route enabled.
  /// [bandwidth] The bandwidth of the bandwidth package.
  /// [cenBandwidthPackageId] ID of the CEN bandwidth package.
  /// [geographicSpanId] ID of the geographic.
  /// [id] The ID of CEN Transit Router peer attachments.
  /// [peerTransitRouterId] ID of the peer transit router.
  /// [peerTransitRouterOwnerId] Owner ID of the peer transit router.
  /// [peerTransitRouterRegionId] Region ID of the peer transit router.
  /// [resourceType] Type of the resource.
  /// [status] The status of CEN Transit Router peer attachment. Valid values `Attached`, `Attaching` and `Detaching`.
  /// [transitRouterAttachmentDescription] The description of CEN Transit Router peer attachments.
  /// [transitRouterAttachmentId] The ID of CEN Transit Router peer attachments.
  /// [transitRouterAttachmentName] Name of the transit router attachment.
  /// [transitRouterId] The ID of transit router.
  GetTransitRouterPeerAttachmentsAttachment({
    required this.autoPublishRouteEnabled,
    required this.bandwidth,
    required this.cenBandwidthPackageId,
    required this.geographicSpanId,
    required this.id,
    required this.peerTransitRouterId,
    required this.peerTransitRouterOwnerId,
    required this.peerTransitRouterRegionId,
    required this.resourceType,
    required this.status,
    required this.transitRouterAttachmentDescription,
    required this.transitRouterAttachmentId,
    required this.transitRouterAttachmentName,
    required this.transitRouterId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': autoPublishRouteEnabled,
      'bandwidth': bandwidth,
      'cenBandwidthPackageId': cenBandwidthPackageId,
      'geographicSpanId': geographicSpanId,
      'id': id,
      'peerTransitRouterId': peerTransitRouterId,
      'peerTransitRouterOwnerId': peerTransitRouterOwnerId,
      'peerTransitRouterRegionId': peerTransitRouterRegionId,
      'resourceType': resourceType,
      'status': status,
      'transitRouterAttachmentDescription': transitRouterAttachmentDescription,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterAttachmentName': transitRouterAttachmentName,
      'transitRouterId': transitRouterId,
    };
  }

  factory GetTransitRouterPeerAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterPeerAttachmentsAttachment(
      autoPublishRouteEnabled: (map['autoPublishRouteEnabled'] as bool).input(),
      bandwidth: (map['bandwidth'] as int).input(),
      cenBandwidthPackageId: (map['cenBandwidthPackageId'] as String).input(),
      geographicSpanId: (map['geographicSpanId'] as String).input(),
      id: (map['id'] as String).input(),
      peerTransitRouterId: (map['peerTransitRouterId'] as String).input(),
      peerTransitRouterOwnerId: (map['peerTransitRouterOwnerId'] as String).input(),
      peerTransitRouterRegionId: (map['peerTransitRouterRegionId'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterAttachmentDescription: (map['transitRouterAttachmentDescription'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
      transitRouterAttachmentName: (map['transitRouterAttachmentName'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
    );
  }
}

