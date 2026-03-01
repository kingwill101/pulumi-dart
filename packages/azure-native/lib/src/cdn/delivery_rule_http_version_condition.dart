// ignore_for_file: unused_element, unnecessary_cast

import 'http_version_match_condition_parameters.dart';

/// Defines the HttpVersion condition for the delivery rule.
class DeliveryRuleHttpVersionCondition {
  /// Request variable to compare with.
  /// Expected value is 'HttpVersion'.
  final String name;
  /// Defines the parameters for the condition.
  final HttpVersionMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleHttpVersionCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHttpVersionCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleHttpVersionCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHttpVersionCondition(
      name: map['name'] as String,
      parameters: HttpVersionMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

