// ignore_for_file: unused_element, unnecessary_cast

import 'origin_group_override_action_parameters.dart';

/// Defines the origin group override action for the delivery rule.
class OriginGroupOverrideAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'OriginGroupOverride'.
  final String name;
  /// Defines the parameters for the action.
  final OriginGroupOverrideActionParameters parameters;

  /// Creates a new [OriginGroupOverrideAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  OriginGroupOverrideAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory OriginGroupOverrideAction.fromMap(Map<String, dynamic> map) {
    return OriginGroupOverrideAction(
      name: map['name'] as String,
      parameters: OriginGroupOverrideActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

