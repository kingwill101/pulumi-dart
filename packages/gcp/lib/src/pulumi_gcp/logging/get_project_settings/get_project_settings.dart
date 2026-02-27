import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_settings_args.dart';
import 'get_project_settings_result.dart';

/// Describes the settings associated with a project.
///
/// To get more information about LoggingProjectSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Project Settings Basic
Future<GetProjectSettingsResult> getProjectSettings(
  GetProjectSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectSettings:getProjectSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectSettingsResult.fromMap(result);
}
