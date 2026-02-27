// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepCustomActionLambdaConfigUngraceful {
  /// Behavior when ungraceful. Valid values: `skip`.
  final String behavior;

  PlanWorkflowStepCustomActionLambdaConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    return map;
  }

  factory PlanWorkflowStepCustomActionLambdaConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepCustomActionLambdaConfigUngraceful(
      behavior: map['behavior'] as String,
    );
  }
}
