// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_vault_properties_response.dart';

/// The properties of customer managed encryption key
class EncryptionResponse {
  /// The key vault where the encryption key is stored
  final EncryptionKeyVaultPropertiesResponse? keyVaultProperties;
  /// Status of customer managed encryption key
  final String? status;

  /// Creates a new [EncryptionResponse].
  /// [keyVaultProperties] The key vault where the encryption key is stored
  /// [status] Status of customer managed encryption key
  EncryptionResponse({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'status': ?status,
    };
  }

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : EncryptionKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

