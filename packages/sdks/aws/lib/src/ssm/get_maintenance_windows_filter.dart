// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetMaintenanceWindowsFilter {
  /// Name of the filter field. Valid values can be found in the [SSM DescribeMaintenanceWindows API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeMaintenanceWindows.html#API_DescribeMaintenanceWindows_RequestSyntax).
  final pulumi.Input<String> name;

  /// Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetMaintenanceWindowsFilter].
  /// [name] Name of the filter field. Valid values can be found in the [SSM DescribeMaintenanceWindows API Reference](https://docs.aws.amazon.com/systems-manager/latest/APIReference/API_DescribeMaintenanceWindows.html#API_DescribeMaintenanceWindows_RequestSyntax).
  /// [values] Set of values that are accepted for the given filter field. Results will be selected if any given value matches.
  GetMaintenanceWindowsFilter({required this.name, required this.values});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetMaintenanceWindowsFilter.fromMap(Map<String, dynamic> map) {
    return GetMaintenanceWindowsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
