import 'package:pulumi/pulumi.dart';
import 'get_folder_security_health_analytics_setting_custom_module_args.dart';
import 'get_folder_security_health_analytics_setting_custom_module_result.dart';

/// Retrieves a SecurityHealthAnalyticsCustomModule.
Future<GetFolderSecurityHealthAnalyticsSettingCustomModuleResult>
    getFolderSecurityHealthAnalyticsSettingCustomModule(
  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFolderSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(
      result);
}
