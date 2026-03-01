// ignore_for_file: unused_element, unnecessary_cast


/// The object that contains details of encryption used on the workspace.
class Encryption {
  /// The name of KeyVault key.
  final String? keyName;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  final String? keySource;
  /// The Uri of KeyVault.
  final String? keyVaultUri;
  /// The version of KeyVault key.
  final String? keyVersion;

  /// Creates a new [Encryption].
  /// [keyName] The name of KeyVault key.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  Encryption({
    this.keyName,
    this.keySource,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keySource': ?keySource,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keyName: map['keyName'] == null ? null : map['keyName'] as String,
      keySource: map['keySource'] == null ? null : map['keySource'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

