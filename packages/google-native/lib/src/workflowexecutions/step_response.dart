// ignore_for_file: unused_element, unnecessary_cast

/// Represents a step of the workflow this execution is running.
class StepResponse {
  /// Name of a routine within the workflow.
  final String routine;

  /// Name of a step within the routine.
  final String step;

  /// Creates a new [StepResponse].
  /// [routine] Name of a routine within the workflow.
  /// [step] Name of a step within the routine.
  StepResponse({required this.routine, required this.step});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'routine': routine, 'step': step};
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      routine: map['routine'] as String,
      step: map['step'] as String,
    );
  }
}
