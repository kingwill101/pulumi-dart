// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter {
  /// The parameter name.
  final pulumi.Input<String> name;
  /// The array of strings.
  final pulumi.Input<List<String>> values;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter].
  /// [name] The parameter name.
  /// [values] The array of strings.
  const MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

