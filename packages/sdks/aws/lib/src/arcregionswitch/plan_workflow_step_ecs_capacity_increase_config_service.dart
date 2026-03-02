// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepEcsCapacityIncreaseConfigService {
  final pulumi.Input<String> clusterArn;
  final pulumi.Input<String>? crossAccountRole;
  final pulumi.Input<String>? externalId;
  /// ARN of the ECS service.
  final pulumi.Input<String> serviceArn;

  /// Creates a new [PlanWorkflowStepEcsCapacityIncreaseConfigService].
  /// [clusterArn] Required.
  /// [crossAccountRole] Optional.
  /// [externalId] Optional.
  /// [serviceArn] ARN of the ECS service.
  PlanWorkflowStepEcsCapacityIncreaseConfigService({
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

  factory PlanWorkflowStepEcsCapacityIncreaseConfigService.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepEcsCapacityIncreaseConfigService(
      clusterArn: (map['clusterArn'] as String).input(),
      crossAccountRole: map['crossAccountRole'] == null ? null : ((map['crossAccountRole'] as String).input()).input(),
      externalId: map['externalId'] == null ? null : ((map['externalId'] as String).input()).input(),
      serviceArn: (map['serviceArn'] as String).input(),
    );
  }
}

