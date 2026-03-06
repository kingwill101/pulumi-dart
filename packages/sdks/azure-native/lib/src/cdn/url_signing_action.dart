// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_signing_action_parameters.dart';

/// Defines the url signing action for the delivery rule.
class UrlSigningAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlSigning'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<UrlSigningActionParameters> parameters;

  /// Creates a new [UrlSigningAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const UrlSigningAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlSigningActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory UrlSigningAction.fromMap(Map<String, dynamic> map) {
    return UrlSigningAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlSigningActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

