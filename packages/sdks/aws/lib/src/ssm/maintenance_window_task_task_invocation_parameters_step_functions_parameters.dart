// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersStepFunctionsParameters {
  /// The inputs for the STEP_FUNCTION task.
  final pulumi.Input<String>? input;
  /// The name of the STEP_FUNCTION task.
  final pulumi.Input<String>? name;

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
      input: (() { final guardedValue = map['input']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

