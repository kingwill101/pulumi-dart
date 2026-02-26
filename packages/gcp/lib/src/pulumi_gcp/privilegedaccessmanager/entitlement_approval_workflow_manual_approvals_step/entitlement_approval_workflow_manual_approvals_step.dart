// ignore_for_file: unused_element, unnecessary_cast

import '../entitlement_approval_workflow_manual_approvals_step_approvers/entitlement_approval_workflow_manual_approvals_step_approvers.dart';

class EntitlementApprovalWorkflowManualApprovalsStep {
  /// How many users from the above list need to approve.
  /// If there are not enough distinct users in the list above then the workflow
  /// will indefinitely block. Should always be greater than 0. Currently 1 is the only
  /// supported value.
  final int? approvalsNeeded;

  /// Optional. Additional email addresses to be notified when a grant is pending approval.
  final List<String>? approverEmailRecipients;

  /// The potential set of approvers in this step. This list should contain at only one entry.
  /// Structure is documented below.
  final EntitlementApprovalWorkflowManualApprovalsStepApprovers approvers;

  /// (Output, Beta)
  /// Output Only. The ID of the approval step.
  final String? id;

  EntitlementApprovalWorkflowManualApprovalsStep({
    this.approvalsNeeded,
    this.approverEmailRecipients,
    required this.approvers,
    this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final approvalsNeededValue = approvalsNeeded;
    if (approvalsNeededValue != null) {
      map['approvalsNeeded'] = approvalsNeededValue;
    }
    final approverEmailRecipientsValue = approverEmailRecipients;
    if (approverEmailRecipientsValue != null) {
      map['approverEmailRecipients'] = approverEmailRecipientsValue;
    }
    map['approvers'] = approvers.toMap();
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    return map;
  }

  factory EntitlementApprovalWorkflowManualApprovalsStep.fromMap(
      Map<String, dynamic> map) {
    return EntitlementApprovalWorkflowManualApprovalsStep(
      approvalsNeeded:
          map['approvalsNeeded'] == null ? null : map['approvalsNeeded'] as int,
      approverEmailRecipients: map['approverEmailRecipients'] == null
          ? null
          : (map['approverEmailRecipients'] as List).cast<String>(),
      approvers:
          EntitlementApprovalWorkflowManualApprovalsStepApprovers.fromMap(
              (map['approvers'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}
