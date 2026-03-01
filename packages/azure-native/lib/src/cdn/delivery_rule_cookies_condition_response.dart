// ignore_for_file: unused_element, unnecessary_cast

import 'cookies_match_condition_parameters_response.dart';

/// Defines the Cookies condition for the delivery rule.
class DeliveryRuleCookiesConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'Cookies'.
  final String name;
  /// Defines the parameters for the condition.
  final CookiesMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleCookiesConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleCookiesConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCookiesConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCookiesConditionResponse(
      name: map['name'] as String,
      parameters: CookiesMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

