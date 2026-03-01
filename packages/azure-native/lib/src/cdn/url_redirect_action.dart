// ignore_for_file: unused_element, unnecessary_cast

import 'url_redirect_action_parameters.dart';

/// Defines the url redirect action for the delivery rule.
class UrlRedirectAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRedirect'.
  final String name;
  /// Defines the parameters for the action.
  final UrlRedirectActionParameters parameters;

  /// Creates a new [UrlRedirectAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  UrlRedirectAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory UrlRedirectAction.fromMap(Map<String, dynamic> map) {
    return UrlRedirectAction(
      name: map['name'] as String,
      parameters: UrlRedirectActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

