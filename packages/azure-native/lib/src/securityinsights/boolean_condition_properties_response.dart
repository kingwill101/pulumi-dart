// ignore_for_file: unused_element, unnecessary_cast

import 'automation_rule_boolean_condition_response.dart';

/// Describes an automation rule condition that applies a boolean operator (e.g AND, OR) to conditions
class BooleanConditionPropertiesResponse {
  /// Describes an automation rule condition with boolean operators.
  final AutomationRuleBooleanConditionResponse? conditionProperties;
  /// Expected value is 'Boolean'.
  final String conditionType;

  /// Creates a new [BooleanConditionPropertiesResponse].
  /// [conditionProperties] Describes an automation rule condition with boolean operators.
  /// [conditionType] Expected value is 'Boolean'.
  BooleanConditionPropertiesResponse({
    this.conditionProperties,
    required this.conditionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditionProperties': ?conditionProperties == null ? null : conditionProperties!.toMap(),
      'conditionType': conditionType,
    };
  }

  factory BooleanConditionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return BooleanConditionPropertiesResponse(
      conditionProperties: map['conditionProperties'] == null ? null : AutomationRuleBooleanConditionResponse.fromMap((map['conditionProperties'] as Map).cast<String, dynamic>()),
      conditionType: map['conditionType'] as String,
    );
  }
}

