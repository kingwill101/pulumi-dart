// ignore_for_file: unused_element, unnecessary_cast

class MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter {
  /// The parameter name.
  final String name;

  /// The array of strings.
  final List<String> values;

  /// Creates a new [MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter].
  /// [name] The parameter name.
  /// [values] The array of strings.
  MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return MaintenanceWindowTaskTaskInvocationParametersAutomationParametersParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
