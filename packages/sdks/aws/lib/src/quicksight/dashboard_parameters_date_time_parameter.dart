// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DashboardParametersDateTimeParameter {
  /// Display name for the dashboard.
  final pulumi.Input<String> name;
  final pulumi.Input<List<String>> values;

  /// Creates a new [DashboardParametersDateTimeParameter].
  /// [name] Display name for the dashboard.
  /// [values] Required.
  DashboardParametersDateTimeParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory DashboardParametersDateTimeParameter.fromMap(Map<String, dynamic> map) {
    return DashboardParametersDateTimeParameter(
      name: (map['name'] as String).input(),
      values: ((map['values'] as List).cast<String>()).input(),
    );
  }
}

