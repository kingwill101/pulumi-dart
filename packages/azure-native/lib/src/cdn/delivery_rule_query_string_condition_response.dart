// ignore_for_file: unused_element, unnecessary_cast

import 'query_string_match_condition_parameters_response.dart';

/// Defines the QueryString condition for the delivery rule.
class DeliveryRuleQueryStringConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'QueryString'.
  final String name;
  /// Defines the parameters for the condition.
  final QueryStringMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleQueryStringConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleQueryStringConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleQueryStringConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleQueryStringConditionResponse(
      name: map['name'] as String,
      parameters: QueryStringMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

