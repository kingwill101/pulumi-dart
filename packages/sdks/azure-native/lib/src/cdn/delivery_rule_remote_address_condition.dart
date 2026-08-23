// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'remote_address_match_condition_parameters.dart';

/// Defines the RemoteAddress condition for the delivery rule.
class DeliveryRuleRemoteAddressCondition {
  /// Request variable to compare with.
  /// Expected value is 'RemoteAddress'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<RemoteAddressMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleRemoteAddressCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleRemoteAddressCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<RemoteAddressMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRemoteAddressCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRemoteAddressCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(RemoteAddressMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
