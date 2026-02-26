// ignore_for_file: unused_element, unnecessary_cast

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption {
  /// KMS key ARN that is used to encrypt the connection password.
  final String awsKmsKeyId;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  final bool returnConnectionPasswordEncrypted;

  GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption({
    required this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['awsKmsKeyId'] = awsKmsKeyId;
    map['returnConnectionPasswordEncrypted'] =
        returnConnectionPasswordEncrypted;
    return map;
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption.fromMap(
      Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption(
      awsKmsKeyId: map['awsKmsKeyId'] as String,
      returnConnectionPasswordEncrypted:
          map['returnConnectionPasswordEncrypted'] as bool,
    );
  }
}
