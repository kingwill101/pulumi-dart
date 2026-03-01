// ignore_for_file: unused_element, unnecessary_cast


class AutomationSourceRuleSetRule {
  /// A value that will be compared with the value in `property_path`.
  final String expectedValue;
  /// The comparison operator to use, must be one of: `Contains`, `EndsWith`, `Equals`, `GreaterThan`, `GreaterThanOrEqualTo`, `LesserThan`, `LesserThanOrEqualTo`, `NotEquals`, `StartsWith`
  final String operator;
  /// The JPath of the entity model property that should be checked.
  final String propertyPath;
  /// The data type of the compared operands, must be one of: `Integer`, `String`, `Boolean` or `Number`.
  ///
  /// > **Note:** The schema for Security Center alerts (when `event_source` is "Alerts") [can be found here](https://docs.microsoft.com/azure/security-center/alerts-schemas?tabs=schema-continuousexport)
  final String propertyType;

  /// Creates a new [AutomationSourceRuleSetRule].
  /// [expectedValue] A value that will be compared with the value in `property_path`.
  /// [operator] The comparison operator to use, must be one of: `Contains`, `EndsWith`, `Equals`, `GreaterThan`, `GreaterThanOrEqualTo`, `LesserThan`, `LesserThanOrEqualTo`, `NotEquals`, `StartsWith`
  /// [propertyPath] The JPath of the entity model property that should be checked.
  /// [propertyType] The data type of the compared operands, must be one of: `Integer`, `String`, `Boolean` or `Number`.
  AutomationSourceRuleSetRule({
    required this.expectedValue,
    required this.operator,
    required this.propertyPath,
    required this.propertyType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expectedValue': expectedValue,
      'operator': operator,
      'propertyPath': propertyPath,
      'propertyType': propertyType,
    };
  }

  factory AutomationSourceRuleSetRule.fromMap(Map<String, dynamic> map) {
    return AutomationSourceRuleSetRule(
      expectedValue: map['expectedValue'] as String,
      operator: map['operator'] as String,
      propertyPath: map['propertyPath'] as String,
      propertyType: map['propertyType'] as String,
    );
  }
}

