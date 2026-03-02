// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultPropertiesResponse {
  /// The client id of the identity which will be used to access key vault.
  final pulumi.Input<String>? identityClientId;
  /// The URI of the key vault key used to encrypt data.
  final pulumi.Input<String>? keyIdentifier;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [identityClientId] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] The URI of the key vault key used to encrypt data.
  KeyVaultPropertiesResponse({
    this.identityClientId,
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityClientId': ?identityClientId,
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      identityClientId: map['identityClientId'] == null ? null : (map['identityClientId'] as String).input(),
      keyIdentifier: map['keyIdentifier'] == null ? null : (map['keyIdentifier'] as String).input(),
    );
  }
}

