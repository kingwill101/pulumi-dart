// ignore_for_file: unused_element, unnecessary_cast

import 'cookies_match_condition_parameters.dart';

/// Defines the Cookies condition for the delivery rule.
class DeliveryRuleCookiesCondition {
  /// Request variable to compare with.
  /// Expected value is 'Cookies'.
  final String name;
  /// Defines the parameters for the condition.
  final CookiesMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleCookiesCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleCookiesCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleCookiesCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCookiesCondition(
      name: map['name'] as String,
      parameters: CookiesMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

