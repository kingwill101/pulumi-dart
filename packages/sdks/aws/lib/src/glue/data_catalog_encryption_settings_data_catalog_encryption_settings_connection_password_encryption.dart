// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption {
  /// A KMS key ARN that is used to encrypt the connection password. If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least `kms:Encrypt` permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.
  final pulumi.Input<String?>? awsKmsKeyId;
  /// When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  final pulumi.Input<bool> returnConnectionPasswordEncrypted;

  /// Creates a new [DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption].
  /// [awsKmsKeyId] A KMS key ARN that is used to encrypt the connection password. If connection password protection is enabled, the caller of CreateConnection and UpdateConnection needs at least `kms:Encrypt` permission on the specified AWS KMS key, to encrypt passwords before storing them in the Data Catalog.
  /// [returnConnectionPasswordEncrypted] When set to `true`, passwords remain encrypted in the responses of GetConnection and GetConnections. This encryption takes effect independently of the catalog encryption.
  const DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption({
    this.awsKmsKeyId,
    required this.returnConnectionPasswordEncrypted,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'awsKmsKeyId': ?awsKmsKeyId,
      'returnConnectionPasswordEncrypted': returnConnectionPasswordEncrypted,
    };
  }

  factory DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption(
      awsKmsKeyId: (() { final guardedValue = map['awsKmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      returnConnectionPasswordEncrypted: pulumi.Input.fromValue(map['returnConnectionPasswordEncrypted'] as bool),
    );
  }
}
