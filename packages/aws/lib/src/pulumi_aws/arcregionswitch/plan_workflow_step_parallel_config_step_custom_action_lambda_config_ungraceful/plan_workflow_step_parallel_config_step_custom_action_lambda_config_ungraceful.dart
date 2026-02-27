// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful {
  /// Behavior when ungraceful. Valid values: `skip`.
  final String behavior;

  PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepCustomActionLambdaConfigUngraceful(
      behavior: map['behavior'] as String,
    );
  }
}
