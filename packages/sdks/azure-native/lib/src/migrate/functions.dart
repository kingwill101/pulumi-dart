import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_aks_assessment_operation_args.dart';
import 'get_aks_assessment_operation_result.dart';
import 'get_assessment_args.dart';
import 'get_assessment_projects_operation_args.dart';
import 'get_assessment_projects_operation_result.dart';
import 'get_assessment_result.dart';
import 'get_assessments_operation_args.dart';
import 'get_assessments_operation_result.dart';
import 'get_avs_assessments_operation_args.dart';
import 'get_avs_assessments_operation_result.dart';
import 'get_avs_assessments_v2_operation_args.dart';
import 'get_avs_assessments_v2_operation_result.dart';
import 'get_business_case_operation_args.dart';
import 'get_business_case_operation_report_download_url_args.dart';
import 'get_business_case_operation_report_download_url_result.dart';
import 'get_business_case_operation_result.dart';
import 'get_compound_assessment_operation_args.dart';
import 'get_compound_assessment_operation_result.dart';
import 'get_group_args.dart';
import 'get_group_result.dart';
import 'get_groups_operation_args.dart';
import 'get_groups_operation_result.dart';
import 'get_heterogeneous_assessment_operation_args.dart';
import 'get_heterogeneous_assessment_operation_result.dart';
import 'get_hyper_vcollector_args.dart';
import 'get_hyper_vcollector_result.dart';
import 'get_hyperv_collectors_operation_args.dart';
import 'get_hyperv_collectors_operation_result.dart';
import 'get_import_collector_args.dart';
import 'get_import_collector_result.dart';
import 'get_import_collectors_operation_args.dart';
import 'get_import_collectors_operation_result.dart';
import 'get_import_sql_collector_operation_args.dart';
import 'get_import_sql_collector_operation_result.dart';
import 'get_machine_assessments_v2_operation_args.dart';
import 'get_machine_assessments_v2_operation_result.dart';
import 'get_migrate_agent_args.dart';
import 'get_migrate_agent_result.dart';
import 'get_migrate_project_args.dart';
import 'get_migrate_project_result.dart';
import 'get_migrate_projects_controller_migrate_project_args.dart';
import 'get_migrate_projects_controller_migrate_project_result.dart';
import 'get_migration_entity_args.dart';
import 'get_migration_entity_group_args.dart';
import 'get_migration_entity_group_result.dart';
import 'get_migration_entity_result.dart';
import 'get_modernize_project_args.dart';
import 'get_modernize_project_result.dart';
import 'get_move_collection_args.dart';
import 'get_move_collection_result.dart';
import 'get_move_resource_args.dart';
import 'get_move_resource_result.dart';
import 'get_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_controller_private_endpoint_connection_args.dart';
import 'get_private_endpoint_connection_controller_private_endpoint_connection_result.dart';
import 'get_private_endpoint_connection_operation_args.dart';
import 'get_private_endpoint_connection_operation_result.dart';
import 'get_private_endpoint_connection_result.dart';
import 'get_project_args.dart';
import 'get_project_result.dart';
import 'get_server_collector_args.dart';
import 'get_server_collector_result.dart';
import 'get_server_collectors_operation_args.dart';
import 'get_server_collectors_operation_result.dart';
import 'get_solution_args.dart';
import 'get_solution_config_args.dart';
import 'get_solution_config_result.dart';
import 'get_solution_result.dart';
import 'get_sql_assessment_v2_operation_args.dart';
import 'get_sql_assessment_v2_operation_result.dart';
import 'get_sql_assessment_v3_operation_args.dart';
import 'get_sql_assessment_v3_operation_result.dart';
import 'get_sql_collector_operation_args.dart';
import 'get_sql_collector_operation_result.dart';
import 'get_task_args.dart';
import 'get_task_result.dart';
import 'get_vmware_collector_args.dart';
import 'get_vmware_collector_result.dart';
import 'get_vmware_collectors_operation_args.dart';
import 'get_vmware_collectors_operation_result.dart';
import 'get_wave_args.dart';
import 'get_wave_result.dart';
import 'get_web_app_assessment_v2_operation_args.dart';
import 'get_web_app_assessment_v2_operation_result.dart';
import 'get_web_app_assessment_v3_operation_args.dart';
import 'get_web_app_assessment_v3_operation_result.dart';
import 'get_web_app_collector_operation_args.dart';
import 'get_web_app_collector_operation_result.dart';
import 'get_workload_deployment_args.dart';
import 'get_workload_deployment_result.dart';
import 'get_workload_deployment_secret_configurations_args.dart';
import 'get_workload_deployment_secret_configurations_result.dart';
import 'get_workload_instance_args.dart';
import 'get_workload_instance_result.dart';

