// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterVbrAttachmentsAttachment {
  /// ID of the region where the conflicted VBR is located.
  final bool autoPublishRouteEnabled;
  final String id;
  /// Type of the resource.
  final String resourceType;
  /// The status of the resource. Valid values `Attached`, `Attaching` and `Detaching`.
  final String status;
  final String transitRouterAttachmentDescription;
  /// ID of the transit router VBR attachment.
  final String transitRouterAttachmentId;
  /// Name of the transit router attachment.
  final String transitRouterAttachmentName;
  /// ID of the VBR.
  final String vbrId;
  /// The Owner ID of the VBR.
  final String vbrOwnerId;

  /// Creates a new [GetTransitRouterVbrAttachmentsAttachment].
  /// [autoPublishRouteEnabled] ID of the region where the conflicted VBR is located.
  /// [id] Required.
  /// [resourceType] Type of the resource.
  /// [status] The status of the resource. Valid values `Attached`, `Attaching` and `Detaching`.
  /// [transitRouterAttachmentDescription] Required.
  /// [transitRouterAttachmentId] ID of the transit router VBR attachment.
  /// [transitRouterAttachmentName] Name of the transit router attachment.
  /// [vbrId] ID of the VBR.
  /// [vbrOwnerId] The Owner ID of the VBR.
  GetTransitRouterVbrAttachmentsAttachment({
    required this.autoPublishRouteEnabled,
    required this.id,
    required this.resourceType,
    required this.status,
    required this.transitRouterAttachmentDescription,
    required this.transitRouterAttachmentId,
    required this.transitRouterAttachmentName,
    required this.vbrId,
    required this.vbrOwnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoPublishRouteEnabled': autoPublishRouteEnabled,
      'id': id,
      'resourceType': resourceType,
      'status': status,
      'transitRouterAttachmentDescription': transitRouterAttachmentDescription,
      'transitRouterAttachmentId': transitRouterAttachmentId,
      'transitRouterAttachmentName': transitRouterAttachmentName,
      'vbrId': vbrId,
      'vbrOwnerId': vbrOwnerId,
    };
  }

  factory GetTransitRouterVbrAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterVbrAttachmentsAttachment(
      autoPublishRouteEnabled: map['autoPublishRouteEnabled'] as bool,
      id: map['id'] as String,
      resourceType: map['resourceType'] as String,
      status: map['status'] as String,
      transitRouterAttachmentDescription: map['transitRouterAttachmentDescription'] as String,
      transitRouterAttachmentId: map['transitRouterAttachmentId'] as String,
      transitRouterAttachmentName: map['transitRouterAttachmentName'] as String,
      vbrId: map['vbrId'] as String,
      vbrOwnerId: map['vbrOwnerId'] as String,
    );
  }
}

