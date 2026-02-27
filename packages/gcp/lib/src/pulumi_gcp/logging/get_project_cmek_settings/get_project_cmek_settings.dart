import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_project_cmek_settings_args.dart';
import 'get_project_cmek_settings_result.dart';

/// Describes the customer-managed encryption key (CMEK) settings associated with a project.
///
/// To get more information about Service, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects/getCmekSettings)
/// * [Enable CMEK](https://cloud.google.com/logging/docs/routing/managed-encryption-storage#enable).
///
/// ## Example Usage
///
/// ### Logging Project Cmek Settings Basic
Future<GetProjectCmekSettingsResult> getProjectCmekSettings(
  GetProjectCmekSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getProjectCmekSettings:getProjectCmekSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectCmekSettingsResult.fromMap(result);
}
