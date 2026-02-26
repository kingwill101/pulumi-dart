// ignore_for_file: unused_element, unnecessary_cast

class GetMaintenanceWindowsFilter {
  /// Name of the filter field. Valid values can be found in the [SSM DescribeMaintenanceWindows API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeMaintenanceWindows.html#API_DescribeMaintenanceWindows_RequestSyntax).
  final String name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final List<String> values;

  GetMaintenanceWindowsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory GetMaintenanceWindowsFilter.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsFilter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
