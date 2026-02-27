import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_settings_args.dart';
import 'get_folder_settings_result.dart';

/// Describes the settings associated with a folder.
///
/// To get more information about LoggingFolderSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/folders/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Folder Settings Basic
Future<GetFolderSettingsResult> getFolderSettings(
  GetFolderSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getFolderSettings:getFolderSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderSettingsResult.fromMap(result);
}
