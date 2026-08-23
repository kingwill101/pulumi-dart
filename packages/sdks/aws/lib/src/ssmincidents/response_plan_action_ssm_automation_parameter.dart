// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ResponsePlanActionSsmAutomationParameter {
  /// The name of parameter.
  final pulumi.Input<String> name;
  /// The values for the associated parameter name.
  final pulumi.Input<List<String>> values;

  /// Creates a new [ResponsePlanActionSsmAutomationParameter].
  /// [name] The name of parameter.
  /// [values] The values for the associated parameter name.
  const ResponsePlanActionSsmAutomationParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory ResponsePlanActionSsmAutomationParameter.fromMap(Map<String, dynamic> map) {
    return ResponsePlanActionSsmAutomationParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
