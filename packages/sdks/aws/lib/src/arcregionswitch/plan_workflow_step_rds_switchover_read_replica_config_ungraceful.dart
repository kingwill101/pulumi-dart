// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepRdsSwitchoverReadReplicaConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepRdsSwitchoverReadReplicaConfigUngraceful].
  /// [ungraceful] Required.
  const PlanWorkflowStepRdsSwitchoverReadReplicaConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepRdsSwitchoverReadReplicaConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepRdsSwitchoverReadReplicaConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}
