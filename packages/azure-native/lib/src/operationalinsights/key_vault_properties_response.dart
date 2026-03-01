// ignore_for_file: unused_element, unnecessary_cast


/// The key vault properties.
class KeyVaultPropertiesResponse {
  /// The name of the key associated with the Log Analytics cluster.
  final String? keyName;
  /// Selected key minimum required size.
  final int? keyRsaSize;
  /// The Key Vault uri which holds they key associated with the Log Analytics cluster.
  final String? keyVaultUri;
  /// The version of the key associated with the Log Analytics cluster.
  final String? keyVersion;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The name of the key associated with the Log Analytics cluster.
  /// [keyRsaSize] Selected key minimum required size.
  /// [keyVaultUri] The Key Vault uri which holds they key associated with the Log Analytics cluster.
  /// [keyVersion] The version of the key associated with the Log Analytics cluster.
  KeyVaultPropertiesResponse({
    this.keyName,
    this.keyRsaSize,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyRsaSize': ?keyRsaSize,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keyRsaSize: map['keyRsaSize'] == null ? null : map['keyRsaSize'] as int,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

