// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_property_values_changed_condition.dart';

/// Describes an automation rule condition that evaluates a property's value change
class PropertyChangedConditionProperties {
  final AutomationRulePropertyValuesChangedCondition? conditionProperties;
  /// Expected value is 'PropertyChanged'.
  final String conditionType;

  /// Creates a new [PropertyChangedConditionProperties].
  /// [conditionProperties] Optional.
  /// [conditionType] Expected value is 'PropertyChanged'.
  PropertyChangedConditionProperties({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory PropertyChangedConditionProperties.fromMap(Map<String, dynamic> map) {
    return PropertyChangedConditionProperties(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRulePropertyValuesChangedCondition.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

