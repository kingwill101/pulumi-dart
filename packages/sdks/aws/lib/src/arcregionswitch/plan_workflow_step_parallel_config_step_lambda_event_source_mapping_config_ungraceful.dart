// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful {
  final pulumi.Input<String> behavior;

  /// Creates a new [PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful].
  /// [behavior] Required.
  const PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'behavior': behavior,
    };
  }

  factory PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful.fromMap(Map<String, dynamic> map) {
    return PlanWorkflowStepParallelConfigStepLambdaEventSourceMappingConfigUngraceful(
      behavior: pulumi.Input.fromValue(map['behavior'] as String),
    );
  }
}
