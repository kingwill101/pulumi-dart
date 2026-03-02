// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// KeyVault configuration when using an encryption KeySource of Microsoft.KeyVault.
class KeyVaultProperties {
  /// Full path to the secret with or without version. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053. or https://mykeyvault.vault.azure.net/keys/testkey. To be usable the following prerequisites must be met:
  ///
  /// The Batch Account has a System Assigned identity
  /// The account identity has been granted Key/Get, Key/Unwrap and Key/Wrap permissions
  /// The KeyVault has soft-delete and purge protection enabled
  final pulumi.Input<String>? keyIdentifier;

  /// Creates a new [KeyVaultProperties].
  /// [keyIdentifier] Full path to the secret with or without version. Example https://mykeyvault.vault.azure.net/keys/testkey/6e34a81fef704045975661e297a4c053. or https://mykeyvault.vault.azure.net/keys/testkey. To be usable the following prerequisites must be met:
  KeyVaultProperties({
    this.keyIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyIdentifier': ?keyIdentifier,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyIdentifier: map['keyIdentifier'] == null ? null : (map['keyIdentifier'] as String).input(),
    );
  }
}

