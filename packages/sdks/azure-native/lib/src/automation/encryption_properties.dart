// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_key_source_type.dart';
import 'encryption_properties_identity.dart';
import 'key_vault_properties.dart';

/// The encryption settings for automation account
class EncryptionProperties {
  /// User identity used for CMK.
  final pulumi.Input<EncryptionPropertiesIdentity>? identity;
  /// Encryption Key Source
  final pulumi.Input<EncryptionKeySourceType>? keySource;
  /// Key vault properties.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<EncryptionPropertiesIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'keySource': ?pulumi.Input.mapOptionalInputValue<EncryptionKeySourceType, String>(keySource, (value) => value.value),
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      identity: map['identity'] == null ? null : (EncryptionPropertiesIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      keySource: map['keySource'] == null ? null : (EncryptionKeySourceType.fromValue(map['keySource']! as String)).input(),
      keyVaultProperties: map['keyVaultProperties'] == null ? null : (KeyVaultProperties.fromMap((map['keyVaultProperties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

