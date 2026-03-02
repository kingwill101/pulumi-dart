// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_uri_match_condition_parameters_response.dart';

/// Defines the RequestUri condition for the delivery rule.
class DeliveryRuleRequestUriConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestUri'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RequestUriMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleRequestUriConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestUriConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RequestUriMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestUriConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestUriConditionResponse(
      name: (map['name'] as String).input(),
      parameters: (RequestUriMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

