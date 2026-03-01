// ignore_for_file: unused_element, unnecessary_cast

import 'url_path_match_condition_parameters_response.dart';

/// Defines the UrlPath condition for the delivery rule.
class DeliveryRuleUrlPathConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'UrlPath'.
  final String name;
  /// Defines the parameters for the condition.
  final UrlPathMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleUrlPathConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlPathConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleUrlPathConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlPathConditionResponse(
      name: map['name'] as String,
      parameters: UrlPathMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

