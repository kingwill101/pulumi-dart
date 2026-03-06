// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'header_action_parameters.dart';

/// Defines the response header action for the delivery rule.
class DeliveryRuleResponseHeaderAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'ModifyResponseHeader'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<HeaderActionParameters> parameters;

  /// Creates a new [DeliveryRuleResponseHeaderAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const DeliveryRuleResponseHeaderAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<HeaderActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory DeliveryRuleResponseHeaderAction.fromMap(Map<String, dynamic> map) {
    return DeliveryRuleResponseHeaderAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(HeaderActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

