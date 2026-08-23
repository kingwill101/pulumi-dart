// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The disk encryption properties
class DiskEncryptionProperties {
  /// Algorithm identifier for encryption, default RSA-OAEP.
  final pulumi.Input<String>? encryptionAlgorithm;
  /// Indicates whether or not resource disk encryption is enabled.
  final pulumi.Input<bool>? encryptionAtHost;
  /// Key name that is used for enabling disk encryption.
  final pulumi.Input<String>? keyName;
  /// Specific key version that is used for enabling disk encryption.
  final pulumi.Input<String>? keyVersion;
  /// Resource ID of Managed Identity that is used to access the key vault.
  final pulumi.Input<String>? msiResourceId;
  /// Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net
  final pulumi.Input<String>? vaultUri;

  /// Creates a new [DiskEncryptionProperties].
  /// [encryptionAlgorithm] Algorithm identifier for encryption, default RSA-OAEP.
  /// [encryptionAtHost] Indicates whether or not resource disk encryption is enabled.
  /// [keyName] Key name that is used for enabling disk encryption.
  /// [keyVersion] Specific key version that is used for enabling disk encryption.
  /// [msiResourceId] Resource ID of Managed Identity that is used to access the key vault.
  /// [vaultUri] Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net
  const DiskEncryptionProperties({
    this.encryptionAlgorithm,
    this.encryptionAtHost,
    this.keyName,
    this.keyVersion,
    this.msiResourceId,
    this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionAlgorithm': ?encryptionAlgorithm,
      'encryptionAtHost': ?encryptionAtHost,
      'keyName': ?keyName,
      'keyVersion': ?keyVersion,
      'msiResourceId': ?msiResourceId,
      'vaultUri': ?vaultUri,
    };
  }

  factory DiskEncryptionProperties.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionProperties(
      encryptionAlgorithm: (() { final guardedValue = map['encryptionAlgorithm']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptionAtHost: (() { final guardedValue = map['encryptionAtHost']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      msiResourceId: (() { final guardedValue = map['msiResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vaultUri: (() { final guardedValue = map['vaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