/// Get a AKSAssessment
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_aks_assessment_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAksAssessmentOperationResult> getAksAssessmentOperation(
  GetAksAssessmentOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAksAssessmentOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAksAssessmentOperationResult.fromMap(result);
}

pulumi.Output<GetAksAssessmentOperationResult> getAksAssessmentOperationOutput(
  GetAksAssessmentOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAksAssessmentOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAksAssessmentOperationResult.fromMap);
}

/// Get an existing assessment with the specified name. Returns a json object of type 'assessment' as specified in Models section.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_assessment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentResult> getAssessment(
  GetAssessmentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAssessment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentResult.fromMap(result);
}

pulumi.Output<GetAssessmentResult> getAssessmentOutput(
  GetAssessmentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAssessment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssessmentResult.fromMap);
}

/// Get a AssessmentProject
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_assessment_projects_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentProjectsOperationResult> getAssessmentProjectsOperation(
  GetAssessmentProjectsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAssessmentProjectsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentProjectsOperationResult.fromMap(result);
}

pulumi.Output<GetAssessmentProjectsOperationResult> getAssessmentProjectsOperationOutput(
  GetAssessmentProjectsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAssessmentProjectsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssessmentProjectsOperationResult.fromMap);
}

/// Get a Assessment
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_assessments_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAssessmentsOperationResult> getAssessmentsOperation(
  GetAssessmentsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAssessmentsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAssessmentsOperationResult.fromMap(result);
}

pulumi.Output<GetAssessmentsOperationResult> getAssessmentsOperationOutput(
  GetAssessmentsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAssessmentsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAssessmentsOperationResult.fromMap);
}

/// Get a AvsAssessment
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_avs_assessments_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvsAssessmentsOperationResult> getAvsAssessmentsOperation(
  GetAvsAssessmentsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAvsAssessmentsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvsAssessmentsOperationResult.fromMap(result);
}

pulumi.Output<GetAvsAssessmentsOperationResult> getAvsAssessmentsOperationOutput(
  GetAvsAssessmentsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAvsAssessmentsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvsAssessmentsOperationResult.fromMap);
}

/// Get a AvsAssessmentV2
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_avs_assessments_v2_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAvsAssessmentsV2OperationResult> getAvsAssessmentsV2Operation(
  GetAvsAssessmentsV2OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getAvsAssessmentsV2Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAvsAssessmentsV2OperationResult.fromMap(result);
}

pulumi.Output<GetAvsAssessmentsV2OperationResult> getAvsAssessmentsV2OperationOutput(
  GetAvsAssessmentsV2OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getAvsAssessmentsV2Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAvsAssessmentsV2OperationResult.fromMap);
}

/// Get a BusinessCase
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_business_case_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBusinessCaseOperationResult> getBusinessCaseOperation(
  GetBusinessCaseOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getBusinessCaseOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBusinessCaseOperationResult.fromMap(result);
}

pulumi.Output<GetBusinessCaseOperationResult> getBusinessCaseOperationOutput(
  GetBusinessCaseOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getBusinessCaseOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBusinessCaseOperationResult.fromMap);
}

/// Get the URL for downloading the business case in a report format.
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_business_case_operation_report_download_url_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBusinessCaseOperationReportDownloadUrlResult> getBusinessCaseOperationReportDownloadUrl(
  GetBusinessCaseOperationReportDownloadUrlArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getBusinessCaseOperationReportDownloadUrl',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBusinessCaseOperationReportDownloadUrlResult.fromMap(result);
}

pulumi.Output<GetBusinessCaseOperationReportDownloadUrlResult> getBusinessCaseOperationReportDownloadUrlOutput(
  GetBusinessCaseOperationReportDownloadUrlArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getBusinessCaseOperationReportDownloadUrl',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBusinessCaseOperationReportDownloadUrlResult.fromMap);
}

/// Get a CompoundAssessment
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_compound_assessment_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCompoundAssessmentOperationResult> getCompoundAssessmentOperation(
  GetCompoundAssessmentOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getCompoundAssessmentOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCompoundAssessmentOperationResult.fromMap(result);
}

pulumi.Output<GetCompoundAssessmentOperationResult> getCompoundAssessmentOperationOutput(
  GetCompoundAssessmentOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getCompoundAssessmentOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetCompoundAssessmentOperationResult.fromMap);
}

