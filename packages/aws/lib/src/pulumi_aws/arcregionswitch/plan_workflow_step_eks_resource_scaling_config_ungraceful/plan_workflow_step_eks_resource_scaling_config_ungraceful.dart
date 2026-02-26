// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  PlanWorkflowStepEksResourceScalingConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumSuccessPercentage'] = minimumSuccessPercentage;
    return map;
  }

  factory PlanWorkflowStepEksResourceScalingConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEksResourceScalingConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
