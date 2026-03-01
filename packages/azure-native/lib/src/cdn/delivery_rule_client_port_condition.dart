// ignore_for_file: unused_element, unnecessary_cast

import 'client_port_match_condition_parameters.dart';

/// Defines the ClientPort condition for the delivery rule.
class DeliveryRuleClientPortCondition {
  /// Request variable to compare with.
  /// Expected value is 'ClientPort'.
  final String name;
  /// Defines the parameters for the condition.
  final ClientPortMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleClientPortCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleClientPortCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleClientPortCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleClientPortCondition(
      name: map['name'] as String,
      parameters: ClientPortMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

