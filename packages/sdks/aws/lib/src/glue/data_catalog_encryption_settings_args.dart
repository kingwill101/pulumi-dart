// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_encryption_settings_data_catalog_encryption_settings.dart';

/// {@template pulumi_glue_data_catalog_encryption_settings_data_catalog_encryption_settings_args_doc}
/// The set of arguments for DataCatalogEncryptionSettings.
/// {@endtemplate}
/// {@macro pulumi_glue_data_catalog_encryption_settings_data_catalog_encryption_settings_args_doc}
class DataCatalogEncryptionSettingsArgs {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  final pulumi.Input<String>? catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  final pulumi.Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>
  dataCatalogEncryptionSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataCatalogEncryptionSettingsArgs].
  /// [catalogId] The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  /// [dataCatalogEncryptionSettings] The security configuration to set. see Data Catalog Encryption Settings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataCatalogEncryptionSettingsArgs({
    this.catalogId,
    required this.dataCatalogEncryptionSettings,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'dataCatalogEncryptionSettings':
          pulumi.Input.mapInputValue<
            DataCatalogEncryptionSettingsDataCatalogEncryptionSettings,
            Map<String, dynamic>
          >(dataCatalogEncryptionSettings, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory DataCatalogEncryptionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsArgs(
      catalogId: (() {
        final guardedValue = map['catalogId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      dataCatalogEncryptionSettings: pulumi.Input.fromValue(
        DataCatalogEncryptionSettingsDataCatalogEncryptionSettings.fromMap(
          (map['dataCatalogEncryptionSettings']! as Map)
              .cast<String, dynamic>(),
        ),
      ),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
