// ignore_for_file: unused_element, unnecessary_cast

/// Represents a step of the workflow this execution is running.
class StepResponseWorkflowexecutionsV1beta {
  /// Name of a routine within the workflow.
  final String routine;

  /// Name of a step within the routine.
  final String step;

  StepResponseWorkflowexecutionsV1beta({
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['routine'] = routine;
    map['step'] = step;
    return map;
  }

  factory StepResponseWorkflowexecutionsV1beta.fromMap(
      Map<String, dynamic> map) {
    return StepResponseWorkflowexecutionsV1beta(
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
