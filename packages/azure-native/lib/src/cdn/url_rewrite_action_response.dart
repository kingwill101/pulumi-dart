// ignore_for_file: unused_element, unnecessary_cast

import 'url_rewrite_action_parameters_response.dart';

/// Defines the url rewrite action for the delivery rule.
class UrlRewriteActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRewrite'.
  final String name;
  /// Defines the parameters for the action.
  final UrlRewriteActionParametersResponse parameters;

  /// Creates a new [UrlRewriteActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  UrlRewriteActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory UrlRewriteActionResponse.fromMap(Map<String, dynamic> map) {
    return UrlRewriteActionResponse(
      name: map['name'] as String,
      parameters: UrlRewriteActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

