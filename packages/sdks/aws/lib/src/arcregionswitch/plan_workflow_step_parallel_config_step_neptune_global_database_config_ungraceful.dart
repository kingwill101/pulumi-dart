// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful].
  /// [ungraceful] Required.
  const PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepNeptuneGlobalDatabaseConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}
