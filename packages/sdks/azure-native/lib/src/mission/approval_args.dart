// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'approver.dart';
import 'request_metadata.dart';

/// {@template pulumi_mission_approval_args_doc}
/// The set of arguments for Approval.
/// {@endtemplate}
/// {@macro pulumi_mission_approval_args_doc}
class ApprovalArgs {
  /// The name of the approvals resource.
  final pulumi.Input<String>? approvalName;
  /// List of approvers for the approval request
  final pulumi.Input<List<Approver>>? approvers;
  /// Approval request creation time
  final pulumi.Input<String>? createdAt;
  /// Parameter for optimizing query results
  final pulumi.Input<String>? grandparentResourceId;
  /// Parameter for optimizing query results
  final pulumi.Input<String>? parentResourceId;
  /// Request metadata for the approval request.
  final pulumi.Input<RequestMetadata> requestMetadata;
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// Approval request state change time, time at which approval request state changed from pending to approved or rejected.
  final pulumi.Input<String>? stateChangedAt;
  /// Ticket ID for the approval request
  final pulumi.Input<String>? ticketId;

  /// Creates a new [ApprovalArgs].
  /// [approvalName] The name of the approvals resource.
  /// [approvers] List of approvers for the approval request
  /// [createdAt] Approval request creation time
  /// [grandparentResourceId] Parameter for optimizing query results
  /// [parentResourceId] Parameter for optimizing query results
  /// [requestMetadata] Request metadata for the approval request.
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [stateChangedAt] Approval request state change time, time at which approval request state changed from pending to approved or rejected.
  /// [ticketId] Ticket ID for the approval request
  ApprovalArgs({
    this.approvalName,
    this.approvers,
    this.createdAt,
    this.grandparentResourceId,
    this.parentResourceId,
    required this.requestMetadata,
    required this.resourceUri,
    this.stateChangedAt,
    this.ticketId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalName': ?approvalName,
      'approvers': ?pulumi.Input.mapOptionalInputValue<List<Approver>, List<Map<String, dynamic>>>(approvers, (value) => pulumi.Input.encodeList<Approver, Map<String, dynamic>>(value, (value) => value.toMap())),
      'createdAt': ?createdAt,
      'grandparentResourceId': ?grandparentResourceId,
      'parentResourceId': ?parentResourceId,
      'requestMetadata': pulumi.Input.mapInputValue<RequestMetadata, Map<String, dynamic>>(requestMetadata, (value) => value.toMap()),
      'resourceUri': resourceUri,
      'stateChangedAt': ?stateChangedAt,
      'ticketId': ?ticketId,
    };
  }

  factory ApprovalArgs.fromMap(Map<String, dynamic> map) {
    return ApprovalArgs(
      approvalName: map['approvalName'] == null ? null : (map['approvalName']! as String).input(),
      approvers: map['approvers'] == null ? null : (pulumi.Input.decodeList<Approver>(map['approvers']!, (value) => Approver.fromMap((value as Map).cast<String, dynamic>()))).input(),
      createdAt: map['createdAt'] == null ? null : (map['createdAt']! as String).input(),
      grandparentResourceId: map['grandparentResourceId'] == null ? null : (map['grandparentResourceId']! as String).input(),
      parentResourceId: map['parentResourceId'] == null ? null : (map['parentResourceId']! as String).input(),
      requestMetadata: (RequestMetadata.fromMap((map['requestMetadata'] as Map).cast<String, dynamic>())).input(),
      resourceUri: (map['resourceUri'] as String).input(),
      stateChangedAt: map['stateChangedAt'] == null ? null : (map['stateChangedAt']! as String).input(),
      ticketId: map['ticketId'] == null ? null : (map['ticketId']! as String).input(),
    );
  }
}

