// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_glue_get_data_catalog_encryption_settings_get_data_catalog_encryption_settings_args_doc}
/// Arguments for getDataCatalogEncryptionSettings.
/// {@endtemplate}
/// {@macro pulumi_glue_get_data_catalog_encryption_settings_get_data_catalog_encryption_settings_args_doc}
class GetDataCatalogEncryptionSettingsArgs {
  /// ID of the Data Catalog. This is typically the AWS account ID.
  final pulumi.Input<String> catalogId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetDataCatalogEncryptionSettingsArgs].
  /// [catalogId] ID of the Data Catalog. This is typically the AWS account ID.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetDataCatalogEncryptionSettingsArgs({
    required this.catalogId,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'catalogId': catalogId,
      'region': ?region,
    };
  }

  factory GetDataCatalogEncryptionSettingsArgs.fromMap(Map<String, dynamic> map) {
    return GetDataCatalogEncryptionSettingsArgs(
      catalogId: (map['catalogId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

