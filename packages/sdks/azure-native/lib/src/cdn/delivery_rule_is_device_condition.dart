// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'is_device_match_condition_parameters.dart';

/// Defines the IsDevice condition for the delivery rule.
class DeliveryRuleIsDeviceCondition {
  /// Request variable to compare with.
  /// Expected value is 'IsDevice'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<IsDeviceMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleIsDeviceCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleIsDeviceCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<IsDeviceMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleIsDeviceCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleIsDeviceCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(IsDeviceMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
