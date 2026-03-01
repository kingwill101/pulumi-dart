// ignore_for_file: unused_element, unnecessary_cast

import 'socket_addr_match_condition_parameters.dart';

/// Defines the SocketAddress condition for the delivery rule.
class DeliveryRuleSocketAddrCondition {
  /// Request variable to compare with.
  /// Expected value is 'SocketAddr'.
  final String name;
  /// Defines the parameters for the condition.
  final SocketAddrMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleSocketAddrCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleSocketAddrCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleSocketAddrCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSocketAddrCondition(
      name: map['name'] as String,
      parameters: SocketAddrMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

