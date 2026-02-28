import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_alias_args.dart';
import 'get_alias_result.dart';
import 'get_api_args.dart';
import 'get_api_product_args.dart';
import 'get_api_product_result.dart';
import 'get_api_result.dart';
import 'get_apicategory_args.dart';
import 'get_apicategory_result.dart';
import 'get_app_group_app_args.dart';
import 'get_app_group_app_key_args.dart';
import 'get_app_group_app_key_result.dart';
import 'get_app_group_app_result.dart';
import 'get_appgroup_args.dart';
import 'get_appgroup_result.dart';
import 'get_archive_deployment_args.dart';
import 'get_archive_deployment_result.dart';
import 'get_canary_evaluation_args.dart';
import 'get_canary_evaluation_result.dart';
import 'get_data_collector_args.dart';
import 'get_data_collector_result.dart';
import 'get_datastore_args.dart';
import 'get_datastore_result.dart';
import 'get_debug_session_args.dart';
import 'get_debug_session_result.dart';
import 'get_developer_app_args.dart';
import 'get_developer_app_key_args.dart';
import 'get_developer_app_key_result.dart';
import 'get_developer_app_result.dart';
import 'get_developer_args.dart';
import 'get_developer_result.dart';
import 'get_endpoint_attachment_args.dart';
import 'get_endpoint_attachment_result.dart';
import 'get_entry_args.dart';
import 'get_entry_result.dart';
import 'get_envgroup_args.dart';
import 'get_envgroup_attachment_args.dart';
import 'get_envgroup_attachment_result.dart';
import 'get_envgroup_result.dart';
import 'get_environment_args.dart';
import 'get_environment_entry_args.dart';
import 'get_environment_entry_result.dart';
import 'get_environment_result.dart';
import 'get_export_args.dart';
import 'get_export_result.dart';
import 'get_host_query_args.dart';
import 'get_host_query_result.dart';
import 'get_host_security_report_args.dart';
import 'get_host_security_report_result.dart';
import 'get_instance_args.dart';
import 'get_instance_attachment_args.dart';
import 'get_instance_attachment_result.dart';
import 'get_instance_result.dart';
import 'get_keystore_args.dart';
import 'get_keystore_result.dart';
import 'get_nat_address_args.dart';
import 'get_nat_address_result.dart';
import 'get_organization_args.dart';
import 'get_organization_environment_iam_policy_args.dart';
import 'get_organization_environment_iam_policy_result.dart';
import 'get_organization_result.dart';
import 'get_override_args.dart';
import 'get_override_result.dart';
import 'get_query_args.dart';
import 'get_query_result.dart';
import 'get_rate_plan_args.dart';
import 'get_rate_plan_result.dart';
import 'get_reference_args.dart';
import 'get_reference_result.dart';
import 'get_report_args.dart';
import 'get_report_result.dart';
import 'get_resourcefile_args.dart';
import 'get_resourcefile_result.dart';
import 'get_security_action_args.dart';
import 'get_security_action_result.dart';
import 'get_security_profile_args.dart';
import 'get_security_profile_result.dart';
import 'get_security_report_args.dart';
import 'get_security_report_result.dart';
import 'get_sharedflow_args.dart';
import 'get_sharedflow_result.dart';
import 'get_subscription_args.dart';
import 'get_subscription_result.dart';
import 'get_target_server_args.dart';
import 'get_target_server_result.dart';

/// Gets an alias.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_alias_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAliasResult> getAlias(
  GetAliasArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAlias',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAliasResult.fromMap(result);
}

/// Gets an API proxy including a list of existing revisions.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_api_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiResult> getApi(
  GetApiArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApi',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiResult.fromMap(result);
}

/// Gets configuration details for an API product. The API product name required in the request URL is the internal name of the product, not the display name. While they may be the same, it depends on whether the API product was created via the UI or the API. View the list of API products to verify the internal name.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_api_product_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApiProductResult> getApiProduct(
  GetApiProductArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApiProduct',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApiProductResult.fromMap(result);
}

/// Gets an API category.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_apicategory_args_doc}
/// [options] Invoke options controlling this call.
Future<GetApicategoryResult> getApicategory(
  GetApicategoryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getApicategory',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetApicategoryResult.fromMap(result);
}

