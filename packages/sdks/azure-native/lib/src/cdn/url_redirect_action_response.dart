// ignore_for_file: unused_element, unnecessary_cast

import 'url_redirect_action_parameters_response.dart';

/// Defines the url redirect action for the delivery rule.
class UrlRedirectActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRedirect'.
  final String name;
  /// Defines the parameters for the action.
  final UrlRedirectActionParametersResponse parameters;

  /// Creates a new [UrlRedirectActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  UrlRedirectActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory UrlRedirectActionResponse.fromMap(Map<String, dynamic> map) {
    return UrlRedirectActionResponse(
      name: map['name'] as String,
      parameters: UrlRedirectActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

