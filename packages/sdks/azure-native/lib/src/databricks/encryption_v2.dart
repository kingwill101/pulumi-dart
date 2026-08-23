// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'encryption_v2_key_vault_properties.dart';

/// The object that contains details of encryption used on the workspace.
class EncryptionV2 {
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  final pulumi.Input<String> keySource;
  /// Key Vault input properties for encryption.
  final pulumi.Input<EncryptionV2KeyVaultProperties>? keyVaultProperties;

  /// Creates a new [EncryptionV2].
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  /// [keyVaultProperties] Key Vault input properties for encryption.
  const EncryptionV2({
    required this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': keySource,
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<EncryptionV2KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory EncryptionV2.fromMap(Map<String, dynamic> map) {
    return EncryptionV2(
      keySource: pulumi.Input.fromValue(map['keySource'] as String),
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionV2KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
