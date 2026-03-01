// ignore_for_file: unused_element, unnecessary_cast

import 'http_version_match_condition_parameters_response.dart';

/// Defines the HttpVersion condition for the delivery rule.
class DeliveryRuleHttpVersionConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'HttpVersion'.
  final String name;
  /// Defines the parameters for the condition.
  final HttpVersionMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleHttpVersionConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHttpVersionConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleHttpVersionConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHttpVersionConditionResponse(
      name: map['name'] as String,
      parameters: HttpVersionMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

