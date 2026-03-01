// ignore_for_file: unused_element, unnecessary_cast


/// The container group encryption properties.
class EncryptionPropertiesResponse {
  /// The keyvault managed identity.
  final String? identity;
  /// The encryption key name.
  final String keyName;
  /// The encryption key version.
  final String keyVersion;
  /// The keyvault base url.
  final String vaultBaseUrl;

  /// Creates a new [EncryptionPropertiesResponse].
  /// [identity] The keyvault managed identity.
  /// [keyName] The encryption key name.
  /// [keyVersion] The encryption key version.
  /// [vaultBaseUrl] The keyvault base url.
  EncryptionPropertiesResponse({
    this.identity,
    required this.keyName,
    required this.keyVersion,
    required this.vaultBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyName': keyName,
      'keyVersion': keyVersion,
      'vaultBaseUrl': vaultBaseUrl,
    };
  }

  factory EncryptionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionPropertiesResponse(
      identity: map['identity'] == null ? null : map['identity'] as String,
      keyName: map['keyName'] as String,
      keyVersion: map['keyVersion'] as String,
      vaultBaseUrl: map['vaultBaseUrl'] as String,
    );
  }
}

