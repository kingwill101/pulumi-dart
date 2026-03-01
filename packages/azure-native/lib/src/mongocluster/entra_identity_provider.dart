// ignore_for_file: unused_element, unnecessary_cast

import 'entra_identity_provider_properties.dart';

/// Defines a Microsoft Entra ID Mongo user.
class EntraIdentityProvider {
  /// The Entra identity properties for the user.
  final EntraIdentityProviderProperties properties;
  /// Identity provider types that a a user identity can belong to.
  /// Expected value is 'MicrosoftEntraID'.
  final String type;

  /// Creates a new [EntraIdentityProvider].
  /// [properties] The Entra identity properties for the user.
  /// [type] Identity provider types that a a user identity can belong to.
  EntraIdentityProvider({
    required this.properties,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties.toMap(),
      'type': type,
    };
  }

  factory EntraIdentityProvider.fromMap(Map<String, dynamic> map) {
    return EntraIdentityProvider(
      properties: EntraIdentityProviderProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

