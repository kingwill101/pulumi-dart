import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_organization_security_health_analytics_setting_custom_module_args.dart';
import 'get_organization_security_health_analytics_setting_custom_module_result.dart';

/// Retrieves a SecurityHealthAnalyticsCustomModule.
Future<GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult>
    getOrganizationSecurityHealthAnalyticsSettingCustomModule(
  GetOrganizationSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult
      .fromMap(result);
}
