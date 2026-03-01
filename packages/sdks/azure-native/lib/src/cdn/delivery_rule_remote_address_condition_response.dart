// ignore_for_file: unused_element, unnecessary_cast

import 'remote_address_match_condition_parameters_response.dart';

/// Defines the RemoteAddress condition for the delivery rule.
class DeliveryRuleRemoteAddressConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'RemoteAddress'.
  final String name;
  /// Defines the parameters for the condition.
  final RemoteAddressMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleRemoteAddressConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleRemoteAddressConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRemoteAddressConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRemoteAddressConditionResponse(
      name: map['name'] as String,
      parameters: RemoteAddressMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

