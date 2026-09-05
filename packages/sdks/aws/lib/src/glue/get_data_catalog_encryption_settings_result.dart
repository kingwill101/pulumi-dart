// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_data_catalog_encryption_settings_data_catalog_encryption_setting.dart';

/// Result data returned by getDataCatalogEncryptionSettings.
class GetDataCatalogEncryptionSettingsResult {
  final String? catalogId;
  /// The security configuration to set. see Data Catalog Encryption Settings.
  final List<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting>? dataCatalogEncryptionSettings;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  final String? region;

  /// Creates a new [GetDataCatalogEncryptionSettingsResult].
  /// [catalogId] Optional.
  /// [dataCatalogEncryptionSettings] The security configuration to set. see Data Catalog Encryption Settings.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [region] Optional.
  const GetDataCatalogEncryptionSettingsResult({
    this.catalogId,
    this.dataCatalogEncryptionSettings,
    this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'dataCatalogEncryptionSettings': ?(() { final guardedValue = dataCatalogEncryptionSettings; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'region': ?region,
    };
  }

  factory GetDataCatalogEncryptionSettingsResult.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsResult(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataCatalogEncryptionSettings: (() { final guardedValue = map['dataCatalogEncryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting>(guardedValue, (value) => GetDataCatalogEncryptionSettingsDataCatalogEncryptionSetting.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
