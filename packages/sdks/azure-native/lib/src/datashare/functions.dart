import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_result.dart';
import 'get_adlsgen1_file_data_set_args.dart';
import 'get_adlsgen1_file_data_set_result.dart';
import 'get_adlsgen1_folder_data_set_args.dart';
import 'get_adlsgen1_folder_data_set_result.dart';
import 'get_adlsgen2_file_data_set_args.dart';
import 'get_adlsgen2_file_data_set_mapping_args.dart';
import 'get_adlsgen2_file_data_set_mapping_result.dart';
import 'get_adlsgen2_file_data_set_result.dart';
import 'get_adlsgen2_file_system_data_set_args.dart';
import 'get_adlsgen2_file_system_data_set_mapping_args.dart';
import 'get_adlsgen2_file_system_data_set_mapping_result.dart';
import 'get_adlsgen2_file_system_data_set_result.dart';
import 'get_adlsgen2_folder_data_set_args.dart';
import 'get_adlsgen2_folder_data_set_mapping_args.dart';
import 'get_adlsgen2_folder_data_set_mapping_result.dart';
import 'get_adlsgen2_folder_data_set_result.dart';
import 'get_blob_container_data_set_args.dart';
import 'get_blob_container_data_set_mapping_args.dart';
import 'get_blob_container_data_set_mapping_result.dart';
import 'get_blob_container_data_set_result.dart';
import 'get_blob_data_set_args.dart';
import 'get_blob_data_set_mapping_args.dart';
import 'get_blob_data_set_mapping_result.dart';
import 'get_blob_data_set_result.dart';
import 'get_blob_folder_data_set_args.dart';
import 'get_blob_folder_data_set_mapping_args.dart';
import 'get_blob_folder_data_set_mapping_result.dart';
import 'get_blob_folder_data_set_result.dart';
import 'get_invitation_args.dart';
import 'get_invitation_result.dart';
import 'get_kusto_cluster_data_set_args.dart';
import 'get_kusto_cluster_data_set_mapping_args.dart';
import 'get_kusto_cluster_data_set_mapping_result.dart';
import 'get_kusto_cluster_data_set_result.dart';
import 'get_kusto_database_data_set_args.dart';
import 'get_kusto_database_data_set_mapping_args.dart';
import 'get_kusto_database_data_set_mapping_result.dart';
import 'get_kusto_database_data_set_result.dart';
import 'get_kusto_table_data_set_args.dart';
import 'get_kusto_table_data_set_mapping_args.dart';
import 'get_kusto_table_data_set_mapping_result.dart';
import 'get_kusto_table_data_set_result.dart';
import 'get_scheduled_synchronization_setting_args.dart';
import 'get_scheduled_synchronization_setting_result.dart';
import 'get_scheduled_trigger_args.dart';
import 'get_scheduled_trigger_result.dart';
import 'get_share_args.dart';
import 'get_share_result.dart';
import 'get_share_subscription_args.dart';
import 'get_share_subscription_result.dart';
import 'get_sql_dbtable_data_set_args.dart';
import 'get_sql_dbtable_data_set_mapping_args.dart';
import 'get_sql_dbtable_data_set_mapping_result.dart';
import 'get_sql_dbtable_data_set_result.dart';
import 'get_sql_dwtable_data_set_args.dart';
import 'get_sql_dwtable_data_set_mapping_args.dart';
import 'get_sql_dwtable_data_set_mapping_result.dart';
import 'get_sql_dwtable_data_set_result.dart';
import 'get_synapse_workspace_sql_pool_table_data_set_args.dart';
import 'get_synapse_workspace_sql_pool_table_data_set_mapping_args.dart';
import 'get_synapse_workspace_sql_pool_table_data_set_mapping_result.dart';
import 'get_synapse_workspace_sql_pool_table_data_set_result.dart';
import 'list_share_subscription_source_share_synchronization_settings_args.dart';
import 'list_share_subscription_source_share_synchronization_settings_result.dart';
import 'list_share_subscription_synchronization_details_args.dart';
import 'list_share_subscription_synchronization_details_result.dart';
import 'list_share_subscription_synchronizations_args.dart';
import 'list_share_subscription_synchronizations_result.dart';
import 'list_share_synchronization_details_args.dart';
import 'list_share_synchronization_details_result.dart';
import 'list_share_synchronizations_args.dart';
import 'list_share_synchronizations_result.dart';

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen1_file_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen1FileDataSetResult> getADLSGen1FileDataSet(
  GetADLSGen1FileDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen1FileDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen1FileDataSetResult.fromMap(result);
}

