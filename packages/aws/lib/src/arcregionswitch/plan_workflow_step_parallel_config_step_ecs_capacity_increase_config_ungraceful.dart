// ignore_for_file: unused_element, unnecessary_cast


class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}

