// ignore_for_file: unused_element, unnecessary_cast

import 'query_string_match_condition_parameters.dart';

/// Defines the QueryString condition for the delivery rule.
class DeliveryRuleQueryStringCondition {
  /// Request variable to compare with.
  /// Expected value is 'QueryString'.
  final String name;
  /// Defines the parameters for the condition.
  final QueryStringMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleQueryStringCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleQueryStringCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleQueryStringCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleQueryStringCondition(
      name: map['name'] as String,
      parameters: QueryStringMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

