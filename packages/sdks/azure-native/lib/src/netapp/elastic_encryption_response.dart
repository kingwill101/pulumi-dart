// ignore_for_file: unused_element, unnecessary_cast

import 'elastic_encryption_identity_response.dart';
import 'elastic_key_vault_properties_response.dart';

/// Encryption settings
class ElasticEncryptionResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final ElasticEncryptionIdentityResponse? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  final String? keySource;
  /// Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final ElasticKeyVaultPropertiesResponse? keyVaultProperties;

  /// Creates a new [ElasticEncryptionResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  ElasticEncryptionResponse({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keySource': ?keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory ElasticEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionResponse(
      identity: map['identity'] == null ? null : ElasticEncryptionIdentityResponse.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : ElasticKeyVaultPropertiesResponse.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

