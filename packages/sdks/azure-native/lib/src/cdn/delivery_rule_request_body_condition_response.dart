// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_body_match_condition_parameters_response.dart';

/// Defines the RequestBody condition for the delivery rule.
class DeliveryRuleRequestBodyConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestBody'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestBodyMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleRequestBodyConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestBodyConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestBodyMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestBodyConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestBodyConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestBodyMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

