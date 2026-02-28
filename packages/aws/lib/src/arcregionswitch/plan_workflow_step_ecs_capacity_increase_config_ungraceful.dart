// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumSuccessPercentage'] = minimumSuccessPercentage;
    return map;
  }

  factory PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEcsCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
