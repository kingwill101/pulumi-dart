// ignore_for_file: unused_element, unnecessary_cast

/// Represents a step of the workflow this execution is running.
class StepResponse5 {
  /// Name of a routine within the workflow.
  final String routine;

  /// Name of a step within the routine.
  final String step;

  StepResponse5({
    required this.routine,
    required this.step,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['routine'] = routine;
    map['step'] = step;
    return map;
  }

  factory StepResponse5.fromMap(Map<String, dynamic> map) {
    return StepResponse5(
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
