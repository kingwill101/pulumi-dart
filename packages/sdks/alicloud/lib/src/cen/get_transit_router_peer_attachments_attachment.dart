// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterPeerAttachmentsAttachment {
  /// Auto publish route enabled.
  final bool autoPublishRouteEnabled;
  /// The bandwidth of the bandwidth package.
  final int bandwidth;
  /// ID of the CEN bandwidth package.
  final String cenBandwidthPackageId;
  /// ID of the geographic.
  final String geographicSpanId;
  /// The ID of CEN Transit Router peer attachments.
  final String id;
  /// ID of the peer transit router.
  final String peerTransitRouterId;
  /// Owner ID of the peer transit router.
  final String peerTransitRouterOwnerId;
  /// Region ID of the peer transit router.
  final String peerTransitRouterRegionId;
  /// Type of the resource.
  final String resourceType;
  /// The status of CEN Transit Router peer attachment. Valid values `Attached`, `Attaching` and `Detaching`.
  final String status;
  /// The description of CEN Transit Router peer attachments.
  final String transitRouterAttachmentDescription;
  /// The ID of CEN Transit Router peer attachments.
  final String transitRouterAttachmentId;
  /// Name of the transit router attachment.
  final String transitRouterAttachmentName;
  /// The ID of transit router.
  final String transitRouterId;

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
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] as bool,
      bandwidth: map['bandwidth'] as int,
      cenBandwidthPackageId: map['cenBandwidthPackageId'] as String,
      geographicSpanId: map['geographicSpanId'] as String,
      id: map['id'] as String,
      peerTransitRouterId: map['peerTransitRouterId'] as String,
      peerTransitRouterOwnerId: map['peerTransitRouterOwnerId'] as String,
      peerTransitRouterRegionId: map['peerTransitRouterRegionId'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterAttachmentName: map['transitRouterAttachmentName'] as String,
      transitRouterId: map['transitRouterId'] as String,
    );
  }
}

