// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'elastic_encryption_identity.dart';
import 'elastic_key_vault_properties.dart';

/// Encryption settings
class ElasticEncryption {
  /// Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<ElasticEncryptionIdentity>? identity;
  /// The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  final pulumi.Input<String>? keySource;
  /// Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  final pulumi.Input<ElasticKeyVaultProperties>? keyVaultProperties;

  /// Creates a new [ElasticEncryption].
  /// [identity] Identity used to authenticate to KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive): Microsoft.NetApp, Microsoft.KeyVault
  /// [keyVaultProperties] Properties provided by KeyVault. Applicable if keySource is 'Microsoft.KeyVault'.
  ElasticEncryption({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?pulumi.Input.mapOptionalInputValue<ElasticEncryptionIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<ElasticKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory ElasticEncryption.fromMap(Map<String, dynamic> map) {
    return ElasticEncryption(
      identity: map['identity'] == null ? null : (ElasticEncryptionIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>())).input(),
      keySource: map['keySource'] == null ? null : (map['keySource'] as String).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (ElasticKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

