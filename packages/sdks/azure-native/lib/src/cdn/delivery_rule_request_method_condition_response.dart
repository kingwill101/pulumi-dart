// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_method_match_condition_parameters_response.dart';

/// Defines the RequestMethod condition for the delivery rule.
class DeliveryRuleRequestMethodConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestMethod'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestMethodMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleRequestMethodConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRequestMethodConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestMethodMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestMethodConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestMethodConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestMethodMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

