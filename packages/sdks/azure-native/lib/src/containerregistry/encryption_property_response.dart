// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

class EncryptionPropertyResponse {
  /// Key vault properties.
  final KeyVaultPropertiesResponse? keyVaultProperties;
  /// Indicates whether or not the encryption is enabled for container registry.
  final String? status;

  /// Creates a new [EncryptionPropertyResponse].
  /// [keyVaultProperties] Key vault properties.
  /// [status] Indicates whether or not the encryption is enabled for container registry.
  EncryptionPropertyResponse({
    this.keyVaultProperties,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
      'status': ?status,
    };
  }

  factory EncryptionPropertyResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertyResponse(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

