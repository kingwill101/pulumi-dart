// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption {
  /// KMS key ARN that is used to encrypt the connection password.
  final pulumi.Input<String> awsKmsKeyId;
  /// When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  final pulumi.Input<bool> returnConnectionPasswordEncrypted;

  /// Creates a new [GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption].
  /// [awsKmsKeyId] KMS key ARN that is used to encrypt the connection password.
  /// [returnConnectionPasswordEncrypted] When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  const GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption({
    required this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKmsKeyId': awsKmsKeyId,
      'returnConnectionPasswordEncrypted': returnConnectionPasswordEncrypted,
    };
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption(
      awsKmsKeyId: pulumi.Input.fromValue(map['awsKmsKeyId'] as String),
      returnConnectionPasswordEncrypted: pulumi.Input.fromValue(map['returnConnectionPasswordEncrypted'] as bool),
    );
  }
}

