// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_key_vault.dart';

/// The reference to the key vault key.
class KeyVaultKeyReference {
  /// The private key name in key vault.
  final pulumi.Input<String> keyName;
  /// The key vault reference.
  final pulumi.Input<KeyVaultKeyReferenceKeyVault> keyVault;
  /// The private key version in key vault.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [KeyVaultKeyReference].
  /// [keyName] The private key name in key vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] The private key version in key vault.
  KeyVaultKeyReference({
    required this.keyName,
    required this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVault': pulumi.Input.mapInputValue<KeyVaultKeyReferenceKeyVault, Map<String, dynamic>>(keyVault, (value) => value.toMap()),
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyName: (map['keyName'] as String).input(),
      keyVault: (KeyVaultKeyReferenceKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>())).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion'] as String).input(),
    );
  }
}

