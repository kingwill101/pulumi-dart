// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg {
  /// ARN of the Auto Scaling group.
  final String arn;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    final crossAccountRoleValue = crossAccountRole;
    if (crossAccountRoleValue != null) {
      map['crossAccountRole'] = crossAccountRoleValue;
    }
    final externalIdValue = externalId;
    if (externalIdValue != null) {
      map['externalId'] = externalIdValue;
    }
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg(
      arn: map['arn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
    );
  }
}
