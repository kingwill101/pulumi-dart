// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_encryption_identity_response.dart';
import 'elastic_key_vault_properties_response.dart';

/// Encryption settings
class ElasticEncryptionResponse {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<ElasticEncryptionIdentityResponse?>? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  final pulumi.Input<String?>? keySource;
  /// Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<ElasticKeyVaultPropertiesResponse?>? keyVaultProperties;

  /// Creates a new [ElasticEncryptionResponse].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  const ElasticEncryptionResponse({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ElasticEncryptionIdentityResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<ElasticKeyVaultPropertiesResponse, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory ElasticEncryptionResponse.fromMap(Map<String, dynamic> map) {
    return ElasticEncryptionResponse(
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticEncryptionIdentityResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ElasticKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
