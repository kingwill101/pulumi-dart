// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'socket_addr_match_condition_parameters.dart';

/// Defines the SocketAddress condition for the delivery rule.
class DeliveryRuleSocketAddrCondition {
  /// Request variable to compare with.
  /// Expected value is 'SocketAddr'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<SocketAddrMatchConditionParameters> parameters;

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
      'parameters': pulumi.Input.mapInputValue<SocketAddrMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleSocketAddrCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSocketAddrCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(SocketAddrMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

