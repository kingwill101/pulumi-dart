// ignore_for_file: unused_element, unnecessary_cast


class DashboardParametersDecimalParameter {
  /// Display name for the dashboard.
  final String name;
  final List<double> values;

  /// Creates a new [DashboardParametersDecimalParameter].
  /// [name] Display name for the dashboard.
  /// [values] Required.
  DashboardParametersDecimalParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory DashboardParametersDecimalParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersDecimalParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<double>(),
    );
  }
}

