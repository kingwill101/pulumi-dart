// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter {
  /// The parameter name.
  final pulumi.Input<String> name;
  /// The array of strings.
  final pulumi.Input<List<String>> values;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter].
  /// [name] The parameter name.
  /// [values] The array of strings.
  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter.fromMap(Map<String, dynamic> map) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

