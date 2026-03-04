// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'request_header_match_condition_parameters_response.dart';

/// Defines the RequestHeader condition for the delivery rule.
class DeliveryRuleRequestHeaderConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RequestHeader'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<RequestHeaderMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleRequestHeaderConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRequestHeaderConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            RequestHeaderMatchConditionParametersResponse,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestHeaderConditionResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return DeliveryRuleRequestHeaderConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        RequestHeaderMatchConditionParametersResponse.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
