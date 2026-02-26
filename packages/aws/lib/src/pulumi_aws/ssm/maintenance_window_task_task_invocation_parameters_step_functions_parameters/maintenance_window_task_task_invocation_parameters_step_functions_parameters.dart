// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters {
  /// The inputs for the STEP_FUNCTION task.
  final String? input;

  /// The name of the STEP_FUNCTION task.
  final String? name;

  MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters({
    this.input,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final inputValue = input;
    if (inputValue != null) {
      map['input'] = inputValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters.fromMap(
      Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters(
      input: map['input'] == null ? null : map['input'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
