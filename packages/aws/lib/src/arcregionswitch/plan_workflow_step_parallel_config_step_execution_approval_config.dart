// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepExecutionApprovalConfig {
  /// ARN of the IAM role for approval.
  final String approvalRole;

  /// Timeout in minutes for the approval.
  final int? timeoutMinutes;

  /// Creates a new [PlanWorkflowStepParallelConfigStepExecutionApprovalConfig].
  /// [approvalRole] ARN of the IAM role for approval.
  /// [timeoutMinutes] Timeout in minutes for the approval.
  PlanWorkflowStepParallelConfigStepExecutionApprovalConfig({
    required this.approvalRole,
    this.timeoutMinutes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approvalRole': approvalRole,
      'timeoutMinutes': ?timeoutMinutes,
    };
  }

  factory PlanWorkflowStepParallelConfigStepExecutionApprovalConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepExecutionApprovalConfig(
      approvalRole: map['approvalRole'] as String,
      timeoutMinutes: map['timeoutMinutes'] == null
          ? null
          : map['timeoutMinutes'] as int,
    );
  }
}
