// ignore_for_file: unused_element, unnecessary_cast

import 'request_uri_match_condition_parameters.dart';

/// Defines the RequestUri condition for the delivery rule.
class DeliveryRuleRequestUriCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestUri'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestUriMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleRequestUriCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestUriCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestUriCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestUriCondition(
      name: map['name'] as String,
      parameters: RequestUriMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

