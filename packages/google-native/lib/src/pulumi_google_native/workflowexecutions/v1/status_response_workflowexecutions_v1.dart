// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'step_response_workflowexecutions_v1.dart';

/// Represents the current status of this execution.
class StatusResponseWorkflowexecutionsV1 {
  /// A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  final List<StepResponseWorkflowexecutionsV1> currentSteps;

  StatusResponseWorkflowexecutionsV1({
    required this.currentSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentSteps'] = pulumi.Input.encodeList<
        StepResponseWorkflowexecutionsV1,
        Map<String, dynamic>>(currentSteps, (value) => value.toMap());
    return map;
  }

  factory StatusResponseWorkflowexecutionsV1.fromMap(Map<String, dynamic> map) {
    return StatusResponseWorkflowexecutionsV1(
      currentSteps: pulumi.Input.decodeList<StepResponseWorkflowexecutionsV1>(
          map['currentSteps'],
          (value) => StepResponseWorkflowexecutionsV1.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
