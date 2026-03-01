// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg {
  /// ARN of the Auto Scaling group.
  final String arn;

  /// ARN of the cross-account role to assume.
  final String? crossAccountRole;

  /// External ID for cross-account role assumption.
  final String? externalId;

  /// Creates a new [PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg].
  /// [arn] ARN of the Auto Scaling group.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg({
    required this.arn,
    this.crossAccountRole,
    this.externalId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'crossAccountRole': ?crossAccountRole,
      'externalId': ?externalId,
    };
  }

  factory PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg(
      arn: map['arn'] as String,
      crossAccountRole: map['crossAccountRole'] == null
          ? null
          : map['crossAccountRole'] as String,
      externalId: map['externalId'] == null
          ? null
          : map['externalId'] as String,
    );
  }
}
