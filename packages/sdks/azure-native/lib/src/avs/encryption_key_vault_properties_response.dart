// ignore_for_file: unused_element, unnecessary_cast


/// An Encryption Key
class EncryptionKeyVaultPropertiesResponse {
  /// The auto-detected version of the key if versionType is auto-detected.
  final String autoDetectedKeyVersion;
  /// The name of the key.
  final String? keyName;
  /// The state of key provided
  final String keyState;
  /// The URL of the vault.
  final String? keyVaultUrl;
  /// The version of the key.
  final String? keyVersion;
  /// Property of the key if user provided or auto detected
  final String versionType;

  /// Creates a new [EncryptionKeyVaultPropertiesResponse].
  /// [autoDetectedKeyVersion] The auto-detected version of the key if versionType is auto-detected.
  /// [keyName] The name of the key.
  /// [keyState] The state of key provided
  /// [keyVaultUrl] The URL of the vault.
  /// [keyVersion] The version of the key.
  /// [versionType] Property of the key if user provided or auto detected
  EncryptionKeyVaultPropertiesResponse({
    required this.autoDetectedKeyVersion,
    this.keyName,
    required this.keyState,
    this.keyVaultUrl,
    this.keyVersion,
    required this.versionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDetectedKeyVersion': autoDetectedKeyVersion,
      'keyName': ?keyName,
      'keyState': keyState,
      'keyVaultUrl': ?keyVaultUrl,
      'keyVersion': ?keyVersion,
      'versionType': versionType,
    };
  }

  factory EncryptionKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyVaultPropertiesResponse(
      autoDetectedKeyVersion: map['autoDetectedKeyVersion'] as String,
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyState: map['keyState'] as String,
      keyVaultUrl: map['keyVaultUrl'] == null ? null : map['keyVaultUrl'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
      versionType: map['versionType'] as String,
    );
  }
}

