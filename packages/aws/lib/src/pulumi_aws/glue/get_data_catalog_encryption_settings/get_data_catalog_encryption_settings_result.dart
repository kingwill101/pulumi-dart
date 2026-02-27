// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_data_catalog_encryption_settings_data_catalog_encryption_setting/get_data_catalog_encryption_settings_data_catalog_encryption_setting.dart';

/// Result data returned by getDataCatalogEncryptionSettings.
class GetDataCatalogEncryptionSettingsResult {
  final String catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  final List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting>
      dataCatalogEncryptionSettings;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String region;

  GetDataCatalogEncryptionSettingsResult({
    required this.catalogId,
    required this.dataCatalogEncryptionSettings,
    required this.id,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['catalogId'] = catalogId;
    map['dataCatalogEncryptionSettings'] = pulumi.Input.encodeList<
            GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting,
            Map<String, dynamic>>(
        dataCatalogEncryptionSettings, (value) => value.toMap());
    map['id'] = id;
    map['region'] = region;
    return map;
  }

  factory GetDataCatalogEncryptionSettingsResult.fromMap(
      Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsResult(
      catalogId: map['catalogId'] as String,
      dataCatalogEncryptionSettings: pulumi.Input.decodeList<
              GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting>(
          map['dataCatalogEncryptionSettings'],
          (value) =>
              GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting
                  .fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      region: map['region'] as String,
    );
  }
}
