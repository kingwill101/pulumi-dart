// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'step_response5.dart';

/// Represents the current status of this execution.
class StatusResponse33 {
  /// A list of currently executing or last executed step names for the workflow execution currently running. If the workflow has succeeded or failed, this is the last attempted or executed step. Presently, if the current step is inside a subworkflow, the list only includes that step. In the future, the list will contain items for each step in the call stack, starting with the outermost step in the `main` subworkflow, and ending with the most deeply nested step.
  final List<StepResponse5> currentSteps;

  StatusResponse33({
    required this.currentSteps,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['currentSteps'] = Input.encodeList<StepResponse5, Map<String, dynamic>>(
        currentSteps, (value) => value.toMap());
    return map;
  }

  factory StatusResponse33.fromMap(Map<String, dynamic> map) {
    return StatusResponse33(
      currentSteps: Input.decodeList<StepResponse5>(
          map['currentSteps'],
          (value) =>
              StepResponse5.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
