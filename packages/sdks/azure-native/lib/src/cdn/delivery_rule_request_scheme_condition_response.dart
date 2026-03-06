// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_scheme_match_condition_parameters_response.dart';

/// Defines the RequestScheme condition for the delivery rule.
class DeliveryRuleRequestSchemeConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestScheme'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestSchemeMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleRequestSchemeConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRequestSchemeConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestSchemeMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestSchemeConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestSchemeConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RequestSchemeMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

