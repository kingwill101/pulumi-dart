// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class KeyVaultPropertiesResponse {
  /// The client id of the identity which will be used to access key vault.
  final pulumi.Input<String?>? identity;
  /// Key vault uri to access the encryption key.
  final pulumi.Input<String?>? keyIdentifier;
  /// Auto key rotation status for a CMK enabled registry.
  final pulumi.Input<bool> keyRotationEnabled;
  /// Timestamp of the last successful key rotation.
  final pulumi.Input<String> lastKeyRotationTimestamp;
  /// The fully qualified key identifier that includes the version of the key that is actually used for encryption.
  final pulumi.Input<String> versionedKeyIdentifier;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [identity] The client id of the identity which will be used to access key vault.
  /// [keyIdentifier] Key vault uri to access the encryption key.
  /// [keyRotationEnabled] Auto key rotation status for a CMK enabled registry.
  /// [lastKeyRotationTimestamp] Timestamp of the last successful key rotation.
  /// [versionedKeyIdentifier] The fully qualified key identifier that includes the version of the key that is actually used for encryption.
  const KeyVaultPropertiesResponse({
    this.identity,
    this.keyIdentifier,
    required this.keyRotationEnabled,
    required this.lastKeyRotationTimestamp,
    required this.versionedKeyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyIdentifier': ?keyIdentifier,
      'keyRotationEnabled': keyRotationEnabled,
      'lastKeyRotationTimestamp': lastKeyRotationTimestamp,
      'versionedKeyIdentifier': versionedKeyIdentifier,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyIdentifier: (() { final guardedValue = map['keyIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyRotationEnabled: pulumi.Input.fromValue(map['keyRotationEnabled'] as bool),
      lastKeyRotationTimestamp: pulumi.Input.fromValue(map['lastKeyRotationTimestamp'] as String),
      versionedKeyIdentifier: pulumi.Input.fromValue(map['versionedKeyIdentifier'] as String),
    );
  }
}
