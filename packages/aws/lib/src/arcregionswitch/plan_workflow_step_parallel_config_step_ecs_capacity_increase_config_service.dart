// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService {
  final String clusterArn;
  final String? crossAccountRole;
  final String? externalId;

  /// ARN of the ECS service.
  final String serviceArn;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService].
  /// [clusterArn] Required.
  /// [crossAccountRole] Optional.
  /// [externalId] Optional.
  /// [serviceArn] ARN of the ECS service.
  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService({
    required this.clusterArn,
    this.crossAccountRole,
    this.externalId,
    required this.serviceArn,
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
    map['serviceArn'] = serviceArn;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigService(
      clusterArn: map['clusterArn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId:
          map['externalId'] == null ? null : map['externalId'] as String,
      serviceArn: map['serviceArn'] as String,
    );
  }
}
