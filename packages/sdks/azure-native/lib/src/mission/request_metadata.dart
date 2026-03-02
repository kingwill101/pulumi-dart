// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Request Metadata for approvals request.
class RequestMetadata {
  /// Payload to be sent upon any action on approval request
  final pulumi.Input<String>? approvalCallbackPayload;
  /// Route name for the approval callback
  final pulumi.Input<String>? approvalCallbackRoute;
  /// Status of the approval. Uses ApprovalStatus enum.
  final pulumi.Input<String>? approvalStatus;
  /// Resource Action of the item being approved or declined.
  final pulumi.Input<String> resourceAction;

  /// Creates a new [RequestMetadata].
  /// [approvalCallbackPayload] Payload to be sent upon any action on approval request
  /// [approvalCallbackRoute] Route name for the approval callback
  /// [approvalStatus] Status of the approval. Uses ApprovalStatus enum.
  /// [resourceAction] Resource Action of the item being approved or declined.
  RequestMetadata({
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

  factory RequestMetadata.fromMap(Map<String, dynamic> map) {
    return RequestMetadata(
      approvalCallbackPayload: map['approvalCallbackPayload'] == null ? null : (map['approvalCallbackPayload']! as String).input(),
      approvalCallbackRoute: map['approvalCallbackRoute'] == null ? null : (map['approvalCallbackRoute']! as String).input(),
      approvalStatus: map['approvalStatus'] == null ? null : (map['approvalStatus']! as String).input(),
      resourceAction: (map['resourceAction'] as String).input(),
    );
  }
}

