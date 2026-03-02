// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterVbrAttachmentsAttachment {
  /// ID of the region where the conflicted VBR is located.
  final pulumi.Input<bool> autoPublishRouteEnabled;
  final pulumi.Input<String> id;
  /// Type of the resource.
  final pulumi.Input<String> resourceType;
  /// The status of the resource. Valid values `Attached`, `Attaching` and `Detaching`.
  final pulumi.Input<String> status;
  final pulumi.Input<String> transitRouterAttachmentDescription;
  /// ID of the transit router VBR attachment.
  final pulumi.Input<String> transitRouterAttachmentId;
  /// Name of the transit router attachment.
  final pulumi.Input<String> transitRouterAttachmentName;
  /// ID of the VBR.
  final pulumi.Input<String> vbrId;
  /// The Owner ID of the VBR.
  final pulumi.Input<String> vbrOwnerId;

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
      autoPublishRouteEnabled: (map['autoPublishRouteEnabled'] as bool).input(),
      id: (map['id'] as String).input(),
      resourceType: (map['resourceType'] as String).input(),
      status: (map['status'] as String).input(),
      transitRouterAttachmentDescription: (map['transitRouterAttachmentDescription'] as String).input(),
      transitRouterAttachmentId: (map['transitRouterAttachmentId'] as String).input(),
      transitRouterAttachmentName: (map['transitRouterAttachmentName'] as String).input(),
      vbrId: (map['vbrId'] as String).input(),
      vbrOwnerId: (map['vbrOwnerId'] as String).input(),
    );
  }
}

