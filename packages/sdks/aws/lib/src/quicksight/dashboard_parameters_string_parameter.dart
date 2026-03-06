// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardParametersStringParameter {
  /// Display name for the dashboard.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [DashboardParametersStringParameter].
  /// [name] Display name for the dashboard.
  /// [values] Required.
  const DashboardParametersStringParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory DashboardParametersStringParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersStringParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}

