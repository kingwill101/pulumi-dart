// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful].
  /// [ungraceful] Required.
  const PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepRdsSwitchoverReadReplicaConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}
