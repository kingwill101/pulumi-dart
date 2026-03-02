// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepGlobalAuroraConfigUngraceful {
  final pulumi.Input<String> ungraceful;

  /// Creates a new [PlanWorkflowStepGlobalAuroraConfigUngraceful].
  /// [ungraceful] Required.
  PlanWorkflowStepGlobalAuroraConfigUngraceful({
    required this.ungraceful,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ungraceful': ungraceful,
    };
  }

  factory PlanWorkflowStepGlobalAuroraConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepGlobalAuroraConfigUngraceful(
      ungraceful: (map['ungraceful'] as String).input(),
    );
  }
}

