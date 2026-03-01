// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the encryption key properties
class EncryptionKeyDetails {
  /// The type of kek encryption key
  final String? kekType;
  /// Specifies the url for kek encryption key.
  final String? kekUrl;
  /// Specifies the keyvault resource id for kek encryption key.
  final String? kekVaultResourceID;

  /// Creates a new [EncryptionKeyDetails].
  /// [kekType] The type of kek encryption key
  /// [kekUrl] Specifies the url for kek encryption key.
  /// [kekVaultResourceID] Specifies the keyvault resource id for kek encryption key.
  EncryptionKeyDetails({
    this.kekType,
    this.kekUrl,
    this.kekVaultResourceID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kekType': ?kekType,
      'kekUrl': ?kekUrl,
      'kekVaultResourceID': ?kekVaultResourceID,
    };
  }

  factory EncryptionKeyDetails.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyDetails(
      kekType: map['kekType'] == null ? null : map['kekType'] as String,
      kekUrl: map['kekUrl'] == null ? null : map['kekUrl'] as String,
      kekVaultResourceID: map['kekVaultResourceID'] == null ? null : map['kekVaultResourceID'] as String,
    );
  }
}

