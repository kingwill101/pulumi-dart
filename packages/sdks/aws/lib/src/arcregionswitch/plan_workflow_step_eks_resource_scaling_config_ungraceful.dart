// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepEksResourceScalingConfigUngraceful {
  /// Minimum success percentage required.
  final pulumi.Input<int> minimumSuccessPercentage;

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
      minimumSuccessPercentage: pulumi.Input.fromValue(
        map['minimumSuccessPercentage'] as int,
      ),
    );
  }
}
