import 'package:pulumi/pulumi.dart';
import '../data_catalog_encryption_settings_data_catalog_encryption_settings/data_catalog_encryption_settings_data_catalog_encryption_settings.dart';
import 'data_catalog_encryption_settings_args.dart';

/// Provides a Glue Data Catalog Encryption Settings resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Glue Data Catalog Encryption Settings using `CATALOG-ID` (AWS account ID if not custom). For example:
///
/// ```sh
/// $ pulumi import aws:glue/dataCatalogEncryptionSettings:DataCatalogEncryptionSettings example 123456789012
/// ```
class DataCatalogEncryptionSettings extends CustomResource {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  late final Output<String> catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  late final Output<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>
      dataCatalogEncryptionSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DataCatalogEncryptionSettings(
    String name, {
    DataCatalogEncryptionSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataCatalogEncryptionSettings:DataCatalogEncryptionSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = registerOutput<String>('catalogId');
    this.dataCatalogEncryptionSettings = registerOutput<
            DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>(
        'dataCatalogEncryptionSettings');
    this.region = registerOutput<String>('region');
  }
}