/// Get information related to a specific group in the project. Returns a json object of type 'group' as specified in the models section.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupResult> getGroup(
  GetGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupResult.fromMap(result);
}

pulumi.Output<GetGroupResult> getGroupOutput(
  GetGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupResult.fromMap);
}

/// Get a Group
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_groups_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetGroupsOperationResult> getGroupsOperation(
  GetGroupsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getGroupsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupsOperationResult.fromMap(result);
}

pulumi.Output<GetGroupsOperationResult> getGroupsOperationOutput(
  GetGroupsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getGroupsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetGroupsOperationResult.fromMap);
}

/// Get a HeterogeneousAssessment
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_heterogeneous_assessment_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHeterogeneousAssessmentOperationResult> getHeterogeneousAssessmentOperation(
  GetHeterogeneousAssessmentOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getHeterogeneousAssessmentOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHeterogeneousAssessmentOperationResult.fromMap(result);
}

pulumi.Output<GetHeterogeneousAssessmentOperationResult> getHeterogeneousAssessmentOperationOutput(
  GetHeterogeneousAssessmentOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getHeterogeneousAssessmentOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHeterogeneousAssessmentOperationResult.fromMap);
}

/// Get a Hyper-V collector.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_hyper_vcollector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHyperVCollectorResult> getHyperVCollector(
  GetHyperVCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getHyperVCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHyperVCollectorResult.fromMap(result);
}

pulumi.Output<GetHyperVCollectorResult> getHyperVCollectorOutput(
  GetHyperVCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getHyperVCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHyperVCollectorResult.fromMap);
}

/// Get a HypervCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_hyperv_collectors_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetHypervCollectorsOperationResult> getHypervCollectorsOperation(
  GetHypervCollectorsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getHypervCollectorsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetHypervCollectorsOperationResult.fromMap(result);
}

pulumi.Output<GetHypervCollectorsOperationResult> getHypervCollectorsOperationOutput(
  GetHypervCollectorsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getHypervCollectorsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetHypervCollectorsOperationResult.fromMap);
}

/// Get a Import collector.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_import_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportCollectorResult> getImportCollector(
  GetImportCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getImportCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportCollectorResult.fromMap(result);
}

pulumi.Output<GetImportCollectorResult> getImportCollectorOutput(
  GetImportCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getImportCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportCollectorResult.fromMap);
}

/// Get a ImportCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_import_collectors_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportCollectorsOperationResult> getImportCollectorsOperation(
  GetImportCollectorsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getImportCollectorsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportCollectorsOperationResult.fromMap(result);
}

pulumi.Output<GetImportCollectorsOperationResult> getImportCollectorsOperationOutput(
  GetImportCollectorsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getImportCollectorsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportCollectorsOperationResult.fromMap);
}

/// Get a ImportSqlCollector
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_import_sql_collector_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetImportSqlCollectorOperationResult> getImportSqlCollectorOperation(
  GetImportSqlCollectorOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getImportSqlCollectorOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetImportSqlCollectorOperationResult.fromMap(result);
}

pulumi.Output<GetImportSqlCollectorOperationResult> getImportSqlCollectorOperationOutput(
  GetImportSqlCollectorOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getImportSqlCollectorOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetImportSqlCollectorOperationResult.fromMap);
}

/// Get a MachineAssessmentV2
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_machine_assessments_v2_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMachineAssessmentsV2OperationResult> getMachineAssessmentsV2Operation(
  GetMachineAssessmentsV2OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMachineAssessmentsV2Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMachineAssessmentsV2OperationResult.fromMap(result);
}

pulumi.Output<GetMachineAssessmentsV2OperationResult> getMachineAssessmentsV2OperationOutput(
  GetMachineAssessmentsV2OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMachineAssessmentsV2Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMachineAssessmentsV2OperationResult.fromMap);
}

/// Gets the details of the modernizeProject agent.
///
/// Uses Azure REST API version 2022-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_migrate_agent_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrateAgentResult> getMigrateAgent(
  GetMigrateAgentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateAgent',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrateAgentResult.fromMap(result);
}

pulumi.Output<GetMigrateAgentResult> getMigrateAgentOutput(
  GetMigrateAgentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateAgent',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrateAgentResult.fromMap);
}

/// Migrate Project REST Resource.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_migrate_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrateProjectResult> getMigrateProject(
  GetMigrateProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrateProjectResult.fromMap(result);
}