pulumi.Output<GetADLSGen1FileDataSetResult> getADLSGen1FileDataSetOutput(
  GetADLSGen1FileDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen1FileDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen1FileDataSetResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen1_folder_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen1FolderDataSetResult> getADLSGen1FolderDataSet(
  GetADLSGen1FolderDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen1FolderDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen1FolderDataSetResult.fromMap(result);
}

pulumi.Output<GetADLSGen1FolderDataSetResult> getADLSGen1FolderDataSetOutput(
  GetADLSGen1FolderDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen1FolderDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen1FolderDataSetResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_file_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FileDataSetResult> getADLSGen2FileDataSet(
  GetADLSGen2FileDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FileDataSetResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FileDataSetResult> getADLSGen2FileDataSetOutput(
  GetADLSGen2FileDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FileDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_file_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FileDataSetMappingResult> getADLSGen2FileDataSetMapping(
  GetADLSGen2FileDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FileDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FileDataSetMappingResult> getADLSGen2FileDataSetMappingOutput(
  GetADLSGen2FileDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FileDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_file_system_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FileSystemDataSetResult> getADLSGen2FileSystemDataSet(
  GetADLSGen2FileSystemDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileSystemDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FileSystemDataSetResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FileSystemDataSetResult> getADLSGen2FileSystemDataSetOutput(
  GetADLSGen2FileSystemDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileSystemDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FileSystemDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_file_system_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FileSystemDataSetMappingResult> getADLSGen2FileSystemDataSetMapping(
  GetADLSGen2FileSystemDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileSystemDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FileSystemDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FileSystemDataSetMappingResult> getADLSGen2FileSystemDataSetMappingOutput(
  GetADLSGen2FileSystemDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FileSystemDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FileSystemDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_folder_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FolderDataSetResult> getADLSGen2FolderDataSet(
  GetADLSGen2FolderDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FolderDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FolderDataSetResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FolderDataSetResult> getADLSGen2FolderDataSetOutput(
  GetADLSGen2FolderDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FolderDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FolderDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_adlsgen2_folder_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetADLSGen2FolderDataSetMappingResult> getADLSGen2FolderDataSetMapping(
  GetADLSGen2FolderDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FolderDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetADLSGen2FolderDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetADLSGen2FolderDataSetMappingResult> getADLSGen2FolderDataSetMappingOutput(
  GetADLSGen2FolderDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getADLSGen2FolderDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetADLSGen2FolderDataSetMappingResult.fromMap);
}

/// Get an account
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

pulumi.Output<GetAccountResult> getAccountOutput(
  GetAccountArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getAccount',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetAccountResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_container_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobContainerDataSetResult> getBlobContainerDataSet(
  GetBlobContainerDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobContainerDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobContainerDataSetResult.fromMap(result);
}

pulumi.Output<GetBlobContainerDataSetResult> getBlobContainerDataSetOutput(
  GetBlobContainerDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobContainerDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobContainerDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_container_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobContainerDataSetMappingResult> getBlobContainerDataSetMapping(
  GetBlobContainerDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobContainerDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobContainerDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetBlobContainerDataSetMappingResult> getBlobContainerDataSetMappingOutput(
  GetBlobContainerDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobContainerDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobContainerDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobDataSetResult> getBlobDataSet(
  GetBlobDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobDataSetResult.fromMap(result);
}

pulumi.Output<GetBlobDataSetResult> getBlobDataSetOutput(
  GetBlobDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobDataSetMappingResult> getBlobDataSetMapping(
  GetBlobDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetBlobDataSetMappingResult> getBlobDataSetMappingOutput(
  GetBlobDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_folder_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobFolderDataSetResult> getBlobFolderDataSet(
  GetBlobFolderDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobFolderDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobFolderDataSetResult.fromMap(result);
}

pulumi.Output<GetBlobFolderDataSetResult> getBlobFolderDataSetOutput(
  GetBlobFolderDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobFolderDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobFolderDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_blob_folder_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBlobFolderDataSetMappingResult> getBlobFolderDataSetMapping(
  GetBlobFolderDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getBlobFolderDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBlobFolderDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetBlobFolderDataSetMappingResult> getBlobFolderDataSetMappingOutput(
  GetBlobFolderDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getBlobFolderDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetBlobFolderDataSetMappingResult.fromMap);
}

/// Get an invitation in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_invitation_args_doc}
/// [options] Invoke options controlling this call.
Future<GetInvitationResult> getInvitation(
  GetInvitationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getInvitation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetInvitationResult.fromMap(result);
}

pulumi.Output<GetInvitationResult> getInvitationOutput(
  GetInvitationArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getInvitation',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetInvitationResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_cluster_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoClusterDataSetResult> getKustoClusterDataSet(
  GetKustoClusterDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoClusterDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoClusterDataSetResult.fromMap(result);
}

pulumi.Output<GetKustoClusterDataSetResult> getKustoClusterDataSetOutput(
  GetKustoClusterDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoClusterDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoClusterDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_cluster_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoClusterDataSetMappingResult> getKustoClusterDataSetMapping(
  GetKustoClusterDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoClusterDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoClusterDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetKustoClusterDataSetMappingResult> getKustoClusterDataSetMappingOutput(
  GetKustoClusterDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoClusterDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoClusterDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_database_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoDatabaseDataSetResult> getKustoDatabaseDataSet(
  GetKustoDatabaseDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoDatabaseDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoDatabaseDataSetResult.fromMap(result);
}

pulumi.Output<GetKustoDatabaseDataSetResult> getKustoDatabaseDataSetOutput(
  GetKustoDatabaseDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoDatabaseDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoDatabaseDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_database_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoDatabaseDataSetMappingResult> getKustoDatabaseDataSetMapping(
  GetKustoDatabaseDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoDatabaseDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoDatabaseDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetKustoDatabaseDataSetMappingResult> getKustoDatabaseDataSetMappingOutput(
  GetKustoDatabaseDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoDatabaseDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoDatabaseDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_table_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoTableDataSetResult> getKustoTableDataSet(
  GetKustoTableDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoTableDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoTableDataSetResult.fromMap(result);
}

pulumi.Output<GetKustoTableDataSetResult> getKustoTableDataSetOutput(
  GetKustoTableDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoTableDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoTableDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_kusto_table_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetKustoTableDataSetMappingResult> getKustoTableDataSetMapping(
  GetKustoTableDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getKustoTableDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKustoTableDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetKustoTableDataSetMappingResult> getKustoTableDataSetMappingOutput(
  GetKustoTableDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getKustoTableDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetKustoTableDataSetMappingResult.fromMap);
}

/// Get a synchronizationSetting in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_scheduled_synchronization_setting_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledSynchronizationSettingResult> getScheduledSynchronizationSetting(
  GetScheduledSynchronizationSettingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getScheduledSynchronizationSetting',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledSynchronizationSettingResult.fromMap(result);
}

pulumi.Output<GetScheduledSynchronizationSettingResult> getScheduledSynchronizationSettingOutput(
  GetScheduledSynchronizationSettingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getScheduledSynchronizationSetting',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledSynchronizationSettingResult.fromMap);
}

/// Get a Trigger in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_scheduled_trigger_args_doc}
/// [options] Invoke options controlling this call.
Future<GetScheduledTriggerResult> getScheduledTrigger(
  GetScheduledTriggerArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getScheduledTrigger',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetScheduledTriggerResult.fromMap(result);
}

pulumi.Output<GetScheduledTriggerResult> getScheduledTriggerOutput(
  GetScheduledTriggerArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getScheduledTrigger',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetScheduledTriggerResult.fromMap);
}

/// Get a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_share_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareResult> getShare(
  GetShareArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getShare',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareResult.fromMap(result);
}

pulumi.Output<GetShareResult> getShareOutput(
  GetShareArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getShare',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetShareResult.fromMap);
}

/// Get a shareSubscription in an account
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_share_subscription_args_doc}
/// [options] Invoke options controlling this call.
Future<GetShareSubscriptionResult> getShareSubscription(
  GetShareSubscriptionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getShareSubscription',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetShareSubscriptionResult.fromMap(result);
}

pulumi.Output<GetShareSubscriptionResult> getShareSubscriptionOutput(
  GetShareSubscriptionArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getShareSubscription',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetShareSubscriptionResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_sql_dbtable_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDBTableDataSetResult> getSqlDBTableDataSet(
  GetSqlDBTableDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDBTableDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDBTableDataSetResult.fromMap(result);
}

pulumi.Output<GetSqlDBTableDataSetResult> getSqlDBTableDataSetOutput(
  GetSqlDBTableDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDBTableDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlDBTableDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_sql_dbtable_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDBTableDataSetMappingResult> getSqlDBTableDataSetMapping(
  GetSqlDBTableDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDBTableDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDBTableDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetSqlDBTableDataSetMappingResult> getSqlDBTableDataSetMappingOutput(
  GetSqlDBTableDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDBTableDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlDBTableDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_sql_dwtable_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDWTableDataSetResult> getSqlDWTableDataSet(
  GetSqlDWTableDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDWTableDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDWTableDataSetResult.fromMap(result);
}

pulumi.Output<GetSqlDWTableDataSetResult> getSqlDWTableDataSetOutput(
  GetSqlDWTableDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDWTableDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlDWTableDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_sql_dwtable_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSqlDWTableDataSetMappingResult> getSqlDWTableDataSetMapping(
  GetSqlDWTableDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDWTableDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSqlDWTableDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetSqlDWTableDataSetMappingResult> getSqlDWTableDataSetMappingOutput(
  GetSqlDWTableDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSqlDWTableDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSqlDWTableDataSetMappingResult.fromMap);
}

/// Get a DataSet in a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_synapse_workspace_sql_pool_table_data_set_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSynapseWorkspaceSqlPoolTableDataSetResult> getSynapseWorkspaceSqlPoolTableDataSet(
  GetSynapseWorkspaceSqlPoolTableDataSetArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSynapseWorkspaceSqlPoolTableDataSet',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSynapseWorkspaceSqlPoolTableDataSetResult.fromMap(result);
}

pulumi.Output<GetSynapseWorkspaceSqlPoolTableDataSetResult> getSynapseWorkspaceSqlPoolTableDataSetOutput(
  GetSynapseWorkspaceSqlPoolTableDataSetArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSynapseWorkspaceSqlPoolTableDataSet',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSynapseWorkspaceSqlPoolTableDataSetResult.fromMap);
}

/// Get a DataSetMapping in a shareSubscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_get_synapse_workspace_sql_pool_table_data_set_mapping_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSynapseWorkspaceSqlPoolTableDataSetMappingResult> getSynapseWorkspaceSqlPoolTableDataSetMapping(
  GetSynapseWorkspaceSqlPoolTableDataSetMappingArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:getSynapseWorkspaceSqlPoolTableDataSetMapping',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSynapseWorkspaceSqlPoolTableDataSetMappingResult.fromMap(result);
}

pulumi.Output<GetSynapseWorkspaceSqlPoolTableDataSetMappingResult> getSynapseWorkspaceSqlPoolTableDataSetMappingOutput(
  GetSynapseWorkspaceSqlPoolTableDataSetMappingArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:getSynapseWorkspaceSqlPoolTableDataSetMapping',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(GetSynapseWorkspaceSqlPoolTableDataSetMappingResult.fromMap);
}

/// Get synchronization settings set on a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_list_share_subscription_source_share_synchronization_settings_args_doc}
/// [options] Invoke options controlling this call.
Future<ListShareSubscriptionSourceShareSynchronizationSettingsResult> listShareSubscriptionSourceShareSynchronizationSettings(
  ListShareSubscriptionSourceShareSynchronizationSettingsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSourceShareSynchronizationSettings',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListShareSubscriptionSourceShareSynchronizationSettingsResult.fromMap(result);
}

pulumi.Output<ListShareSubscriptionSourceShareSynchronizationSettingsResult> listShareSubscriptionSourceShareSynchronizationSettingsOutput(
  ListShareSubscriptionSourceShareSynchronizationSettingsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSourceShareSynchronizationSettings',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListShareSubscriptionSourceShareSynchronizationSettingsResult.fromMap);
}

/// List synchronization details
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_list_share_subscription_synchronization_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListShareSubscriptionSynchronizationDetailsResult> listShareSubscriptionSynchronizationDetails(
  ListShareSubscriptionSynchronizationDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSynchronizationDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListShareSubscriptionSynchronizationDetailsResult.fromMap(result);
}

pulumi.Output<ListShareSubscriptionSynchronizationDetailsResult> listShareSubscriptionSynchronizationDetailsOutput(
  ListShareSubscriptionSynchronizationDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSynchronizationDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListShareSubscriptionSynchronizationDetailsResult.fromMap);
}

/// List synchronizations of a share subscription
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_list_share_subscription_synchronizations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListShareSubscriptionSynchronizationsResult> listShareSubscriptionSynchronizations(
  ListShareSubscriptionSynchronizationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSynchronizations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListShareSubscriptionSynchronizationsResult.fromMap(result);
}

pulumi.Output<ListShareSubscriptionSynchronizationsResult> listShareSubscriptionSynchronizationsOutput(
  ListShareSubscriptionSynchronizationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:listShareSubscriptionSynchronizations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListShareSubscriptionSynchronizationsResult.fromMap);
}

/// List synchronization details
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_list_share_synchronization_details_args_doc}
/// [options] Invoke options controlling this call.
Future<ListShareSynchronizationDetailsResult> listShareSynchronizationDetails(
  ListShareSynchronizationDetailsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:listShareSynchronizationDetails',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListShareSynchronizationDetailsResult.fromMap(result);
}

pulumi.Output<ListShareSynchronizationDetailsResult> listShareSynchronizationDetailsOutput(
  ListShareSynchronizationDetailsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:listShareSynchronizationDetails',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListShareSynchronizationDetailsResult.fromMap);
}

/// List synchronizations of a share
///
/// Uses Azure REST API version 2021-08-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_datashare_list_share_synchronizations_args_doc}
/// [options] Invoke options controlling this call.
Future<ListShareSynchronizationsResult> listShareSynchronizations(
  ListShareSynchronizationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:datashare:listShareSynchronizations',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListShareSynchronizationsResult.fromMap(result);
}

pulumi.Output<ListShareSynchronizationsResult> listShareSynchronizationsOutput(
  ListShareSynchronizationsArgs args, {
  pulumi.InvokeOutputOptions? options,
}) {
  return pulumi.invokeOutput<Map<String, dynamic>>(
    'azure-native:datashare:listShareSynchronizations',
    pulumi.Input.mapToInputs(args.toMap()),
    options: options,
  ).apply(ListShareSynchronizationsResult.fromMap);
}
