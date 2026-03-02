// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful {
  /// Minimum success percentage required.
  final pulumi.Input<int> minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepEksResourceScalingConfigUngraceful(
      minimumSuccessPercentage: (map['minimumSuccessPercentage'] as int).input(),
    );
  }
}

