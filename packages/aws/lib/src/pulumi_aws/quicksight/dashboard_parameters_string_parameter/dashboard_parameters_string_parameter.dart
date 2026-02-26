// ignore_for_file: unused_element, unnecessary_cast

class DashboardParametersStringParameter {
  /// Display name for the dashboard.
  final String name;
  final List<String> values;

  DashboardParametersStringParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory DashboardParametersStringParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersStringParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
