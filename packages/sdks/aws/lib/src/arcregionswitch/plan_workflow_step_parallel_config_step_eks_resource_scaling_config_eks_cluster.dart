// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster {
  /// ARN of the EKS cluster.
  final pulumi.Input<String> clusterArn;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;

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

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigEksCluster(
      clusterArn: (map['clusterArn'] as String).input(),
      crossAccountRole: map['crossAccountRole'] == null ? null : ((map['crossAccountRole'] as String).input()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
    );
  }
}

