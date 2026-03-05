import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_automation_account_args.dart';
import 'get_automation_account_result.dart';
import 'get_certificate_args.dart';
import 'get_certificate_result.dart';
import 'get_connection_args.dart';
import 'get_connection_result.dart';
import 'get_connection_type_args.dart';
import 'get_connection_type_result.dart';
import 'get_credential_args.dart';
import 'get_credential_result.dart';
import 'get_dsc_configuration_args.dart';
import 'get_dsc_configuration_result.dart';
import 'get_dsc_node_configuration_args.dart';
import 'get_dsc_node_configuration_result.dart';
import 'get_hybrid_runbook_worker_args.dart';
import 'get_hybrid_runbook_worker_group_args.dart';
import 'get_hybrid_runbook_worker_group_result.dart';
import 'get_hybrid_runbook_worker_result.dart';
import 'get_job_schedule_args.dart';
import 'get_job_schedule_result.dart';
import 'get_module_args.dart';
import 'get_module_result.dart';
import 'get_package_args.dart';
import 'get_package_result.dart';
import 'get_power_shell72_module_args.dart';
import 'get_power_shell72_module_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_python2_package_args.dart';
import 'get_python2_package_result.dart';
import 'get_python3_package_args.dart';
import 'get_python3_package_result.dart';
import 'get_runbook_args.dart';
import 'get_runbook_result.dart';
import 'get_runtime_environment_args.dart';
import 'get_runtime_environment_result.dart';
import 'get_schedule_args.dart';
import 'get_schedule_result.dart';
import 'get_software_update_configuration_by_name_args.dart';
import 'get_software_update_configuration_by_name_result.dart';
import 'get_source_control_args.dart';
import 'get_source_control_result.dart';
import 'get_variable_args.dart';
import 'get_variable_result.dart';
import 'get_watcher_args.dart';
import 'get_watcher_result.dart';
import 'get_webhook_args.dart';
import 'get_webhook_result.dart';
import 'list_automation_account_deleted_runbooks_args.dart';
import 'list_automation_account_deleted_runbooks_result.dart';
import 'list_key_by_automation_account_args.dart';
import 'list_key_by_automation_account_result.dart';

/// Get information about an Automation Account.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2021-06-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_automation_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAutomationAccountResult> getAutomationAccount(
  GetAutomationAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getAutomationAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAutomationAccountResult.fromMap(result);
}

/// Retrieve the certificate identified by certificate name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_certificate_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCertificateResult> getCertificate(
  GetCertificateArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getCertificate',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCertificateResult.fromMap(result);
}

/// Retrieve the connection identified by connection name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionResult> getConnection(
  GetConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionResult.fromMap(result);
}

/// Retrieve the connection type identified by connection type name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_connection_type_args_doc}
/// [options] Invoke options controlling this call.
Future<GetConnectionTypeResult> getConnectionType(
  GetConnectionTypeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getConnectionType',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetConnectionTypeResult.fromMap(result);
}

/// Retrieve the credential identified by credential name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_credential_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCredentialResult> getCredential(
  GetCredentialArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getCredential',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCredentialResult.fromMap(result);
}

/// Retrieve the configuration identified by configuration name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_dsc_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDscConfigurationResult> getDscConfiguration(
  GetDscConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getDscConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDscConfigurationResult.fromMap(result);
}

/// Retrieve the Dsc node configurations by node configuration.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2018-01-15, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_dsc_node_configuration_args_doc}
/// [options] Invoke options controlling this call.
Future<GetDscNodeConfigurationResult> getDscNodeConfiguration(
  GetDscNodeConfigurationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getDscNodeConfiguration',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetDscNodeConfigurationResult.fromMap(result);
}

/// Retrieve a hybrid runbook worker.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2021-06-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_hybrid_runbook_worker_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridRunbookWorkerResult> getHybridRunbookWorker(
  GetHybridRunbookWorkerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getHybridRunbookWorker',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridRunbookWorkerResult.fromMap(result);
}

/// Retrieve a hybrid runbook worker group.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2021-06-22, 2022-02-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_hybrid_runbook_worker_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHybridRunbookWorkerGroupResult> getHybridRunbookWorkerGroup(
  GetHybridRunbookWorkerGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getHybridRunbookWorkerGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHybridRunbookWorkerGroupResult.fromMap(result);
}

