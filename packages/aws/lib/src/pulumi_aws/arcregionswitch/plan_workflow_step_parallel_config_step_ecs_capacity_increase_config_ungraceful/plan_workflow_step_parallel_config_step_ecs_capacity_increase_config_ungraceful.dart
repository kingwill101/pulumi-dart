// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumSuccessPercentage'] = minimumSuccessPercentage;
    return map;
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
