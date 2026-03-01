// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepEc2AsgCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
