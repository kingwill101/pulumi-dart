// ignore_for_file: unused_element, unnecessary_cast

import 'post_args_match_condition_parameters.dart';

/// Defines the PostArgs condition for the delivery rule.
class DeliveryRulePostArgsCondition {
  /// Request variable to compare with.
  /// Expected value is 'PostArgs'.
  final String name;
  /// Defines the parameters for the condition.
  final PostArgsMatchConditionParameters parameters;

  /// Creates a new [DeliveryRulePostArgsCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRulePostArgsCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRulePostArgsCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRulePostArgsCondition(
      name: map['name'] as String,
      parameters: PostArgsMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

