import 'package:pulumi/pulumi.dart';
import 'get_project_security_health_analytics_setting_custom_module_args.dart';
import 'get_project_security_health_analytics_setting_custom_module_result.dart';

/// Retrieves a SecurityHealthAnalyticsCustomModule.
Future<GetProjectSecurityHealthAnalyticsSettingCustomModuleResult>
    getProjectSecurityHealthAnalyticsSettingCustomModule(
  GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetProjectSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(
      result);
}
