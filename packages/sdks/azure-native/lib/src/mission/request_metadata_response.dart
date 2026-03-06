// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Request Metadata for approvals request.
class RequestMetadataResponse {
  /// Payload to be sent upon any action on approval request
  final pulumi.Input<String>? approvalCallbackPayload;
  /// Route name for the approval callback
  final pulumi.Input<String>? approvalCallbackRoute;
  /// Status of the approval. Uses ApprovalStatus enum.
  final pulumi.Input<String>? approvalStatus;
  /// Resource Action of the item being approved or declined.
  final pulumi.Input<String> resourceAction;

  /// Creates a new [RequestMetadataResponse].
  /// [approvalCallbackPayload] Payload to be sent upon any action on approval request
  /// [approvalCallbackRoute] Route name for the approval callback
  /// [approvalStatus] Status of the approval. Uses ApprovalStatus enum.
  /// [resourceAction] Resource Action of the item being approved or declined.
  const RequestMetadataResponse({
    this.approvalCallbackPayload,
    this.approvalCallbackRoute,
    this.approvalStatus,
    required this.resourceAction,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalCallbackPayload': ?approvalCallbackPayload,
      'approvalCallbackRoute': ?approvalCallbackRoute,
      'approvalStatus': ?approvalStatus,
      'resourceAction': resourceAction,
    };
  }

  factory RequestMetadataResponse.fromMap(Map<String, dynamic> map) {
    return RequestMetadataResponse(
      approvalCallbackPayload: (() { final guardedValue = map['approvalCallbackPayload']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvalCallbackRoute: (() { final guardedValue = map['approvalCallbackRoute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      approvalStatus: (() { final guardedValue = map['approvalStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceAction: pulumi.Input.fromValue(map['resourceAction'] as String),
    );
  }
}

