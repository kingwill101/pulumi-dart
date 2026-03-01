// ignore_for_file: unused_element, unnecessary_cast

import 'request_header_match_condition_parameters_response.dart';

/// Defines the RequestHeader condition for the delivery rule.
class DeliveryRuleRequestHeaderConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestHeader'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestHeaderMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRequestHeaderConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestHeaderConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestHeaderConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestHeaderConditionResponse(
      name: map['name'] as String,
      parameters: RequestHeaderMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

