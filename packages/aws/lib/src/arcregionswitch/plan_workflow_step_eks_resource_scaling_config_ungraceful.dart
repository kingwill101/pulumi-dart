// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEksResourceScalingConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepEksResourceScalingConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepEksResourceScalingConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepEksResourceScalingConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepEksResourceScalingConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
