// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'socket_addr_match_condition_parameters_response.dart';

/// Defines the SocketAddress condition for the delivery rule.
class DeliveryRuleSocketAddrConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'SocketAddr'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<SocketAddrMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleSocketAddrConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleSocketAddrConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<SocketAddrMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleSocketAddrConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleSocketAddrConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(SocketAddrMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

