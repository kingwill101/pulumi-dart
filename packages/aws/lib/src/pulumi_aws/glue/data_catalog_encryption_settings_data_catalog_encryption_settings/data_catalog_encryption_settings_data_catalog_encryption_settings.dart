// ignore_for_file: unused_element, unnecessary_cast

import '../data_catalog_encryption_settings_data_catalog_encryption_settings_connection_password_encryption/data_catalog_encryption_settings_data_catalog_encryption_settings_connection_password_encryption.dart';
import '../data_catalog_encryption_settings_data_catalog_encryption_settings_encryption_at_rest/data_catalog_encryption_settings_data_catalog_encryption_settings_encryption_at_rest.dart';

class DataCatalogEncryptionSettingsDataCatalogEncryptionSettings {
  /// When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption.
  final DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption
      connectionPasswordEncryption;

  /// Specifies the encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.
  final DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest
      encryptionAtRest;

  DataCatalogEncryptionSettingsDataCatalogEncryptionSettings({
    required this.connectionPasswordEncryption,
    required this.encryptionAtRest,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionPasswordEncryption'] = connectionPasswordEncryption.toMap();
    map['encryptionAtRest'] = encryptionAtRest.toMap();
    return map;
  }

  factory DataCatalogEncryptionSettingsDataCatalogEncryptionSettings.fromMap(
      Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsDataCatalogEncryptionSettings(
      connectionPasswordEncryption:
          DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryption
              .fromMap((map['connectionPasswordEncryption'] as Map)
                  .cast<String, dynamic>()),
      encryptionAtRest:
          DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRest
              .fromMap(
                  (map['encryptionAtRest'] as Map).cast<String, dynamic>()),
    );
  }
}
