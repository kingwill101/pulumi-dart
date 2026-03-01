// ignore_for_file: unused_element, unnecessary_cast

import 'secure_string_response.dart';

/// The key authorization type integration runtime.
class LinkedIntegrationRuntimeKeyAuthorizationResponse {
  /// The authorization type for integration runtime sharing.
  /// Expected value is 'Key'.
  final String authorizationType;
  /// The key used for authorization.
  final SecureStringResponse key;

  /// Creates a new [LinkedIntegrationRuntimeKeyAuthorizationResponse].
  /// [authorizationType] The authorization type for integration runtime sharing.
  /// [key] The key used for authorization.
  LinkedIntegrationRuntimeKeyAuthorizationResponse({
    required this.authorizationType,
    required this.key,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authorizationType': authorizationType,
      'key': key.toMap(),
    };
  }

  factory LinkedIntegrationRuntimeKeyAuthorizationResponse.fromMap(Map<String, dynamic> map) {
    return LinkedIntegrationRuntimeKeyAuthorizationResponse(
      authorizationType: map['authorizationType'] as String,
      key: SecureStringResponse.fromMap((map['key'] as Map).cast<String, dynamic>()),
    );
  }
}

