// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_action_parameters.dart';

/// Defines the request header action for the delivery rule.
class DeliveryRuleRequestHeaderAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'ModifyRequestHeader'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<HeaderActionParameters> parameters;

  /// Creates a new [DeliveryRuleRequestHeaderAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const DeliveryRuleRequestHeaderAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<HeaderActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleRequestHeaderAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleRequestHeaderAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(HeaderActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
