// ignore_for_file: unused_element, unnecessary_cast

import 'url_file_name_match_condition_parameters_response.dart';

/// Defines the UrlFileName condition for the delivery rule.
class DeliveryRuleUrlFileNameConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'UrlFileName'.
  final String name;
  /// Defines the parameters for the condition.
  final UrlFileNameMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleUrlFileNameConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleUrlFileNameConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleUrlFileNameConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleUrlFileNameConditionResponse(
      name: map['name'] as String,
      parameters: UrlFileNameMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

