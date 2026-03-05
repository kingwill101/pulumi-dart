// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_redirect_action_parameters_response.dart';

/// Defines the url redirect action for the delivery rule.
class UrlRedirectActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlRedirect'.
  final pulumi.Input<String> name;
  /// Defines the parameters for the action.
  final pulumi.Input<UrlRedirectActionParametersResponse> parameters;

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
      'parameters': pulumi.Input.mapInputValue<UrlRedirectActionParametersResponse, Map<String, dynamic>>(parameters, (value) => value.toMap()),
    };
  }

  factory UrlRedirectActionResponse.fromMap(Map<String, dynamic> map) {
    return UrlRedirectActionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      parameters: pulumi.Input.fromValue(UrlRedirectActionParametersResponse.fromMap((map['parameters']! as Map).cast<String, dynamic>())),
    );
  }
}

