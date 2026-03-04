// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetResponsePlanActionSsmAutomationParameter {
  /// The name of the PagerDuty configuration.
  final pulumi.Input<String> name;

  /// The values for the associated parameter name.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetResponsePlanActionSsmAutomationParameter].
  /// [name] The name of the PagerDuty configuration.
  /// [values] The values for the associated parameter name.
  GetResponsePlanActionSsmAutomationParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'values': values};
  }

  factory GetResponsePlanActionSsmAutomationParameter.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetResponsePlanActionSsmAutomationParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
