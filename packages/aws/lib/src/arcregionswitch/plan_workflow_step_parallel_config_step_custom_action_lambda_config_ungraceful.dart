// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful {
  /// Behavior when ungraceful. Valid values: `skip`.
  final String behavior;

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
      behavior: map['behavior'] as String,
    );
  }
}
