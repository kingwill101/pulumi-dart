// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'query_string_match_condition_parameters_response.dart';

/// Defines the QueryString condition for the delivery rule.
class DeliveryRuleQueryStringConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'QueryString'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<QueryStringMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleQueryStringConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleQueryStringConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<QueryStringMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleQueryStringConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleQueryStringConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(QueryStringMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
