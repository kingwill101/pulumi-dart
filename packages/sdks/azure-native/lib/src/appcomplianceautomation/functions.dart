import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_evidence_args.dart';
import 'get_evidence_result.dart';
import 'get_provider_action_collection_count_args.dart';
import 'get_provider_action_collection_count_result.dart';
import 'get_provider_action_overview_status_args.dart';
import 'get_provider_action_overview_status_result.dart';
import 'get_report_args.dart';
import 'get_report_result.dart';
import 'get_report_scoping_questions_args.dart';
import 'get_report_scoping_questions_result.dart';
import 'get_scoping_configuration_args.dart';
import 'get_scoping_configuration_result.dart';
import 'get_webhook_args.dart';
import 'get_webhook_result.dart';
import 'list_provider_action_in_use_storage_accounts_args.dart';
import 'list_provider_action_in_use_storage_accounts_result.dart';

/// Get the evidence metadata
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_evidence_args_doc}
/// [options] Invoke options controlling this call.
Future<GetEvidenceResult> getEvidence(
  GetEvidenceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getEvidence',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetEvidenceResult.fromMap(result);
}

/// Get the count of reports.
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_provider_action_collection_count_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderActionCollectionCountResult> getProviderActionCollectionCount(
  GetProviderActionCollectionCountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getProviderActionCollectionCount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderActionCollectionCountResult.fromMap(result);
}

/// Get the resource overview status.
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_provider_action_overview_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProviderActionOverviewStatusResult> getProviderActionOverviewStatus(
  GetProviderActionOverviewStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getProviderActionOverviewStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProviderActionOverviewStatusResult.fromMap(result);
}

/// Get the AppComplianceAutomation report and its properties.
///
/// Uses Azure REST API version 2024-06-27.
///
/// Other available API versions: 2022-11-16-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appcomplianceautomation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_report_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportResult> getReport(
  GetReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportResult.fromMap(result);
}

/// Fix the AppComplianceAutomation report error. e.g: App Compliance Automation Tool service unregistered, automation removed.
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_report_scoping_questions_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReportScopingQuestionsResult> getReportScopingQuestions(
  GetReportScopingQuestionsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getReportScopingQuestions',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReportScopingQuestionsResult.fromMap(result);
}

/// Get the AppComplianceAutomation scoping configuration of the specific report.
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_scoping_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScopingConfigurationResult> getScopingConfiguration(
  GetScopingConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getScopingConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScopingConfigurationResult.fromMap(result);
}

/// Get the AppComplianceAutomation webhook and its properties.
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_get_webhook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}

/// List the storage accounts which are in use by related reports
///
/// Uses Azure REST API version 2024-06-27.
/// [args] Arguments passed to this invoke. {@macro pulumi_appcomplianceautomation_list_provider_action_in_use_storage_accounts_args_doc}
/// [options] Invoke options controlling this call.
Future<ListProviderActionInUseStorageAccountsResult>
listProviderActionInUseStorageAccounts(
  ListProviderActionInUseStorageAccountsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:appcomplianceautomation:listProviderActionInUseStorageAccounts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListProviderActionInUseStorageAccountsResult.fromMap(result);
}
