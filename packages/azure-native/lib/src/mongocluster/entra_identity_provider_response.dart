// ignore_for_file: unused_element, unnecessary_cast

import 'entra_identity_provider_properties_response.dart';

/// Defines a Microsoft Entra ID Mongo user.
class EntraIdentityProviderResponse {
  /// The Entra identity properties for the user.
  final EntraIdentityProviderPropertiesResponse properties;
  /// Identity provider types that a a user identity can belong to.
  /// Expected value is 'MicrosoftEntraID'.
  final String type;

  /// Creates a new [EntraIdentityProviderResponse].
  /// [properties] The Entra identity properties for the user.
  /// [type] Identity provider types that a a user identity can belong to.
  EntraIdentityProviderResponse({
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory EntraIdentityProviderResponse.fromMap(Map<String, dynamic> map) {
    return EntraIdentityProviderResponse(
      properties: EntraIdentityProviderPropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

