// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful {
  final pulumi.Input<String> behavior;

  /// Creates a new [PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful].
  /// [behavior] Required.
  const PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}
