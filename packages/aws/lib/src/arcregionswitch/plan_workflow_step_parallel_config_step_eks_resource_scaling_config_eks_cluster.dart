// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster {
  /// ARN of the EKS cluster.
  final String clusterArn;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster].
  /// [clusterArn] ARN of the EKS cluster.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster(
      clusterArn: map['clusterArn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
    );
  }
}
