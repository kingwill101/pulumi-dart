// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_vault_properties.dart';

/// The properties of customer managed encryption key
class Encryption {
  /// The key vault where the encryption key is stored
  final EncryptionKeyVaultProperties? keyVaultProperties;
  /// Status of customer managed encryption key
  final String? status;

  /// Creates a new [Encryption].
  /// [keyVaultProperties] The key vault where the encryption key is stored
  /// [status] Status of customer managed encryption key
  Encryption({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'status': ?status,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : EncryptionKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

