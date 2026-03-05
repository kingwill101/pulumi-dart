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
