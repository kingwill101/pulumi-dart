// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cookies_match_condition_parameters_response.dart';

/// Defines the Cookies condition for the delivery rule.
class DeliveryRuleCookiesConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'Cookies'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<CookiesMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleCookiesConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleCookiesConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<CookiesMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleCookiesConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleCookiesConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(CookiesMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

