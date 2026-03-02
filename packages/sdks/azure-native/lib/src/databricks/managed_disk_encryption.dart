// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_disk_encryption_key_vault_properties.dart';

/// The object that contains details of encryption used on the workspace.
class ManagedDiskEncryption {
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  final pulumi.Input<String> keySource;
  /// Key Vault input properties for encryption.
  final pulumi.Input<ManagedDiskEncryptionKeyVaultProperties> keyVaultProperties;
  /// Indicate whether the latest key version should be automatically used for Managed Disk Encryption.
  final pulumi.Input<bool>? rotationToLatestKeyVersionEnabled;

  /// Creates a new [ManagedDiskEncryption].
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  /// [keyVaultProperties] Key Vault input properties for encryption.
  /// [rotationToLatestKeyVersionEnabled] Indicate whether the latest key version should be automatically used for Managed Disk Encryption.
  ManagedDiskEncryption({
    required this.keySource,
    required this.keyVaultProperties,
    this.rotationToLatestKeyVersionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': keySource,
      'keyVaultProperties': pulumi.Input.mapInputValue<ManagedDiskEncryptionKeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
    };
  }

  factory ManagedDiskEncryption.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryption(
      keySource: (map['keySource'] as String).input(),
      keyVaultProperties: (ManagedDiskEncryptionKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      rotationToLatestKeyVersionEnabled: map['rotationToLatestKeyVersionEnabled'] == null ? null : (map['rotationToLatestKeyVersionEnabled']! as bool).input(),
    );
  }
}

