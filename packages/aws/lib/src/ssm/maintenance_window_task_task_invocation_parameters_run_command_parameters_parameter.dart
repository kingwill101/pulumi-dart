// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter {
  /// The parameter name.
  final String name;

  /// The array of strings.
  final List<String> values;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter].
  /// [name] The parameter name.
  /// [values] The array of strings.
  MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return MaintenanceWindowTaskTaskInvocationParametersRunCommandParametersParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
