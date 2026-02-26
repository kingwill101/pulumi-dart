// ignore_for_file: unused_element, unnecessary_cast

class DashboardParametersIntegerParameter {
  /// Display name for the dashboard.
  final String name;
  final List<int> values;

  DashboardParametersIntegerParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory DashboardParametersIntegerParameter.fromMap(
      Map<String, dynamic> map) {
    return DashboardParametersIntegerParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<int>(),
    );
  }
}
