// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'client_port_match_condition_parameters.dart';

/// Defines the ClientPort condition for the delivery rule.
class DeliveryRuleClientPortCondition {
  /// Request variable to compare with.
  /// Expected value is 'ClientPort'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the condition.
  final pulumi.Input<ClientPortMatchConditionParameters> parameters;

  /// Creates a new [DeliveryRuleClientPortCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  const DeliveryRuleClientPortCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<ClientPortMatchConditionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleClientPortCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleClientPortCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(ClientPortMatchConditionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
