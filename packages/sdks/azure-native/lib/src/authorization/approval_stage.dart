// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_set.dart';

/// The approval stage.
class ApprovalStage {
  /// The time in days when approval request would be timed out
  final pulumi.Input<int?>? approvalStageTimeOutInDays;
  /// The escalation approver of the request.
  final pulumi.Input<List<UserSet>?>? escalationApprovers;
  /// The time in minutes when the approval request would be escalated if the primary approver does not approve
  final pulumi.Input<int?>? escalationTimeInMinutes;
  /// Determines whether approver need to provide justification for his decision.
  final pulumi.Input<bool?>? isApproverJustificationRequired;
  /// The value determine whether escalation feature is enabled.
  final pulumi.Input<bool?>? isEscalationEnabled;
  /// The primary approver of the request.
  final pulumi.Input<List<UserSet>?>? primaryApprovers;

  /// Creates a new [ApprovalStage].
  /// [approvalStageTimeOutInDays] The time in days when approval request would be timed out
  /// [escalationApprovers] The escalation approver of the request.
  /// [escalationTimeInMinutes] The time in minutes when the approval request would be escalated if the primary approver does not approve
  /// [isApproverJustificationRequired] Determines whether approver need to provide justification for his decision.
  /// [isEscalationEnabled] The value determine whether escalation feature is enabled.
  /// [primaryApprovers] The primary approver of the request.
  const ApprovalStage({
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
      'escalationApprovers': ?pulumi.Input.mapOptionalInputValue<List<UserSet>, List<Map<String, dynamic>>>(escalationApprovers, (value) => pulumi.Input.encodeList<UserSet, Map<String, dynamic>>(value, (value) => value.toMap())),
      'escalationTimeInMinutes': ?escalationTimeInMinutes,
      'isApproverJustificationRequired': ?isApproverJustificationRequired,
      'isEscalationEnabled': ?isEscalationEnabled,
      'primaryApprovers': ?pulumi.Input.mapOptionalInputValue<List<UserSet>, List<Map<String, dynamic>>>(primaryApprovers, (value) => pulumi.Input.encodeList<UserSet, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ApprovalStage.fromMap(Map<String, dynamic> map) {
    return ApprovalStage(
      approvalStageTimeOutInDays: (() { final guardedValue = map['approvalStageTimeOutInDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      escalationApprovers: (() { final guardedValue = map['escalationApprovers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserSet>(guardedValue, (value) => UserSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
      escalationTimeInMinutes: (() { final guardedValue = map['escalationTimeInMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      isApproverJustificationRequired: (() { final guardedValue = map['isApproverJustificationRequired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      isEscalationEnabled: (() { final guardedValue = map['isEscalationEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      primaryApprovers: (() { final guardedValue = map['primaryApprovers']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserSet>(guardedValue, (value) => UserSet.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
