// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key_source_type.dart';
import 'encryption_properties_identity.dart';
import 'key_vault_properties.dart';

/// The encryption settings for automation account
class EncryptionProperties {
  /// User identity used for CMK.
  final EncryptionPropertiesIdentity? identity;
  /// Encryption Key Source
  final EncryptionKeySourceType? keySource;
  /// Key vault properties.
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionProperties].
  /// [identity] User identity used for CMK.
  /// [keySource] Encryption Key Source
  /// [keyVaultProperties] Key vault properties.
  EncryptionProperties({
    this.identity,
    this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity == null ? null : identity!.toMap(),
      'keySource': ?keySource == null ? null : keySource!.value,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      identity: map['identity'] == null ? null : EncryptionPropertiesIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      keySource: map['keySource'] == null ? null : EncryptionKeySourceType.fromValue(map['keySource'] as String),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

