import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_folder_big_query_export_args.dart';
import 'get_folder_big_query_export_result.dart';
import 'get_folder_notification_config_args.dart';
import 'get_folder_notification_config_result.dart';
import 'get_folder_security_health_analytics_setting_custom_module_args.dart';
import 'get_folder_security_health_analytics_setting_custom_module_result.dart';
import 'get_mute_config_args.dart';
import 'get_mute_config_result.dart';
import 'get_notification_config_args.dart';
import 'get_notification_config_result.dart';
import 'get_organization_big_query_export_args.dart';
import 'get_organization_big_query_export_result.dart';
import 'get_organization_event_threat_detection_setting_custom_module_args.dart';
import 'get_organization_event_threat_detection_setting_custom_module_result.dart';
import 'get_organization_mute_config_args.dart';
import 'get_organization_mute_config_result.dart';
import 'get_organization_notification_config_args.dart';
import 'get_organization_notification_config_result.dart';
import 'get_organization_security_health_analytics_setting_custom_module_args.dart';
import 'get_organization_security_health_analytics_setting_custom_module_result.dart';
import 'get_organization_source_iam_policy_args.dart';
import 'get_organization_source_iam_policy_result.dart';
import 'get_organization_source_iam_policy_securitycenter_v1beta1_args.dart';
import 'get_organization_source_iam_policy_securitycenter_v1beta1_result.dart';
import 'get_project_big_query_export_args.dart';
import 'get_project_big_query_export_result.dart';
import 'get_project_security_health_analytics_setting_custom_module_args.dart';
import 'get_project_security_health_analytics_setting_custom_module_result.dart';
import 'get_source_args.dart';
import 'get_source_result.dart';
import 'get_source_securitycenter_v1beta1_args.dart';
import 'get_source_securitycenter_v1beta1_result.dart';

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderBigQueryExportResult> getFolderBigQueryExport(
  GetFolderBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderBigQueryExportResult.fromMap(result);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderNotificationConfigResult> getFolderNotificationConfig(
  GetFolderNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderNotificationConfigResult.fromMap(result);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_folder_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetFolderSecurityHealthAnalyticsSettingCustomModuleResult>
getFolderSecurityHealthAnalyticsSettingCustomModule(
  GetFolderSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getFolderSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFolderSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(
    result,
  );
}

/// Gets a mute config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_mute_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMuteConfigResult> getMuteConfig(
  GetMuteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getMuteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMuteConfigResult.fromMap(result);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNotificationConfigResult> getNotificationConfig(
  GetNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNotificationConfigResult.fromMap(result);
}

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationBigQueryExportResult> getOrganizationBigQueryExport(
  GetOrganizationBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationBigQueryExportResult.fromMap(result);
}

/// Gets an Event Threat Detection custom module.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_event_threat_detection_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationEventThreatDetectionSettingCustomModuleResult>
getOrganizationEventThreatDetectionSettingCustomModule(
  GetOrganizationEventThreatDetectionSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationEventThreatDetectionSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEventThreatDetectionSettingCustomModuleResult.fromMap(
    result,
  );
}

/// Gets a mute config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_mute_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationMuteConfigResult> getOrganizationMuteConfig(
  GetOrganizationMuteConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationMuteConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationMuteConfigResult.fromMap(result);
}

/// Gets a notification config.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_notification_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationNotificationConfigResult>
getOrganizationNotificationConfig(
  GetOrganizationNotificationConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationNotificationConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationNotificationConfigResult.fromMap(result);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
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
  return GetOrganizationSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(
    result,
  );
}

/// Gets the access control policy on the specified Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_organization_source_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSourceIamPolicyResult> getOrganizationSourceIamPolicy(
  GetOrganizationSourceIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicyResult.fromMap(result);
}

/// Gets a BigQuery export.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_project_big_query_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectBigQueryExportResult> getProjectBigQueryExport(
  GetProjectBigQueryExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectBigQueryExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectBigQueryExportResult.fromMap(result);
}

/// Retrieves a SecurityHealthAnalyticsCustomModule.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_project_security_health_analytics_setting_custom_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectSecurityHealthAnalyticsSettingCustomModuleResult>
getProjectSecurityHealthAnalyticsSettingCustomModule(
  GetProjectSecurityHealthAnalyticsSettingCustomModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getProjectSecurityHealthAnalyticsSettingCustomModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectSecurityHealthAnalyticsSettingCustomModuleResult.fromMap(
    result,
  );
}

/// Gets a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1_get_source_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceResult> getSource(
  GetSourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceResult.fromMap(result);
}

/// Gets the access control policy on the specified Source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1beta1_get_organization_source_iam_policy_securitycenter_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationSourceIamPolicySecuritycenterV1beta1Result>
getOrganizationSourceIamPolicySecuritycenterV1beta1(
  GetOrganizationSourceIamPolicySecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getOrganizationSourceIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSourceIamPolicySecuritycenterV1beta1Result.fromMap(
    result,
  );
}

/// Gets a source.
/// [args] Arguments passed to this invoke. {@macro pulumi_securitycenter_v1beta1_get_source_securitycenter_v1beta1_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceSecuritycenterV1beta1Result> getSourceSecuritycenterV1beta1(
  GetSourceSecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceSecuritycenterV1beta1Result.fromMap(result);
}
