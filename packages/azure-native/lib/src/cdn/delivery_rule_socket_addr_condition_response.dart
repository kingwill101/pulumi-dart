// ignore_for_file: unused_element, unnecessary_cast

import 'socket_addr_match_condition_parameters_response.dart';

/// Defines the SocketAddress condition for the delivery rule.
class DeliveryRuleSocketAddrConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'SocketAddr'.
  final String name;
  /// Defines the parameters for the condition.
  final SocketAddrMatchConditionParametersResponse parameters;

  /// Creates a new [DeliveryRuleSocketAddrConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleSocketAddrConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleSocketAddrConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSocketAddrConditionResponse(
      name: map['name'] as String,
      parameters: SocketAddrMatchConditionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

