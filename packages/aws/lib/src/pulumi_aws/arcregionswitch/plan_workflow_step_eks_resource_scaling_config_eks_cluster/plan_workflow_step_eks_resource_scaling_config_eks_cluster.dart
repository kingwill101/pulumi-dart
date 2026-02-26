// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigEksCluster {
  /// ARN of the EKS cluster.
  final String clusterArn;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  PlanWorkflowStepEksResourceScalingConfigEksCluster({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterArn'] = clusterArn;
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

  factory PlanWorkflowStepEksResourceScalingConfigEksCluster.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigEksCluster(
      clusterArn: map['clusterArn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
    );
  }
}
