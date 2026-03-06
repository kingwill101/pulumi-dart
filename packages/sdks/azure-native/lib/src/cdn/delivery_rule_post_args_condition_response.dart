// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'post_args_match_condition_parameters_response.dart';

/// Defines the PostArgs condition for the delivery rule.
class DeliveryRulePostArgsConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'PostArgs'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<PostArgsMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRulePostArgsConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRulePostArgsConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<PostArgsMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRulePostArgsConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRulePostArgsConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(PostArgsMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

