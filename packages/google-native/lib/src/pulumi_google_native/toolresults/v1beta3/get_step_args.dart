// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getStep.
class GetStepArgs {
  final pulumi.Input<String> executionId;
  final pulumi.Input<String> historyId;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> stepId;

  GetStepArgs({
    required this.executionId,
    required this.historyId,
    this.project,
    required this.stepId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['executionId'] = executionId;
    map['historyId'] = historyId;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['stepId'] = stepId;
    return map;
  }

  factory GetStepArgs.fromMap(Map<String, dynamic> map) {
    return GetStepArgs(
      executionId: pulumi.Input.asInput<String>(map['executionId']),
      historyId: pulumi.Input.asInput<String>(map['historyId']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      stepId: pulumi.Input.asInput<String>(map['stepId']),
    );
  }
}
