// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_catalog_encryption_settings_data_catalog_encryption_setting_connection_password_encryption.dart';
import 'get_data_catalog_encryption_settings_data_catalog_encryption_setting_encryption_at_rest.dart';

class GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting {
  /// When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption.
  final pulumi.Input<List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption>> connectionPasswordEncryptions;
  /// Encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.
  final pulumi.Input<List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest>> encryptionAtRests;

  /// Creates a new [GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting].
  /// [connectionPasswordEncryptions] When connection password protection is enabled, the Data Catalog uses a customer-provided key to encrypt the password as part of CreateConnection or UpdateConnection and store it in the ENCRYPTED_PASSWORD field in the connection properties. You can enable catalog encryption or only password encryption. see Connection Password Encryption.
  /// [encryptionAtRests] Encryption-at-rest configuration for the Data Catalog. see Encryption At Rest.
  GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting({
    required this.connectionPasswordEncryptions,
    required this.encryptionAtRests,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionPasswordEncryptions': pulumi.Input.mapInputValue<List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption>, List<Map<String, dynamic>>>(connectionPasswordEncryptions, (value) => pulumi.Input.encodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'encryptionAtRests': pulumi.Input.mapInputValue<List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest>, List<Map<String, dynamic>>>(encryptionAtRests, (value) => pulumi.Input.encodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting(
      connectionPasswordEncryptions: (pulumi.Input.decodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption>(map['connectionPasswordEncryptions']!, (value) => GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingConnectionPasswordEncryption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      encryptionAtRests: (pulumi.Input.decodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest>(map['encryptionAtRests']!, (value) => GetDataCatalogEncryptionSettingsDataCatalogEncryptionSettingEncryptionAtRest.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

