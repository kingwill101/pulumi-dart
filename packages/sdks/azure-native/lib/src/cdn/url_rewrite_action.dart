// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_rewrite_action_parameters.dart';

/// Defines the url rewrite action for the delivery rule.
class UrlRewriteAction {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRewrite'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<UrlRewriteActionParameters> parameters;

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
      'parameters': pulumi.Input.mapInputValue<UrlRewriteActionParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory UrlRewriteAction.fromMap(Map<String, dynamic> map) {
    return UrlRewriteAction(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlRewriteActionParameters.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