/// Returns the details for an AppGroup app.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_app_group_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGroupAppResult> getAppGroupApp(
  GetAppGroupAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppResult.fromMap(result);
}

/// Gets details for a consumer key for a AppGroup app, including the key and secret value, associated API products, and other information.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_app_group_app_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppGroupAppKeyResult> getAppGroupAppKey(
  GetAppGroupAppKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppGroupAppKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppGroupAppKeyResult.fromMap(result);
}

/// Returns the AppGroup details for the provided AppGroup name in the request URI.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_appgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAppgroupResult> getAppgroup(
  GetAppgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getAppgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAppgroupResult.fromMap(result);
}

/// Gets the specified ArchiveDeployment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_archive_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetArchiveDeploymentResult> getArchiveDeployment(
  GetArchiveDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getArchiveDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetArchiveDeploymentResult.fromMap(result);
}

/// Gets a CanaryEvaluation for an organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_canary_evaluation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCanaryEvaluationResult> getCanaryEvaluation(
  GetCanaryEvaluationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getCanaryEvaluation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCanaryEvaluationResult.fromMap(result);
}

/// Gets a data collector.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_data_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDataCollectorResult> getDataCollector(
  GetDataCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDataCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDataCollectorResult.fromMap(result);
}

/// Get a Datastore
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_datastore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDatastoreResult> getDatastore(
  GetDatastoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDatastore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDatastoreResult.fromMap(result);
}

/// Retrieves a debug session.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_debug_session_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDebugSessionResult> getDebugSession(
  GetDebugSessionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDebugSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDebugSessionResult.fromMap(result);
}

/// Returns the developer details, including the developer's name, email address, apps, and other information. **Note**: The response includes only the first 100 developer apps.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperResult> getDeveloper(
  GetDeveloperArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloper',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperResult.fromMap(result);
}

/// Returns the details for a developer app.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_app_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperAppResult> getDeveloperApp(
  GetDeveloperAppArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperApp',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppResult.fromMap(result);
}

/// Gets details for a consumer key for a developer app, including the key and secret value, associated API products, and other information.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_developer_app_key_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDeveloperAppKeyResult> getDeveloperAppKey(
  GetDeveloperAppKeyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getDeveloperAppKey',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDeveloperAppKeyResult.fromMap(result);
}

/// Gets the endpoint attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_endpoint_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEndpointAttachmentResult> getEndpointAttachment(
  GetEndpointAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEndpointAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEndpointAttachmentResult.fromMap(result);
}

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEntryResult> getEntry(
  GetEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEntryResult.fromMap(result);
}

/// Gets an environment group.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_envgroup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvgroupResult> getEnvgroup(
  GetEnvgroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupResult.fromMap(result);
}

/// Gets an environment group attachment.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_envgroup_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvgroupAttachmentResult> getEnvgroupAttachment(
  GetEnvgroupAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvgroupAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvgroupAttachmentResult.fromMap(result);
}

/// Gets environment details.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentResult> getEnvironment(
  GetEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentResult.fromMap(result);
}

/// Get the key value entry value for a key value map scoped to an organization, environment, or API proxy. **Note**: Supported for Apigee hybrid 1.8.x and higher.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_environment_entry_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEnvironmentEntryResult> getEnvironmentEntry(
  GetEnvironmentEntryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getEnvironmentEntry',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEnvironmentEntryResult.fromMap(result);
}

/// Gets the details and status of an analytics export job. If the export job is still in progress, its `state` is set to "running". After the export job has completed successfully, its `state` is set to "completed". If the export job fails, its `state` is set to `failed`.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_export_args_doc}
/// [options] Invoke options controlling this call.
Future<GetExportResult> getExport(
  GetExportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getExport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetExportResult.fromMap(result);
}

/// Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_host_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostQueryResult> getHostQuery(
  GetHostQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostQueryResult.fromMap(result);
}

/// Get status of a query submitted at host level. If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_host_security_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHostSecurityReportResult> getHostSecurityReport(
  GetHostSecurityReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getHostSecurityReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHostSecurityReportResult.fromMap(result);
}

