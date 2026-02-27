import 'package:pulumi/pulumi.dart';
import 'get_organization_settings_args.dart';
import 'get_organization_settings_result.dart';

/// Describes the settings associated with a organization.
///
/// To get more information about LoggingOrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Organization Settings Basic
Future<GetOrganizationSettingsResult> getOrganizationSettings(
  GetOrganizationSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getOrganizationSettings:getOrganizationSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSettingsResult.fromMap(result);
}
