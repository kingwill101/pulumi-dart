// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_port_match_condition_parameters_response.dart';

/// Defines the ServerPort condition for the delivery rule.
class DeliveryRuleServerPortConditionResponse {
  /// Request variable to compare with.
  /// Expected value is 'ServerPort'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<ServerPortMatchConditionParametersResponse> parameters;

  /// Creates a new [DeliveryRuleServerPortConditionResponse].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleServerPortConditionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<ServerPortMatchConditionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleServerPortConditionResponse.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleServerPortConditionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(ServerPortMatchConditionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

