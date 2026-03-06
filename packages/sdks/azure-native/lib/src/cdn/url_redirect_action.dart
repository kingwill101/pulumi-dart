// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_redirect_action_parameters.dart';

/// Defines the url redirect action for the delivery rule.
class UrlRedirectAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRedirect'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<UrlRedirectActionParameters> parameters;

  /// Creates a new [UrlRedirectAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const UrlRedirectAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlRedirectActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory UrlRedirectAction.fromMap(Map<String, dynamic> map) {
    return UrlRedirectAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlRedirectActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

