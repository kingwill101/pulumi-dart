// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'origin_group_override_action_parameters.dart';

/// Defines the origin group override action for the delivery rule.
class OriginGroupOverrideAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'OriginGroupOverride'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<OriginGroupOverrideActionParameters> parameters;

  /// Creates a new [OriginGroupOverrideAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const OriginGroupOverrideAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<OriginGroupOverrideActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory OriginGroupOverrideAction.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(OriginGroupOverrideActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}
