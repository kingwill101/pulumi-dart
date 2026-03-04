// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful {
  /// Behavior when ungraceful. Valid values: `skip`.
  final pulumi.Input<String> behavior;

  /// Creates a new [PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful].
  /// [behavior] Behavior when ungraceful. Valid values: `skip`.
  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'behavior': behavior};
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}
