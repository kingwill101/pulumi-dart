// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg {
  /// ARN of the Auto Scaling group.
  final pulumi.Input<String> arn;
  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;
  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg].
  /// [arn] ARN of the Auto Scaling group.
  /// [crossAccountRole] ARN of the cross-account role to assume.
  /// [externalId] External ID for cross-account role assumption.
  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg({
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

  factory PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigAsg(
      arn: (map['arn'] as String).input(),
      crossAccountRole: map['crossAccountRole'] == null ? null : (map['crossAccountRole'] as String).input(),
      externalId: map['externalId'] == null ? null : (map['externalId'] as String).input(),
    );
  }
}