pulumi.Output<GetMigrateProjectResult> getMigrateProjectOutput(
  GetMigrateProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrateProjectResult.fromMap);
}

/// Get information related to a specific migrate project. Returns a json object of type 'migrateProject' as specified in the models section.
///
/// Uses Azure REST API version 2020-05-01.
///
/// Other available API versions: 2023-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_migrate_projects_controller_migrate_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrateProjectsControllerMigrateProjectResult> getMigrateProjectsControllerMigrateProject(
  GetMigrateProjectsControllerMigrateProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateProjectsControllerMigrateProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrateProjectsControllerMigrateProjectResult.fromMap(result);
}

pulumi.Output<GetMigrateProjectsControllerMigrateProjectResult> getMigrateProjectsControllerMigrateProjectOutput(
  GetMigrateProjectsControllerMigrateProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMigrateProjectsControllerMigrateProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrateProjectsControllerMigrateProjectResult.fromMap);
}

/// Get a MigrationEntity
///
/// Uses Azure REST API version 2025-03-30-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_migration_entity_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationEntityResult> getMigrationEntity(
  GetMigrationEntityArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMigrationEntity',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationEntityResult.fromMap(result);
}

pulumi.Output<GetMigrationEntityResult> getMigrationEntityOutput(
  GetMigrationEntityArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMigrationEntity',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationEntityResult.fromMap);
}

/// Get a MigrationEntityGroup
///
/// Uses Azure REST API version 2025-03-30-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_migration_entity_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMigrationEntityGroupResult> getMigrationEntityGroup(
  GetMigrationEntityGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMigrationEntityGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMigrationEntityGroupResult.fromMap(result);
}

pulumi.Output<GetMigrationEntityGroupResult> getMigrationEntityGroupOutput(
  GetMigrationEntityGroupArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMigrationEntityGroup',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMigrationEntityGroupResult.fromMap);
}

/// Gets the details of the modernize project.
///
/// Uses Azure REST API version 2022-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_modernize_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetModernizeProjectResult> getModernizeProject(
  GetModernizeProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getModernizeProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetModernizeProjectResult.fromMap(result);
}

pulumi.Output<GetModernizeProjectResult> getModernizeProjectOutput(
  GetModernizeProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getModernizeProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetModernizeProjectResult.fromMap);
}

/// Gets the move collection.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2019-10-01-preview, 2021-01-01, 2021-08-01, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_move_collection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMoveCollectionResult> getMoveCollection(
  GetMoveCollectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMoveCollection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMoveCollectionResult.fromMap(result);
}

pulumi.Output<GetMoveCollectionResult> getMoveCollectionOutput(
  GetMoveCollectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMoveCollection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMoveCollectionResult.fromMap);
}

/// Gets the Move Resource.
///
/// Uses Azure REST API version 2023-08-01.
///
/// Other available API versions: 2019-10-01-preview, 2021-01-01, 2021-08-01, 2022-08-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_move_resource_args_doc}
/// [options] Invoke options controlling this call.
Future<GetMoveResourceResult> getMoveResource(
  GetMoveResourceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getMoveResource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetMoveResourceResult.fromMap(result);
}

pulumi.Output<GetMoveResourceResult> getMoveResourceOutput(
  GetMoveResourceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getMoveResource',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetMoveResourceResult.fromMap);
}

/// Get information related to a specific private endpoint connection in the project. Returns a json object of type 'privateEndpointConnections' as specified in the models section.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionResult> getPrivateEndpointConnection(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionResult> getPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionResult.fromMap);
}

/// Get the private endpoint with the specified name.
///
/// Uses Azure REST API version 2020-05-01.
///
/// Other available API versions: 2023-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_private_endpoint_connection_controller_private_endpoint_connection_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult> getPrivateEndpointConnectionControllerPrivateEndpointConnection(
  GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnectionControllerPrivateEndpointConnection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult> getPrivateEndpointConnectionControllerPrivateEndpointConnectionOutput(
  GetPrivateEndpointConnectionControllerPrivateEndpointConnectionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnectionControllerPrivateEndpointConnection',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionControllerPrivateEndpointConnectionResult.fromMap);
}

/// Get a PrivateEndpointConnection
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_private_endpoint_connection_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetPrivateEndpointConnectionOperationResult> getPrivateEndpointConnectionOperation(
  GetPrivateEndpointConnectionOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnectionOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetPrivateEndpointConnectionOperationResult.fromMap(result);
}

