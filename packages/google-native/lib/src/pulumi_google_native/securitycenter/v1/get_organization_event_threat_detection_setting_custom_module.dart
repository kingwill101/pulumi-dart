import 'package:pulumi/pulumi.dart' hide Config;
import 'get_organization_event_threat_detection_setting_custom_module_args.dart';
import 'get_organization_event_threat_detection_setting_custom_module_result.dart';

/// Gets an Event Threat Detection custom module.
Future<GetOrganizationEventThreatDetectionSettingCustomModuleResult>
    getOrganizationEventThreatDetectionSettingCustomModule(
  GetOrganizationEventThreatDetectionSettingCustomModuleArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationEventThreatDetectionSettingCustomModule',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap(
      result);
}
