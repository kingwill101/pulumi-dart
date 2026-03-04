// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entra_identity_provider_properties.dart';

/// Defines a Microsoft Entra ID Mongo user.
class EntraIdentityProvider {
  /// The Entra identity properties for the user.
  final pulumi.Input<EntraIdentityProviderProperties> properties;

  /// Identity provider types that a a user identity can belong to.
  /// Expected value is 'MicrosoftEntraID'.
  final pulumi.Input<String> type;

  /// Creates a new [EntraIdentityProvider].
  /// [properties] The Entra identity properties for the user.
  /// [type] Identity provider types that a a user identity can belong to.
  EntraIdentityProvider({required this.properties, required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties':
          pulumi.Input.mapInputValue<
            EntraIdentityProviderProperties,
            Map<String, dynamic>
          >(properties, (value) => value.toMap()),
      'type': type,
    };
  }

  factory EntraIdentityProvider.fromMap(Map<String, dynamic> map) {
    return EntraIdentityProvider(
      properties: pulumi.Input.fromValue(
        EntraIdentityProviderProperties.fromMap(
          (map['properties']! as Map).cast<String, dynamic>(),
        ),
      ),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
