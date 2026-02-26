// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../entitlement_approval_workflow_manual_approvals_step/entitlement_approval_workflow_manual_approvals_step.dart';

class EntitlementApprovalWorkflowManualApprovals {
  /// Optional. Do the approvers need to provide a justification for their actions?
  final bool? requireApproverJustification;

  /// List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  /// Structure is documented below.
  final List<EntitlementApprovalWorkflowManualApprovalsStep> steps;

  EntitlementApprovalWorkflowManualApprovals({
    this.requireApproverJustification,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final requireApproverJustificationValue = requireApproverJustification;
    if (requireApproverJustificationValue != null) {
      map['requireApproverJustification'] = requireApproverJustificationValue;
    }
    map['steps'] = Input.encodeList<
        EntitlementApprovalWorkflowManualApprovalsStep,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    return map;
  }

  factory EntitlementApprovalWorkflowManualApprovals.fromMap(
      Map<String, dynamic> map) {
    return EntitlementApprovalWorkflowManualApprovals(
      requireApproverJustification: map['requireApproverJustification'] == null
          ? null
          : map['requireApproverJustification'] as bool,
      steps: Input.decodeList<EntitlementApprovalWorkflowManualApprovalsStep>(
          map['steps'],
          (value) => EntitlementApprovalWorkflowManualApprovalsStep.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
