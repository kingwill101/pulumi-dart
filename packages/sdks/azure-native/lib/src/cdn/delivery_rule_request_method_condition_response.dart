// ignore_for_file: unused_element, unnecessary_cast

import 'request_method_match_condition_parameters_response.dart';

/// Defines the RequestMethod condition for the delivery rule.
class DeliveryRuleRequestMethodConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestMethod'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestMethodMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRequestMethodConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestMethodConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestMethodConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestMethodConditionResponse(
      name: map['name'] as String,
      parameters: RequestMethodMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

