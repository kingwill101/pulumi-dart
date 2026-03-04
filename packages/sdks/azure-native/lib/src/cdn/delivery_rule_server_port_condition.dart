// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'server_port_match_condition_parameters.dart';

/// Defines the ServerPort condition for the delivery rule.
class DeliveryRuleServerPortCondition {
  /// Request variable to compare with.
  /// Expected value is 'ServerPort'.
  final pulumi.Input<String> name;

  /// Defines the parameters for the condition.
  final pulumi.Input<ServerPortMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleServerPortCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleServerPortCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters':
          pulumi.Input.mapInputValue<
            ServerPortMatchConditionParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleServerPortCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleServerPortCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(
        ServerPortMatchConditionParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
