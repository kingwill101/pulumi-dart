// ignore_for_file: unused_element, unnecessary_cast

import 'is_device_match_condition_parameters.dart';

/// Defines the IsDevice condition for the delivery rule.
class DeliveryRuleIsDeviceCondition {
  /// Request variable to compare with.
  /// Expected value is 'IsDevice'.
  final String name;
  /// Defines the parameters for the condition.
  final IsDeviceMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleIsDeviceCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleIsDeviceCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleIsDeviceCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleIsDeviceCondition(
      name: map['name'] as String,
      parameters: IsDeviceMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