pulumi.Output<GetPrivateEndpointConnectionOperationResult> getPrivateEndpointConnectionOperationOutput(
  GetPrivateEndpointConnectionOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getPrivateEndpointConnectionOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetPrivateEndpointConnectionOperationResult.fromMap);
}

/// Get the project with the specified name.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_project_args_doc}
/// [options] Invoke options controlling this call.
Future<GetProjectResult> getProject(
  GetProjectArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getProject',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProjectResult.fromMap(result);
}

pulumi.Output<GetProjectResult> getProjectOutput(
  GetProjectArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getProject',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetProjectResult.fromMap);
}

/// Get a Server collector.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_server_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCollectorResult> getServerCollector(
  GetServerCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getServerCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCollectorResult.fromMap(result);
}

pulumi.Output<GetServerCollectorResult> getServerCollectorOutput(
  GetServerCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getServerCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerCollectorResult.fromMap);
}

/// Get a ServerCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_server_collectors_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetServerCollectorsOperationResult> getServerCollectorsOperation(
  GetServerCollectorsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getServerCollectorsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetServerCollectorsOperationResult.fromMap(result);
}

pulumi.Output<GetServerCollectorsOperationResult> getServerCollectorsOperationOutput(
  GetServerCollectorsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getServerCollectorsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetServerCollectorsOperationResult.fromMap);
}

/// Solution REST Resource.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_solution_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionResult> getSolution(
  GetSolutionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getSolution',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionResult.fromMap(result);
}

pulumi.Output<GetSolutionResult> getSolutionOutput(
  GetSolutionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getSolution',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSolutionResult.fromMap);
}

/// Class representing the config for the solution in the migrate project.
///
/// Uses Azure REST API version 2018-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_solution_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSolutionConfigResult> getSolutionConfig(
  GetSolutionConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getSolutionConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSolutionConfigResult.fromMap(result);
}

pulumi.Output<GetSolutionConfigResult> getSolutionConfigOutput(
  GetSolutionConfigArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getSolutionConfig',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSolutionConfigResult.fromMap);
}

/// Get a SqlAssessmentV2
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_sql_assessment_v2_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlAssessmentV2OperationResult> getSqlAssessmentV2Operation(
  GetSqlAssessmentV2OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getSqlAssessmentV2Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlAssessmentV2OperationResult.fromMap(result);
}

pulumi.Output<GetSqlAssessmentV2OperationResult> getSqlAssessmentV2OperationOutput(
  GetSqlAssessmentV2OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getSqlAssessmentV2Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlAssessmentV2OperationResult.fromMap);
}

/// Get a SqlAssessmentV3
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_sql_assessment_v3_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlAssessmentV3OperationResult> getSqlAssessmentV3Operation(
  GetSqlAssessmentV3OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getSqlAssessmentV3Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlAssessmentV3OperationResult.fromMap(result);
}

pulumi.Output<GetSqlAssessmentV3OperationResult> getSqlAssessmentV3OperationOutput(
  GetSqlAssessmentV3OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getSqlAssessmentV3Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlAssessmentV3OperationResult.fromMap);
}

/// Get a SqlCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_sql_collector_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlCollectorOperationResult> getSqlCollectorOperation(
  GetSqlCollectorOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getSqlCollectorOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlCollectorOperationResult.fromMap(result);
}

pulumi.Output<GetSqlCollectorOperationResult> getSqlCollectorOperationOutput(
  GetSqlCollectorOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getSqlCollectorOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlCollectorOperationResult.fromMap);
}

/// Get a Task
///
/// Uses Azure REST API version 2025-03-30-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_task_args_doc}
/// [options] Invoke options controlling this call.
Future<GetTaskResult> getTask(
  GetTaskArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getTask',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetTaskResult.fromMap(result);
}

pulumi.Output<GetTaskResult> getTaskOutput(
  GetTaskArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getTask',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetTaskResult.fromMap);
}

/// Get a VMware collector.
///
/// Uses Azure REST API version 2019-10-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_vmware_collector_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVMwareCollectorResult> getVMwareCollector(
  GetVMwareCollectorArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getVMwareCollector',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVMwareCollectorResult.fromMap(result);
}

pulumi.Output<GetVMwareCollectorResult> getVMwareCollectorOutput(
  GetVMwareCollectorArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getVMwareCollector',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVMwareCollectorResult.fromMap);
}

