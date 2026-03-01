// ignore_for_file: unused_element, unnecessary_cast

import 'host_name_match_condition_parameters_response.dart';

/// Defines the HostName condition for the delivery rule.
class DeliveryRuleHostNameConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'HostName'.
  final String name;
  /// Defines the parameters for the condition.
  final HostNameMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleHostNameConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHostNameConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleHostNameConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHostNameConditionResponse(
      name: map['name'] as String,
      parameters: HostNameMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

