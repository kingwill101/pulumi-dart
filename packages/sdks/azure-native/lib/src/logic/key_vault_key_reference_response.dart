// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_response_key_vault.dart';

/// The reference to the key vault key.
class KeyVaultKeyReferenceResponse {
  /// The private key name in key vault.
  final pulumi.Input<String> keyName;

  /// The key vault reference.
  final pulumi.Input<KeyVaultKeyReferenceResponseKeyVault> keyVault;

  /// The private key version in key vault.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [KeyVaultKeyReferenceResponse].
  /// [keyName] The private key name in key vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] The private key version in key vault.
  KeyVaultKeyReferenceResponse({
    required this.keyName,
    required this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVault':
          pulumi.Input.mapInputValue<
            KeyVaultKeyReferenceResponseKeyVault,
            Map<String, dynamic>
          >(keyVault, (value) => value.toMap()),
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVault: pulumi.Input.fromValue(
        KeyVaultKeyReferenceResponseKeyVault.fromMap(
          (map['keyVault']! as Map).cast<String, dynamic>(),
        ),
      ),
      keyVersion: (() {
        final guardedValue = map['keyVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
