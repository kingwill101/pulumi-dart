// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_encryption_settings_data_catalog_encryption_settings_connection_password_encryption.dart';
import 'data_catalog_encryption_settings_data_catalog_encryption_settings_encryption_at_rest.dart';

class DataCatalogEncryptionSettingsDataCatalogEncryptionSettings {
  /// When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption.
  final pulumi.Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption> connectionPasswordEncryption;
  /// Specifies the encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.
  final pulumi.Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest> encryptionAtRest;

  /// Creates a new [DataCatalogEncryptionSettingsDataCatalogEncryptionSettings].
  /// [connectionPasswordEncryption] When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption.
  /// [encryptionAtRest] Specifies the encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.
  DataCatalogEncryptionSettingsDataCatalogEncryptionSettings({
    required this.connectionPasswordEncryption,
    required this.encryptionAtRest,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPasswordEncryption': pulumi.Input.mapInputValue<DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption, Map<String, dynamic>>(connectionPasswordEncryption, (value) => value.toMap()),
      'encryptionAtRest': pulumi.Input.mapInputValue<DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest, Map<String, dynamic>>(encryptionAtRest, (value) => value.toMap()),
    };
  }

  factory DataCatalogEncryptionSettingsDataCatalogEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsDataCatalogEncryptionSettings(
      connectionPasswordEncryption: (DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption.fromMap((map['connectionPasswordEncryption']! as Map).cast<String, dynamic>())).input(),
      encryptionAtRest: (DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest.fromMap((map['encryptionAtRest']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

