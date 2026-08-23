// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService {
  /// ARN of the ECS cluster.
  final pulumi.Input<String> clusterArn;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;
  /// ARN of the ECS service.
  final pulumi.Input<String> serviceArn;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService].
  /// [clusterArn] ARN of the ECS cluster.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  /// [serviceArn] ARN of the ECS service.
  const PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
    required this.serviceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
      'serviceArn': serviceArn,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      crossAccountRole: (() { final guardedValue = map['crossAccountRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      externalId: (() { final guardedValue = map['externalId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceArn: pulumi.Input.fromValue(map['serviceArn'] as String),
    );
  }
}
