// ignore_for_file: unused_element, unnecessary_cast

class PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final int minimumSuccessPercentage;

  PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['minimumSuccessPercentage'] = minimumSuccessPercentage;
    return map;
  }

  factory PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap(
      Map<String, dynamic> map) {
    return PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: map['minimumSuccessPercentage'] as int,
    );
  }
}
