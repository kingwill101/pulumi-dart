// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_entitlement_approval_workflow_manual_approval_step/get_entitlement_approval_workflow_manual_approval_step.dart';

class GetEntitlementApprovalWorkflowManualApproval {
  /// Optional. Do the approvers need to provide a justification for their actions?
  final bool requireApproverJustification;

  /// List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  final List<GetEntitlementApprovalWorkflowManualApprovalStep> steps;

  GetEntitlementApprovalWorkflowManualApproval({
    required this.requireApproverJustification,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireApproverJustification'] = requireApproverJustification;
    map['steps'] = Input.encodeList<
        GetEntitlementApprovalWorkflowManualApprovalStep,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    return map;
  }

  factory GetEntitlementApprovalWorkflowManualApproval.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApproval(
      requireApproverJustification: map['requireApproverJustification'] as bool,
      steps: Input.decodeList<GetEntitlementApprovalWorkflowManualApprovalStep>(
          map['steps'],
          (value) => GetEntitlementApprovalWorkflowManualApprovalStep.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
