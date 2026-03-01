// ignore_for_file: unused_element, unnecessary_cast


/// Request Metadata for approvals request.
class RequestMetadataResponse {
  /// Payload to be sent upon any action on approval request
  final String? approvalCallbackPayload;
  /// Route name for the approval callback
  final String? approvalCallbackRoute;
  /// Status of the approval. Uses ApprovalStatus enum.
  final String? approvalStatus;
  /// Resource Action of the item being approved or declined.
  final String resourceAction;

  /// Creates a new [RequestMetadataResponse].
  /// [approvalCallbackPayload] Payload to be sent upon any action on approval request
  /// [approvalCallbackRoute] Route name for the approval callback
  /// [approvalStatus] Status of the approval. Uses ApprovalStatus enum.
  /// [resourceAction] Resource Action of the item being approved or declined.
  RequestMetadataResponse({
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
      approvalCallbackPayload: map['approvalCallbackPayload'] == null ? null : map['approvalCallbackPayload'] as String,
      approvalCallbackRoute: map['approvalCallbackRoute'] == null ? null : map['approvalCallbackRoute'] as String,
      approvalStatus: map['approvalStatus'] == null ? null : map['approvalStatus'] as String,
      resourceAction: map['resourceAction'] as String,
    );
  }
}

