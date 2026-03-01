// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_set.dart';

/// The approval stage.
class ApprovalStage {
  /// The time in days when approval request would be timed out
  final int? approvalStageTimeOutInDays;
  /// The escalation approver of the request.
  final List<UserSet>? escalationApprovers;
  /// The time in minutes when the approval request would be escalated if the primary approver does not approve
  final int? escalationTimeInMinutes;
  /// Determines whether approver need to provide justification for his decision.
  final bool? isApproverJustificationRequired;
  /// The value determine whether escalation feature is enabled.
  final bool? isEscalationEnabled;
  /// The primary approver of the request.
  final List<UserSet>? primaryApprovers;

  /// Creates a new [ApprovalStage].
  /// [approvalStageTimeOutInDays] The time in days when approval request would be timed out
  /// [escalationApprovers] The escalation approver of the request.
  /// [escalationTimeInMinutes] The time in minutes when the approval request would be escalated if the primary approver does not approve
  /// [isApproverJustificationRequired] Determines whether approver need to provide justification for his decision.
  /// [isEscalationEnabled] The value determine whether escalation feature is enabled.
  /// [primaryApprovers] The primary approver of the request.
  ApprovalStage({
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
      'escalationApprovers': ?escalationApprovers == null ? null : pulumi.Input.encodeList<UserSet, Map<String, dynamic>>(escalationApprovers!, (value) => value.toMap()),
      'escalationTimeInMinutes': ?escalationTimeInMinutes,
      'isApproverJustificationRequired': ?isApproverJustificationRequired,
      'isEscalationEnabled': ?isEscalationEnabled,
      'primaryApprovers': ?primaryApprovers == null ? null : pulumi.Input.encodeList<UserSet, Map<String, dynamic>>(primaryApprovers!, (value) => value.toMap()),
    };
  }

  factory ApprovalStage.fromMap(Map<String, dynamic> map) {
    return ApprovalStage(
      approvalStageTimeOutInDays: map['approvalStageTimeOutInDays'] == null ? null : map['approvalStageTimeOutInDays'] as int,
      escalationApprovers: map['escalationApprovers'] == null ? null : pulumi.Input.decodeList<UserSet>(map['escalationApprovers'], (value) => UserSet.fromMap((value as Map).cast<String, dynamic>())),
      escalationTimeInMinutes: map['escalationTimeInMinutes'] == null ? null : map['escalationTimeInMinutes'] as int,
      isApproverJustificationRequired: map['isApproverJustificationRequired'] == null ? null : map['isApproverJustificationRequired'] as bool,
      isEscalationEnabled: map['isEscalationEnabled'] == null ? null : map['isEscalationEnabled'] as bool,
      primaryApprovers: map['primaryApprovers'] == null ? null : pulumi.Input.decodeList<UserSet>(map['primaryApprovers'], (value) => UserSet.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

