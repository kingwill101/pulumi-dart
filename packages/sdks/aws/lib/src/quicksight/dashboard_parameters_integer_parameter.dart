// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardParametersIntegerParameter {
  /// Display name for the dashboard.
  final pulumi.Input<String> name;
  final pulumi.Input<List<int>> values;

  /// Creates a new [DashboardParametersIntegerParameter].
  /// [name] Display name for the dashboard.
  /// [values] Required.
  const DashboardParametersIntegerParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory DashboardParametersIntegerParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersIntegerParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<int>()),
    );
  }
}