/// Get a VmwareCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-03-15, 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_vmware_collectors_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVmwareCollectorsOperationResult> getVmwareCollectorsOperation(
  GetVmwareCollectorsOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getVmwareCollectorsOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVmwareCollectorsOperationResult.fromMap(result);
}

pulumi.Output<GetVmwareCollectorsOperationResult> getVmwareCollectorsOperationOutput(
  GetVmwareCollectorsOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getVmwareCollectorsOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetVmwareCollectorsOperationResult.fromMap);
}

/// Get a Wave
///
/// Uses Azure REST API version 2025-03-30-preview.
///
/// Other available API versions: 2025-12-01-preview, 2026-02-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_wave_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWaveResult> getWave(
  GetWaveArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWave',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWaveResult.fromMap(result);
}

pulumi.Output<GetWaveResult> getWaveOutput(
  GetWaveArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWave',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWaveResult.fromMap);
}

/// Get a WebAppAssessmentV2
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_web_app_assessment_v2_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppAssessmentV2OperationResult> getWebAppAssessmentV2Operation(
  GetWebAppAssessmentV2OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppAssessmentV2Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppAssessmentV2OperationResult.fromMap(result);
}

pulumi.Output<GetWebAppAssessmentV2OperationResult> getWebAppAssessmentV2OperationOutput(
  GetWebAppAssessmentV2OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppAssessmentV2Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppAssessmentV2OperationResult.fromMap);
}

/// Get a WebAppAssessmentV3
///
/// Uses Azure REST API version 2024-03-03-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_web_app_assessment_v3_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppAssessmentV3OperationResult> getWebAppAssessmentV3Operation(
  GetWebAppAssessmentV3OperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppAssessmentV3Operation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppAssessmentV3OperationResult.fromMap(result);
}

pulumi.Output<GetWebAppAssessmentV3OperationResult> getWebAppAssessmentV3OperationOutput(
  GetWebAppAssessmentV3OperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppAssessmentV3Operation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppAssessmentV3OperationResult.fromMap);
}

/// Get a WebAppCollector
///
/// Uses Azure REST API version 2024-01-01-preview.
///
/// Other available API versions: 2023-04-01-preview, 2023-05-01-preview, 2023-09-09-preview, 2024-01-15, 2024-03-03-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native migrate [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_web_app_collector_operation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWebAppCollectorOperationResult> getWebAppCollectorOperation(
  GetWebAppCollectorOperationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppCollectorOperation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWebAppCollectorOperationResult.fromMap(result);
}

pulumi.Output<GetWebAppCollectorOperationResult> getWebAppCollectorOperationOutput(
  GetWebAppCollectorOperationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWebAppCollectorOperation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWebAppCollectorOperationResult.fromMap);
}

/// Gets the details of the workload deployment.
///
/// Uses Azure REST API version 2022-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_workload_deployment_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadDeploymentResult> getWorkloadDeployment(
  GetWorkloadDeploymentArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadDeployment',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadDeploymentResult.fromMap(result);
}

pulumi.Output<GetWorkloadDeploymentResult> getWorkloadDeploymentOutput(
  GetWorkloadDeploymentArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadDeployment',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadDeploymentResult.fromMap);
}

/// Gets the secrets of the workload deployment.
///
/// Uses Azure REST API version 2022-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_workload_deployment_secret_configurations_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadDeploymentSecretConfigurationsResult> getWorkloadDeploymentSecretConfigurations(
  GetWorkloadDeploymentSecretConfigurationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadDeploymentSecretConfigurations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadDeploymentSecretConfigurationsResult.fromMap(result);
}

pulumi.Output<GetWorkloadDeploymentSecretConfigurationsResult> getWorkloadDeploymentSecretConfigurationsOutput(
  GetWorkloadDeploymentSecretConfigurationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadDeploymentSecretConfigurations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadDeploymentSecretConfigurationsResult.fromMap);
}

/// Gets the details of the workload instance.
///
/// Uses Azure REST API version 2022-05-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_migrate_get_workload_instance_args_doc}
/// [options] Invoke options controlling this call.
Future<GetWorkloadInstanceResult> getWorkloadInstance(
  GetWorkloadInstanceArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadInstance',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetWorkloadInstanceResult.fromMap(result);
}

pulumi.Output<GetWorkloadInstanceResult> getWorkloadInstanceOutput(
  GetWorkloadInstanceArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:migrate:getWorkloadInstance',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetWorkloadInstanceResult.fromMap);
}
