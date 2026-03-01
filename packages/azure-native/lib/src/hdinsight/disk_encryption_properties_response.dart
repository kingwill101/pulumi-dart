// ignore_for_file: unused_element, unnecessary_cast


/// The disk encryption properties
class DiskEncryptionPropertiesResponse {
  /// Algorithm identifier for encryption, default RSA-OAEP.
  final String? encryptionAlgorithm;
  /// Indicates whether or not resource disk encryption is enabled.
  final bool? encryptionAtHost;
  /// Key name that is used for enabling disk encryption.
  final String? keyName;
  /// Specific key version that is used for enabling disk encryption.
  final String? keyVersion;
  /// Resource ID of Managed Identity that is used to access the key vault.
  final String? msiResourceId;
  /// Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net
  final String? vaultUri;

  /// Creates a new [DiskEncryptionPropertiesResponse].
  /// [encryptionAlgorithm] Algorithm identifier for encryption, default RSA-OAEP.
  /// [encryptionAtHost] Indicates whether or not resource disk encryption is enabled.
  /// [keyName] Key name that is used for enabling disk encryption.
  /// [keyVersion] Specific key version that is used for enabling disk encryption.
  /// [msiResourceId] Resource ID of Managed Identity that is used to access the key vault.
  /// [vaultUri] Base key vault URI where the customers key is located eg. https://myvault.vault.azure.net
  DiskEncryptionPropertiesResponse({
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

  factory DiskEncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionPropertiesResponse(
      encryptionAlgorithm: map['encryptionAlgorithm'] == null ? null : map['encryptionAlgorithm'] as String,
      encryptionAtHost: map['encryptionAtHost'] == null ? null : map['encryptionAtHost'] as bool,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      msiResourceId: map['msiResourceId'] == null ? null : map['msiResourceId'] as String,
      vaultUri: map['vaultUri'] == null ? null : map['vaultUri'] as String,
    );
  }
}

