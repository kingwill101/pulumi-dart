// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_set_response.dart';

/// The approval stage.
class ApprovalStageResponse {
  /// The time in days when approval request would be timed out
  final pulumi.Input<int>? approvalStageTimeOutInDays;
  /// The escalation approver of the request.
  final pulumi.Input<List<UserSetResponse>>? escalationApprovers;
  /// The time in minutes when the approval request would be escalated if the primary approver does not approve
  final pulumi.Input<int>? escalationTimeInMinutes;
  /// Determines whether approver need to provide justification for his decision.
  final pulumi.Input<bool>? isApproverJustificationRequired;
  /// The value determine whether escalation feature is enabled.
  final pulumi.Input<bool>? isEscalationEnabled;
  /// The primary approver of the request.
  final pulumi.Input<List<UserSetResponse>>? primaryApprovers;

  /// Creates a new [ApprovalStageResponse].
  /// [approvalStageTimeOutInDays] The time in days when approval request would be timed out
  /// [escalationApprovers] The escalation approver of the request.
  /// [escalationTimeInMinutes] The time in minutes when the approval request would be escalated if the primary approver does not approve
  /// [isApproverJustificationRequired] Determines whether approver need to provide justification for his decision.
  /// [isEscalationEnabled] The value determine whether escalation feature is enabled.
  /// [primaryApprovers] The primary approver of the request.
  ApprovalStageResponse({
    this.approvalStageTimeOutInDays,
    this.escalationApprovers,
    this.escalationTimeInMinutes,
    this.isApproverJustificationRequired,
    this.isEscalationEnabled,
    this.primaryApprovers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalStageTimeOutInDays': ?approvalStageTimeOutInDays,
      'escalationApprovers': ?pulumi.Input.mapOptionalInputValue<List<UserSetResponse>, List<Map<String, dynamic>>>(escalationApprovers, (value) => pulumi.Input.encodeList<UserSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'escalationTimeInMinutes': ?escalationTimeInMinutes,
      'isApproverJustificationRequired': ?isApproverJustificationRequired,
      'isEscalationEnabled': ?isEscalationEnabled,
      'primaryApprovers': ?pulumi.Input.mapOptionalInputValue<List<UserSetResponse>, List<Map<String, dynamic>>>(primaryApprovers, (value) => pulumi.Input.encodeList<UserSetResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApprovalStageResponse.fromMap(Map<String, dynamic> map) {
    return ApprovalStageResponse(
      approvalStageTimeOutInDays: map['approvalStageTimeOutInDays'] == null ? null : (map['approvalStageTimeOutInDays']! as int).input(),
      escalationApprovers: map['escalationApprovers'] == null ? null : (pulumi.Input.decodeList<UserSetResponse>(map['escalationApprovers']!, (value) => UserSetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      escalationTimeInMinutes: map['escalationTimeInMinutes'] == null ? null : (map['escalationTimeInMinutes']! as int).input(),
      isApproverJustificationRequired: map['isApproverJustificationRequired'] == null ? null : (map['isApproverJustificationRequired']! as bool).input(),
      isEscalationEnabled: map['isEscalationEnabled'] == null ? null : (map['isEscalationEnabled']! as bool).input(),
      primaryApprovers: map['primaryApprovers'] == null ? null : (pulumi.Input.decodeList<UserSetResponse>(map['primaryApprovers']!, (value) => UserSetResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

