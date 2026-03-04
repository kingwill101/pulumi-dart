// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'ungraceful': ungraceful};
  }

  factory PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful.fromMap(
    Map<String, dynamic> map,
  ) {
    return PlanWorkflowStepParallelConfigStepGlobalAuroraConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}
