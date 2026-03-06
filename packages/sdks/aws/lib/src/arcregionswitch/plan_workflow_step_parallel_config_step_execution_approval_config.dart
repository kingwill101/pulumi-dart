// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepExecutionApprovalConfig {
  /// ARN of the IAM role for approval.
  final pulumi.Input<String> approvalRole;
  /// Timeout in minutes for the approval.
  final pulumi.Input<int>? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepExecutionApprovalConfig].
  /// [approvalRole] ARN of the IAM role for approval.
  /// [timeoutMinutes] Timeout in minutes for the approval.
  const PlanWorkflowStepParallelConfigStepExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRole': approvalRole,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepParallelConfigStepExecutionApprovalConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepExecutionApprovalConfig(
      approvalRole: pulumi.Input.fromValue(map['approvalRole'] as String),
      timeoutMinutes: (() { final guardedValue = map['timeoutMinutes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

