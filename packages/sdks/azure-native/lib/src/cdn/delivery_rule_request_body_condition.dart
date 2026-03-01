// ignore_for_file: unused_element, unnecessary_cast

import 'request_body_match_condition_parameters.dart';

/// Defines the RequestBody condition for the delivery rule.
class DeliveryRuleRequestBodyCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestBody'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestBodyMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleRequestBodyCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestBodyCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestBodyCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestBodyCondition(
      name: map['name'] as String,
      parameters: RequestBodyMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

