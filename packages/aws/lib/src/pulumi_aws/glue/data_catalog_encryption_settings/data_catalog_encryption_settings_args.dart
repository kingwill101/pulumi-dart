// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_catalog_encryption_settings_data_catalog_encryption_settings/data_catalog_encryption_settings_data_catalog_encryption_settings.dart';

/// The set of arguments for DataCatalogEncryptionSettings.
class DataCatalogEncryptionSettingsArgs {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  final pulumi.Input<String>? catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  final pulumi.Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>
      dataCatalogEncryptionSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

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
    map['dataCatalogEncryptionSettings'] = pulumi.Input.mapInputValue<
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
      catalogId: pulumi.Input.asOptionalInput<String>(map['catalogId']),
      dataCatalogEncryptionSettings: pulumi.Input.asInput<
              DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>(
          map['dataCatalogEncryptionSettings']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