/// Retrieve the job schedule identified by job schedule name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_job_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetJobScheduleResult> getJobSchedule(
  GetJobScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getJobSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetJobScheduleResult.fromMap(result);
}

/// Retrieve the module identified by module name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModuleResult> getModule(
  GetModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getModule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModuleResult.fromMap(result);
}

/// Retrieve the Package identified by Package name.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPackageResult> getPackage(
  GetPackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getPackage',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPackageResult.fromMap(result);
}

/// Retrieve the module identified by module name.
///
/// Uses Azure REST API version 2023-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_power_shell72_module_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPowerShell72ModuleResult> getPowerShell72Module(
  GetPowerShell72ModuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getPowerShell72Module',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPowerShell72ModuleResult.fromMap(result);
}

/// Gets a private endpoint connection.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2020-01-13-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

/// Retrieve the python 2 package identified by package name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2018-06-30, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_python2_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPython2PackageResult> getPython2Package(
  GetPython2PackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getPython2Package',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPython2PackageResult.fromMap(result);
}

/// Retrieve the python 3 package identified by package name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_python3_package_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPython3PackageResult> getPython3Package(
  GetPython3PackageArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getPython3Package',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPython3PackageResult.fromMap(result);
}

/// Retrieve the runbook identified by runbook name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2018-06-30, 2019-06-01, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_runbook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRunbookResult> getRunbook(
  GetRunbookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getRunbook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRunbookResult.fromMap(result);
}

/// Get information about the Runtime Environment
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_runtime_environment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetRuntimeEnvironmentResult> getRuntimeEnvironment(
  GetRuntimeEnvironmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getRuntimeEnvironment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRuntimeEnvironmentResult.fromMap(result);
}

/// Retrieve the schedule identified by schedule name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_schedule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduleResult> getSchedule(
  GetScheduleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getSchedule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduleResult.fromMap(result);
}

/// Get a single software update configuration by name.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2017-05-15-preview, 2019-06-01, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_software_update_configuration_by_name_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSoftwareUpdateConfigurationByNameResult> getSoftwareUpdateConfigurationByName(
  GetSoftwareUpdateConfigurationByNameArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getSoftwareUpdateConfigurationByName',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSoftwareUpdateConfigurationByNameResult.fromMap(result);
}

/// Retrieve the source control identified by source control name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2017-05-15-preview, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_source_control_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSourceControlResult> getSourceControl(
  GetSourceControlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getSourceControl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceControlResult.fromMap(result);
}

/// Retrieve the variable identified by variable name.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_variable_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVariableResult> getVariable(
  GetVariableArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getVariable',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVariableResult.fromMap(result);
}

/// Retrieve the watcher identified by watcher name.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_watcher_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWatcherResult> getWatcher(
  GetWatcherArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getWatcher',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWatcherResult.fromMap(result);
}

/// Retrieve the webhook identified by webhook name.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2015-10-31, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_get_webhook_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebhookResult> getWebhook(
  GetWebhookArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:getWebhook',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebhookResult.fromMap(result);
}

/// Retrieve the deleted runbooks for an automation account.
///
/// Uses Azure REST API version 2023-05-15-preview.
///
/// Other available API versions: 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_list_automation_account_deleted_runbooks_args_doc}
/// [options] Invoke options controlling this call.
Future<ListAutomationAccountDeletedRunbooksResult> listAutomationAccountDeletedRunbooks(
  ListAutomationAccountDeletedRunbooksArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:listAutomationAccountDeletedRunbooks',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListAutomationAccountDeletedRunbooksResult.fromMap(result);
}

/// Retrieve the automation keys for an account.
///
/// Uses Azure REST API version 2023-11-01.
///
/// Other available API versions: 2015-10-31, 2019-06-01, 2020-01-13-preview, 2021-06-22, 2022-08-08, 2023-05-15-preview, 2024-10-23. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native automation [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_automation_list_key_by_automation_account_args_doc}
/// [options] Invoke options controlling this call.
Future<ListKeyByAutomationAccountResult> listKeyByAutomationAccount(
  ListKeyByAutomationAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:automation:listKeyByAutomationAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListKeyByAutomationAccountResult.fromMap(result);
}
