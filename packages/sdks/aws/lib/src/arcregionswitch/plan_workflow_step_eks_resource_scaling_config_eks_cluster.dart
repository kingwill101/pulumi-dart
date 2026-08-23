// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepEksResourceScalingConfigEksCluster {
  /// ARN of the EKS cluster.
  final pulumi.Input<String> clusterArn;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfigEksCluster].
  /// [clusterArn] ARN of the EKS cluster.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  const PlanWorkflowStepEksResourceScalingConfigEksCluster({
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

  factory PlanWorkflowStepEksResourceScalingConfigEksCluster.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigEksCluster(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
