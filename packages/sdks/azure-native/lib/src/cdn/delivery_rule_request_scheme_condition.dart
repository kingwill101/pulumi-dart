// ignore_for_file: unused_element, unnecessary_cast

import 'request_scheme_match_condition_parameters.dart';

/// Defines the RequestScheme condition for the delivery rule.
class DeliveryRuleRequestSchemeCondition {
  /// Request variable to compare with.
  /// Expected value is 'RequestScheme'.
  final String name;
  /// Defines the parameters for the condition.
  final RequestSchemeMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleRequestSchemeCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestSchemeCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestSchemeCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestSchemeCondition(
      name: map['name'] as String,
      parameters: RequestSchemeMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

