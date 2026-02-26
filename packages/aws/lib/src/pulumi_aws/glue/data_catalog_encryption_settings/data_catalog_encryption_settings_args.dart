// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_catalog_encryption_settings_data_catalog_encryption_settings/data_catalog_encryption_settings_data_catalog_encryption_settings.dart';

/// The set of arguments for DataCatalogEncryptionSettings.
class DataCatalogEncryptionSettingsArgs {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  final Input<String>? catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  final Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>
      dataCatalogEncryptionSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  DataCatalogEncryptionSettingsArgs({
    this.catalogId,
    required this.dataCatalogEncryptionSettings,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final catalogIdValue = catalogId;
    if (catalogIdValue != null) {
      map['catalogId'] = catalogIdValue;
    }
    map['dataCatalogEncryptionSettings'] = Input.mapInputValue<
            DataCatalogEncryptionSettingsDataCatalogEncryptionSettings,
            Map<String, dynamic>>(
        dataCatalogEncryptionSettings, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DataCatalogEncryptionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsArgs(
      catalogId: Input.asOptionalInput<String>(map['catalogId']),
      dataCatalogEncryptionSettings: Input.asInput<
              DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>(
          map['dataCatalogEncryptionSettings']),
      region: Input.asOptionalInput<String>(map['region']),
    );
  }
}
