// ignore_for_file: unused_element, unnecessary_cast

import 'host_name_match_condition_parameters.dart';

/// Defines the HostName condition for the delivery rule.
class DeliveryRuleHostNameCondition {
  /// Request variable to compare with.
  /// Expected value is 'HostName'.
  final String name;
  /// Defines the parameters for the condition.
  final HostNameMatchConditionParameters parameters;

  /// Creates a new [DeliveryRuleHostNameCondition].
  /// [name] Request variable to compare with.
  /// [parameters] Defines the parameters for the condition.
  DeliveryRuleHostNameCondition({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleHostNameCondition.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleHostNameCondition(
      name: map['name'] as String,
      parameters: HostNameMatchConditionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

