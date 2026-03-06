// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepCustomActionLambdaConfigUngraceful {
  /// Behavior when ungraceful. Valid values: `skip`.
  final pulumi.Input<String> behavior;

  /// Creates a new [PlanWorkflowStepCustomActionLambdaConfigUngraceful].
  /// [behavior] Behavior when ungraceful. Valid values: `skip`.
  const PlanWorkflowStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory PlanWorkflowStepCustomActionLambdaConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepCustomActionLambdaConfigUngraceful(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}

