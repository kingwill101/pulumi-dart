// ignore_for_file: unused_element, unnecessary_cast

class DashboardParametersDecimalParameter {
  /// Display name for the dashboard.
  final String name;
  final List<double> values;

  DashboardParametersDecimalParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory DashboardParametersDecimalParameter.fromMap(
      Map<String, dynamic> map) {
    return DashboardParametersDecimalParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<double>(),
    );
  }
}
