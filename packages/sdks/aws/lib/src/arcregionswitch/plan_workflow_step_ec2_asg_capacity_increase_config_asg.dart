// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepEc2AsgCapacityIncreaseConfigAsg {
  /// ARN of the Auto Scaling group.
  final pulumi.Input<String> arn;

  /// ARN of the cross-account role to assume.
  final pulumi.Input<String>? crossAccountRole;

  /// External ID for cross-account role assumption.
  final pulumi.Input<String>? externalId;

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
      arn: pulumi.Input.fromValue(map['arn'] as String),
      crossAccountRole: (() {
        final guardedValue = map['crossAccountRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      externalId: (() {
        final guardedValue = map['externalId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
