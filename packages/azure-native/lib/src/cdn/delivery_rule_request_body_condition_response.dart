// ignore_for_file: unused_element, unnecessary_cast

import 'request_body_match_condition_parameters_response.dart';

/// Defines the RequestBody condition for the delivery rule.
class DeliveryRuleRequestBodyConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestBody'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestBodyMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRequestBodyConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestBodyConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestBodyConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestBodyConditionResponse(
      name: map['name'] as String,
      parameters: RequestBodyMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

