// ignore_for_file: unused_element, unnecessary_cast

class ResponsePlanActionSsmAutomationParameter {
  /// The name of parameter.
  final String name;

  /// The values for the associated parameter name.
  final List<String> values;

  /// Creates a new [ResponsePlanActionSsmAutomationParameter].
  /// [name] The name of parameter.
  /// [values] The values for the associated parameter name.
  ResponsePlanActionSsmAutomationParameter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    map['values'] = values;
    return map;
  }

  factory ResponsePlanActionSsmAutomationParameter.fromMap(
      Map<String, dynamic> map) {
    return ResponsePlanActionSsmAutomationParameter(
      name: map['name'] as String,
      values: (map['values'] as List).cast<String>(),
    );
  }
}
