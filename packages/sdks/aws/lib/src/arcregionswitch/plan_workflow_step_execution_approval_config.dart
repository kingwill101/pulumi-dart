// ignore_for_file: unused_element, unnecessary_cast


class PlanWorkflowStepExecutionApprovalConfig {
  /// ARN of the IAM role for approval.
  final String approvalRole;
  /// Timeout in minutes for the approval.
  final int? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepExecutionApprovalConfig].
  /// [approvalRole] ARN of the IAM role for approval.
  /// [timeoutMinutes] Timeout in minutes for the approval.
  PlanWorkflowStepExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRole': approvalRole,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepExecutionApprovalConfig.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepExecutionApprovalConfig(
      approvalRole: map['approvalRole'] as String,
      timeoutMinutes: map['timeoutMinutes'] == null ? null : map['timeoutMinutes'] as int,
    );
  }
}

