// ignore_for_file: unused_element, unnecessary_cast


class MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters {
  /// The inputs for the STEP_FUNCTION task.
  final String? input;
  /// The name of the STEP_FUNCTION task.
  final String? name;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters].
  /// [input] The inputs for the STEP_FUNCTION task.
  /// [name] The name of the STEP_FUNCTION task.
  MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters({
    this.input,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'input': ?input,
      'name': ?name,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters(
      input: map['input'] == null ? null : map['input'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

