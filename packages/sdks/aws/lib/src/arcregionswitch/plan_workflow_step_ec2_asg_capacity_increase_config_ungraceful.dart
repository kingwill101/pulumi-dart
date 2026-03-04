// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful {
  /// Minimum success percentage required.
  final pulumi.Input<int> minimumSuccessPercentage;

  /// Creates a new [PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful].
  /// [minimumSuccessPercentage] Minimum success percentage required.
  PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful({
    required this.minimumSuccessPercentage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'minimumSuccessPercentage': minimumSuccessPercentage,
    };
  }

  factory PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepEc2AsgCapacityIncreaseConfigUngraceful(
      minimumSuccessPercentage: pulumi.Input.fromValue(
        map['minimumSuccessPercentage'] as int,
      ),
    );
  }
}
