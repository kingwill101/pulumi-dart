// ignore_for_file: unused_element, unnecessary_cast

import 'header_action_parameters.dart';

/// Defines the request header action for the delivery rule.
class DeliveryRuleRequestHeaderAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'ModifyRequestHeader'.
  final String name;
  /// Defines the parameters for the action.
  final HeaderActionParameters parameters;

  /// Creates a new [DeliveryRuleRequestHeaderAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  DeliveryRuleRequestHeaderAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory DeliveryRuleRequestHeaderAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestHeaderAction(
      name: map['name'] as String,
      parameters: HeaderActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

