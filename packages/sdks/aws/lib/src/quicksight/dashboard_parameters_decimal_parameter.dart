// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardParametersDecimalParameter {
  /// Display name for the dashboard.
  final pulumi.Input<String> name;
  final pulumi.Input<List<double>> values;

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
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<double>()),
    );
  }
}