/// Gets the details for an Apigee runtime instance. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceResult> getInstance(
  GetInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceResult.fromMap(result);
}

/// Gets an attachment. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_instance_attachment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInstanceAttachmentResult> getInstanceAttachment(
  GetInstanceAttachmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getInstanceAttachment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInstanceAttachmentResult.fromMap(result);
}

/// Gets a keystore or truststore.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_keystore_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKeystoreResult> getKeystore(
  GetKeystoreArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getKeystore',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeystoreResult.fromMap(result);
}

/// Gets the details of a NAT address. **Note:** Not supported for Apigee hybrid.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_nat_address_args_doc}
/// [options] Invoke options controlling this call.
Future<GetNatAddressResult> getNatAddress(
  GetNatAddressArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getNatAddress',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetNatAddressResult.fromMap(result);
}

/// Gets the profile for an Apigee organization. See [Understanding organizations](https://cloud.google.com/apigee/docs/api-platform/fundamentals/organization-structure).
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_organization_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationResult> getOrganization(
  GetOrganizationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganization',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationResult.fromMap(result);
}

/// Gets the IAM policy on an environment. For more information, see [Manage users, roles, and permissions using the API](https://cloud.google.com/apigee/docs/api-platform/system-administration/manage-users-roles). You must have the `apigee.environments.getIamPolicy` permission to call this API.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_organization_environment_iam_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOrganizationEnvironmentIamPolicyResult>
    getOrganizationEnvironmentIamPolicy(
  GetOrganizationEnvironmentIamPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOrganizationEnvironmentIamPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOrganizationEnvironmentIamPolicyResult.fromMap(result);
}

/// Gets a trace configuration override.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_override_args_doc}
/// [options] Invoke options controlling this call.
Future<GetOverrideResult> getOverride(
  GetOverrideArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getOverride',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOverrideResult.fromMap(result);
}

/// Get query status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_query_args_doc}
/// [options] Invoke options controlling this call.
Future<GetQueryResult> getQuery(
  GetQueryArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getQuery',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetQueryResult.fromMap(result);
}

/// Gets the details of a rate plan.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_rate_plan_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRatePlanResult> getRatePlan(
  GetRatePlanArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getRatePlan',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRatePlanResult.fromMap(result);
}

/// Gets a Reference resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_reference_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReferenceResult> getReference(
  GetReferenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReference',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReferenceResult.fromMap(result);
}

/// Retrieve a custom report definition.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}

/// Gets the contents of a resource file. For more information about resource files, see [Resource files](https://cloud.google.com/apigee/docs/api-platform/develop/resource-files).
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_resourcefile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetResourcefileResult> getResourcefile(
  GetResourcefileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getResourcefile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetResourcefileResult.fromMap(result);
}

/// Get a SecurityAction by name.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_action_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityActionResult> getSecurityAction(
  GetSecurityActionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityAction',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityActionResult.fromMap(result);
}

/// GetSecurityProfile gets the specified security profile. Returns NOT_FOUND if security profile is not present for the specified organization.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_profile_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityProfileResult> getSecurityProfile(
  GetSecurityProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityProfileResult.fromMap(result);
}

/// Get security report status If the query is still in progress, the `state` is set to "running" After the query has completed successfully, `state` is set to "completed"
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_security_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSecurityReportResult> getSecurityReport(
  GetSecurityReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSecurityReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSecurityReportResult.fromMap(result);
}

/// Gets a shared flow by name, including a list of its revisions.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_sharedflow_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSharedflowResult> getSharedflow(
  GetSharedflowArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSharedflow',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSharedflowResult.fromMap(result);
}

/// Gets details for an API product subscription.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSubscriptionResult> getSubscription(
  GetSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSubscriptionResult.fromMap(result);
}

/// Gets a TargetServer resource.
/// [args] Arguments passed to this invoke. {@macro pulumi_apigee_v1_get_target_server_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTargetServerResult> getTargetServer(
  GetTargetServerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:apigee/v1:getTargetServer',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTargetServerResult.fromMap(result);
}
