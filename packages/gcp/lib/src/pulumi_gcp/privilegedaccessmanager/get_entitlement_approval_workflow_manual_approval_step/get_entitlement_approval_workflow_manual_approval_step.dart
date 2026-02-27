// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_entitlement_approval_workflow_manual_approval_step_approver/get_entitlement_approval_workflow_manual_approval_step_approver.dart';

class GetEntitlementApprovalWorkflowManualApprovalStep {
  /// How many users from the above list need to approve.
  /// If there are not enough distinct users in the list above then the workflow
  /// will indefinitely block. Should always be greater than 0. Currently 1 is the only
  /// supported value.
  final int approvalsNeeded;

  /// Optional. Additional email addresses to be notified when a grant is pending approval.
  final List<String> approverEmailRecipients;

  /// The potential set of approvers in this step. This list should contain at only one entry.
  final List<GetEntitlementApprovalWorkflowManualApprovalStepApprover>
      approvers;

  /// Output Only. The ID of the approval step.
  final String id;

  GetEntitlementApprovalWorkflowManualApprovalStep({
    required this.approvalsNeeded,
    required this.approverEmailRecipients,
    required this.approvers,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['approvalsNeeded'] = approvalsNeeded;
    map['approverEmailRecipients'] = approverEmailRecipients;
    map['approvers'] = pulumi.Input.encodeList<
        GetEntitlementApprovalWorkflowManualApprovalStepApprover,
        Map<String, dynamic>>(approvers, (value) => value.toMap());
    map['id'] = id;
    return map;
  }

  factory GetEntitlementApprovalWorkflowManualApprovalStep.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApprovalStep(
      approvalsNeeded: map['approvalsNeeded'] as int,
      approverEmailRecipients:
          (map['approverEmailRecipients'] as List).cast<String>(),
      approvers: pulumi.Input.decodeList<
              GetEntitlementApprovalWorkflowManualApprovalStepApprover>(
          map['approvers'],
          (value) =>
              GetEntitlementApprovalWorkflowManualApprovalStepApprover.fromMap(
                  (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
    );
  }
}
