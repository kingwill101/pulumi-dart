import 'package:pulumi/pulumi.dart';
import 'get_data_catalog_encryption_settings_args.dart';
import 'get_data_catalog_encryption_settings_result.dart';

/// This data source can be used to fetch information about AWS Glue Data Catalog Encryption Settings.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```yaml
/// variables:
/// example:
/// fn::invoke:
/// function: aws:glue:getDataCatalogEncryptionSettings
/// arguments:
/// id: '123456789123'
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetDataCatalogEncryptionSettingsResult> getDataCatalogEncryptionSettings(
  GetDataCatalogEncryptionSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:glue/getDataCatalogEncryptionSettings:getDataCatalogEncryptionSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDataCatalogEncryptionSettingsResult.fromMap(result);
}
