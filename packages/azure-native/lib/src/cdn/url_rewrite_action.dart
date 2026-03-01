// ignore_for_file: unused_element, unnecessary_cast

import 'url_rewrite_action_parameters.dart';

/// Defines the url rewrite action for the delivery rule.
class UrlRewriteAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRewrite'.
  final String name;
  /// Defines the parameters for the action.
  final UrlRewriteActionParameters parameters;

  /// Creates a new [UrlRewriteAction].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  UrlRewriteAction({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory UrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return UrlRewriteAction(
      name: map['name'] as String,
      parameters: UrlRewriteActionParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

