// ignore_for_file: unused_element, unnecessary_cast

import 'is_device_match_condition_parameters_response.dart';

/// Defines the IsDevice condition for the delivery rule.
class DeliveryRuleIsDeviceConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'IsDevice'.
  final String name;
  /// Defines the parameters for the condition.
  final IsDeviceMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleIsDeviceConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleIsDeviceConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleIsDeviceConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleIsDeviceConditionResponse(
      name: map['name'] as String,
      parameters: IsDeviceMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

