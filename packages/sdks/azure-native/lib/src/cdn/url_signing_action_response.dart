// ignore_for_file: unused_element, unnecessary_cast

import 'url_signing_action_parameters_response.dart';

/// Defines the url signing action for the delivery rule.
class UrlSigningActionResponse {
  /// The name of the action for the delivery rule.
  /// Expected value is 'UrlSigning'.
  final String name;
  /// Defines the parameters for the action.
  final UrlSigningActionParametersResponse parameters;

  /// Creates a new [UrlSigningActionResponse].
  /// [name] The name of the action for the delivery rule.
  /// [parameters] Defines the parameters for the action.
  UrlSigningActionResponse({
    required this.name,
    required this.parameters,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'parameters': parameters.toMap(),
    };
  }

  factory UrlSigningActionResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningActionResponse(
      name: map['name'] as String,
      parameters: UrlSigningActionParametersResponse.fromMap((map['parameters'] as Map).cast<String, dynamic>()),
    );
  }
}

