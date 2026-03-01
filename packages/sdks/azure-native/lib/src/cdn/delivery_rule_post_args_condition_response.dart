// ignore_for_file: unused_element, unnecessary_cast

import 'post_args_match_condition_parameters_response.dart';

/// Defines the PostArgs condition for the delivery rule.
class DeliveryRulePostArgsConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'PostArgs'.
  final String name;
  /// Defines the parameters for the condition.
  final PostArgsMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRulePostArgsConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRulePostArgsConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRulePostArgsConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRulePostArgsConditionResponse(
      name: map['name'] as String,
      parameters: PostArgsMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

