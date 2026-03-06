// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_path_match_condition_parameters_response.dart';

/// Defines the UrlPath condition for the delivery rule.
class DeliveryRuleUrlPathConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'UrlPath'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<UrlPathMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleUrlPathConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleUrlPathConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlPathMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleUrlPathConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlPathConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlPathMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

