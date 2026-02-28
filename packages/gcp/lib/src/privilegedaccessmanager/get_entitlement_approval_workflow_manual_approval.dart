// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_entitlement_approval_workflow_manual_approval_step.dart';

class GetEntitlementApprovalWorkflowManualApproval {
  /// Optional. Do the approvers need to provide a justification for their actions?
  final bool requireApproverJustification;

  /// List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  final List<GetEntitlementApprovalWorkflowManualApprovalStep> steps;

  /// Creates a new [GetEntitlementApprovalWorkflowManualApproval].
  /// [requireApproverJustification] Optional. Do the approvers need to provide a justification for their actions?
  /// [steps] List of approval steps in this workflow. These steps would be followed in the specified order sequentially.
  GetEntitlementApprovalWorkflowManualApproval({
    required this.requireApproverJustification,
    required this.steps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['requireApproverJustification'] = requireApproverJustification;
    map['steps'] = pulumi.Input.encodeList<
        GetEntitlementApprovalWorkflowManualApprovalStep,
        Map<String, dynamic>>(steps, (value) => value.toMap());
    return map;
  }

  factory GetEntitlementApprovalWorkflowManualApproval.fromMap(
      Map<String, dynamic> map) {
    return GetEntitlementApprovalWorkflowManualApproval(
      requireApproverJustification: map['requireApproverJustification'] as bool,
      steps: pulumi.Input.decodeList<
              GetEntitlementApprovalWorkflowManualApprovalStep>(
          map['steps'],
          (value) => GetEntitlementApprovalWorkflowManualApprovalStep.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
