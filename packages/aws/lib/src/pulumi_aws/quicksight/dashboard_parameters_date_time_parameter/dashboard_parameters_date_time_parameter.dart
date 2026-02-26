// ignore_for_file: unused_element, unnecessary_cast

class DashboardParametersDateTimeParameter {
  /// Display name for the dashboard.
  final String name;
  final List<String> values;

  DashboardParametersDateTimeParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory DashboardParametersDateTimeParameter.fromMap(
      Map<String, dynamic> map) {
    return DashboardParametersDateTimeParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
