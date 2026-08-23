// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful].
  /// [ungraceful] Required.
  const PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepNeptuneGlobalDatabaseConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}
