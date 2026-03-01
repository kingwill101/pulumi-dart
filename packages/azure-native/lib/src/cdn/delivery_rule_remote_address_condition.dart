// ignore_for_file: unused_element, unnecessary_cast

import 'remote_address_match_condition_parameters.dart';

/// Defines the RemoteAddress condition for the delivery rule.
class DeliveryRuleRemoteAddressCondition {
  /// Request variable to compare with.
  /// Expected value is 'RemoteAddress'.
  final String name;
  /// Defines the parameters for the condition.
  final RemoteAddressMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleRemoteAddressCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRemoteAddressCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRemoteAddressCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRemoteAddressCondition(
      name: map['name'] as String,
      parameters: RemoteAddressMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

