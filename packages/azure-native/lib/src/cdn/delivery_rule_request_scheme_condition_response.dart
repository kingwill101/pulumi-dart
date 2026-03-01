// ignore_for_file: unused_element, unnecessary_cast

import 'request_scheme_match_condition_parameters_response.dart';

/// Defines the RequestScheme condition for the delivery rule.
class DeliveryRuleRequestSchemeConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestScheme'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestSchemeMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRequestSchemeConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestSchemeConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestSchemeConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestSchemeConditionResponse(
      name: map['name'] as String,
      parameters: RequestSchemeMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

