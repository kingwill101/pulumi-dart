// ignore_for_file: unused_element, unnecessary_cast

class DashboardParametersStringParameter {
  /// Display name for the dashboard.
  final String name;
  final List<String> values;

  /// Creates a new [DashboardParametersStringParameter].
  /// [name] Display name for the dashboard.
  /// [values] Required.
  DashboardParametersStringParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory DashboardParametersStringParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersStringParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
