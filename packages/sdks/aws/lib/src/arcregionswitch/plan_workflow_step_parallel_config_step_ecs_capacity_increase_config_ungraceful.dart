// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final pulumi.Input<int> minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  const PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEcsCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: pulumi.Input.fromValue(map['minimumSuccessPercentage'] as int),
    );
  }
}
