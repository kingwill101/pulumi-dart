// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEcsCapacityIncreaseConfigService {
  final String clusterArn;
  final String? crossAccountRole;
  final String? externalId;

  /// ARN of the ECS service.
  final String serviceArn;

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

  factory PlanWorkflowStepEcsCapacityIncreaseConfigService.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepEcsCapacityIncreaseConfigService(
      clusterArn: map['clusterArn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
      serviceArn: map['serviceArn'] as String,
    );
  }
}
