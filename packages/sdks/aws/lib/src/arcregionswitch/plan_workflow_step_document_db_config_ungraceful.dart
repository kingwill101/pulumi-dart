// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepDocumentDbConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepDocumentDbConfigUngraceful].
  /// [ungraceful] Required.
  const PlanWorkflowStepDocumentDbConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepDocumentDbConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepDocumentDbConfigUngraceful(
      ungraceful: pulumi.Input.fromValue(map['ungraceful'] as String),
    );
  }
}

