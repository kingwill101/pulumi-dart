// ignore_for_file: unused_element, unnecessary_cast

import 'request_uri_match_condition_parameters_response.dart';

/// Defines the RequestUri condition for the delivery rule.
class DeliveryRuleRequestUriConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestUri'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestUriMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRequestUriConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestUriConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestUriConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestUriConditionResponse(
      name: map['name'] as String,
      parameters: RequestUriMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

