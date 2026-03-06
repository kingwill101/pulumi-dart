// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_catalog_encryption_settings_data_catalog_encryption_settings.dart';

/// Input properties used for looking up and filtering DataCatalogEncryptionSettings resources.
class DataCatalogEncryptionSettingsState {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  final pulumi.Input<String>? catalogId;
  /// The security configuration to set. see Data Catalog Encryption Settings.
  final pulumi.Input<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>? dataCatalogEncryptionSettings;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataCatalogEncryptionSettingsState].
  /// [catalogId] The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  /// [dataCatalogEncryptionSettings] The security configuration to set. see Data Catalog Encryption Settings.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DataCatalogEncryptionSettingsState({
    this.catalogId,
    this.dataCatalogEncryptionSettings,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': ?catalogId,
      'dataCatalogEncryptionSettings': ?pulumi.Input.mapOptionalInputValue<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings, Map<String, dynamic>>(dataCatalogEncryptionSettings, (value) => value.toMap()),
      'region': ?region,
    };
  }

  factory DataCatalogEncryptionSettingsState.fromMap(Map<String, dynamic> map) {
    return DataCatalogEncryptionSettingsState(
      catalogId: (() { final guardedValue = map['catalogId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataCatalogEncryptionSettings: (() { final guardedValue = map['dataCatalogEncryptionSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCatalogEncryptionSettingsDataCatalogEncryptionSettings.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

