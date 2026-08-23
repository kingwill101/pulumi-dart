// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful {
  final pulumi.Input<String> behavior;

  /// Creates a new [PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful].
  /// [behavior] Required.
  const PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepLambdaEventSourceMappingConfigUngraceful(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}
