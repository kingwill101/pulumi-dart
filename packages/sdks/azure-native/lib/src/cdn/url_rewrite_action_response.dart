// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_rewrite_action_parameters_response.dart';

/// Defines the url rewrite action for the delivery rule.
class UrlRewriteActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRewrite'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<UrlRewriteActionParametersResponse> parameters;

  /// Creates a new [UrlRewriteActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  const UrlRewriteActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': pulumi.Input.mapInputValue<UrlRewriteActionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory UrlRewriteActionResponse.fromMap(Map<String, dynamic> map) {
    return UrlRewriteActionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlRewriteActionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

