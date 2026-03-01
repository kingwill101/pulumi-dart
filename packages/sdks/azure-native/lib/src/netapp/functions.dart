import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_account_args.dart';
import 'get_account_change_key_vault_information_args.dart';
import 'get_account_change_key_vault_information_result.dart';
import 'get_account_key_vault_status_args.dart';
import 'get_account_key_vault_status_result.dart';
import 'get_account_result.dart';
import 'get_active_directory_config_args.dart';
import 'get_active_directory_config_result.dart';
import 'get_backup_args.dart';
import 'get_backup_policy_args.dart';
import 'get_backup_policy_result.dart';
import 'get_backup_result.dart';
import 'get_backup_vault_args.dart';
import 'get_backup_vault_result.dart';
import 'get_capacity_pool_args.dart';
import 'get_capacity_pool_backup_args.dart';
import 'get_capacity_pool_backup_result.dart';
import 'get_capacity_pool_bucket_args.dart';
import 'get_capacity_pool_bucket_result.dart';
import 'get_capacity_pool_cache_args.dart';
import 'get_capacity_pool_cache_result.dart';
import 'get_capacity_pool_result.dart';
import 'get_capacity_pool_snapshot_args.dart';
import 'get_capacity_pool_snapshot_result.dart';
import 'get_capacity_pool_subvolume_args.dart';
import 'get_capacity_pool_subvolume_metadata_args.dart';
import 'get_capacity_pool_subvolume_metadata_result.dart';
import 'get_capacity_pool_subvolume_result.dart';
import 'get_capacity_pool_volume_args.dart';
import 'get_capacity_pool_volume_group_id_for_ldap_user_args.dart';
import 'get_capacity_pool_volume_group_id_for_ldap_user_result.dart';
import 'get_capacity_pool_volume_quota_rule_args.dart';
import 'get_capacity_pool_volume_quota_rule_result.dart';
import 'get_capacity_pool_volume_result.dart';
import 'get_elastic_account_args.dart';
import 'get_elastic_account_result.dart';
import 'get_elastic_backup_args.dart';
import 'get_elastic_backup_policy_args.dart';
import 'get_elastic_backup_policy_result.dart';
import 'get_elastic_backup_result.dart';
import 'get_elastic_backup_vault_args.dart';
import 'get_elastic_backup_vault_result.dart';
import 'get_elastic_capacity_pool_args.dart';
import 'get_elastic_capacity_pool_result.dart';
import 'get_elastic_snapshot_args.dart';
import 'get_elastic_snapshot_policy_args.dart';
import 'get_elastic_snapshot_policy_result.dart';
import 'get_elastic_snapshot_result.dart';
import 'get_elastic_volume_args.dart';
import 'get_elastic_volume_result.dart';
import 'get_snapshot_policy_args.dart';
import 'get_snapshot_policy_result.dart';
import 'get_volume_group_args.dart';
import 'get_volume_group_result.dart';
import 'list_capacity_pool_cache_peering_passphrases_args.dart';
import 'list_capacity_pool_cache_peering_passphrases_result.dart';
import 'list_capacity_pool_volume_quota_report_args.dart';
import 'list_capacity_pool_volume_quota_report_result.dart';
import 'list_capacity_pool_volume_replications_args.dart';
import 'list_capacity_pool_volume_replications_result.dart';

/// Get the NetApp account
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountResult> getAccount(
  GetAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountResult.fromMap(result);
}

/// Contains data from encryption.keyVaultProperties as well as information about which private endpoint is used by each encryption sibling set. Response from this endpoint can be modified and used as request body for POST request.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2023-11-01-preview, 2024-03-01-preview, 2024-05-01-preview, 2024-07-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_account_change_key_vault_information_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountChangeKeyVaultInformationResult> getAccountChangeKeyVaultInformation(
  GetAccountChangeKeyVaultInformationArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getAccountChangeKeyVaultInformation',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountChangeKeyVaultInformationResult.fromMap(result);
}

/// Contains data from encryption.keyVaultProperties as well as information about which private endpoint is used by each encryption sibling set. Response from this endpoint can be modified and used as request body for POST request.
///
/// Uses Azure REST API version 2024-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_account_key_vault_status_args_doc}
/// [options] Invoke options controlling this call.
Future<GetAccountKeyVaultStatusResult> getAccountKeyVaultStatus(
  GetAccountKeyVaultStatusArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getAccountKeyVaultStatus',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAccountKeyVaultStatusResult.fromMap(result);
}

/// Get the details of the specified active directory configuration
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_active_directory_config_args_doc}
/// [options] Invoke options controlling this call.
Future<GetActiveDirectoryConfigResult> getActiveDirectoryConfig(
  GetActiveDirectoryConfigArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getActiveDirectoryConfig',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetActiveDirectoryConfigResult.fromMap(result);
}

/// Get the specified Backup under Backup Vault.
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-05-01-preview, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupResult> getBackup(
  GetBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupResult.fromMap(result);
}

/// Get a particular backup Policy
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_backup_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupPolicyResult> getBackupPolicy(
  GetBackupPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getBackupPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupPolicyResult.fromMap(result);
}

/// Get the Backup Vault
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01-preview, 2023-05-01-preview, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetBackupVaultResult> getBackupVault(
  GetBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetBackupVaultResult.fromMap(result);
}

/// Get details of the specified capacity pool
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolResult> getCapacityPool(
  GetCapacityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolResult.fromMap(result);
}

/// Gets the specified backup of the volume
///
/// Uses Azure REST API version 2022-11-01.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolBackupResult> getCapacityPoolBackup(
  GetCapacityPoolBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolBackupResult.fromMap(result);
}

/// Get the details of the specified volume's bucket. A bucket allows additional services, such as AI services, connect to the volume data contained in those buckets.
///
/// Uses Azure REST API version 2025-01-01-preview.
///
/// Other available API versions: 2025-03-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_bucket_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolBucketResult> getCapacityPoolBucket(
  GetCapacityPoolBucketArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolBucket',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolBucketResult.fromMap(result);
}

/// Get the details of the specified Cache
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_cache_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolCacheResult> getCapacityPoolCache(
  GetCapacityPoolCacheArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolCache',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolCacheResult.fromMap(result);
}

/// Get details of the specified snapshot
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolSnapshotResult> getCapacityPoolSnapshot(
  GetCapacityPoolSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolSnapshotResult.fromMap(result);
}

/// Returns the path associated with the subvolumeName provided
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_subvolume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolSubvolumeResult> getCapacityPoolSubvolume(
  GetCapacityPoolSubvolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolSubvolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolSubvolumeResult.fromMap(result);
}

/// Get details of the specified subvolume
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_subvolume_metadata_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolSubvolumeMetadataResult> getCapacityPoolSubvolumeMetadata(
  GetCapacityPoolSubvolumeMetadataArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolSubvolumeMetadata',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolSubvolumeMetadataResult.fromMap(result);
}

/// Get the details of the specified volume
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolVolumeResult> getCapacityPoolVolume(
  GetCapacityPoolVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolVolumeResult.fromMap(result);
}

/// Returns the list of group Ids for a specific LDAP User
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_volume_group_id_for_ldap_user_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolVolumeGroupIdForLdapUserResult> getCapacityPoolVolumeGroupIdForLdapUser(
  GetCapacityPoolVolumeGroupIdForLdapUserArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolVolumeGroupIdForLdapUser',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolVolumeGroupIdForLdapUserResult.fromMap(result);
}

/// Get details of the specified quota rule
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_capacity_pool_volume_quota_rule_args_doc}
/// [options] Invoke options controlling this call.
Future<GetCapacityPoolVolumeQuotaRuleResult> getCapacityPoolVolumeQuotaRule(
  GetCapacityPoolVolumeQuotaRuleArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getCapacityPoolVolumeQuotaRule',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCapacityPoolVolumeQuotaRuleResult.fromMap(result);
}

/// Get the NetApp Elastic Account
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_account_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticAccountResult> getElasticAccount(
  GetElasticAccountArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticAccount',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticAccountResult.fromMap(result);
}

/// Get the specified Elastic Backup under Elastic Backup Vault.
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_backup_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBackupResult> getElasticBackup(
  GetElasticBackupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticBackup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBackupResult.fromMap(result);
}

/// Get the Elastic Backup Policy
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_backup_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBackupPolicyResult> getElasticBackupPolicy(
  GetElasticBackupPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticBackupPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBackupPolicyResult.fromMap(result);
}

/// Get the Elastic Backup Vault
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_backup_vault_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticBackupVaultResult> getElasticBackupVault(
  GetElasticBackupVaultArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticBackupVault',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticBackupVaultResult.fromMap(result);
}

/// Get the NetApp Elastic Capacity Pool
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_capacity_pool_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticCapacityPoolResult> getElasticCapacityPool(
  GetElasticCapacityPoolArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticCapacityPool',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticCapacityPoolResult.fromMap(result);
}

/// Get a ElasticSnapshot
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_snapshot_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticSnapshotResult> getElasticSnapshot(
  GetElasticSnapshotArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticSnapshot',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticSnapshotResult.fromMap(result);
}

/// Get a ElasticSnapshotPolicy
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_snapshot_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticSnapshotPolicyResult> getElasticSnapshotPolicy(
  GetElasticSnapshotPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticSnapshotPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticSnapshotPolicyResult.fromMap(result);
}

/// Get the details of the specified volume
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_elastic_volume_args_doc}
/// [options] Invoke options controlling this call.
Future<GetElasticVolumeResult> getElasticVolume(
  GetElasticVolumeArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getElasticVolume',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetElasticVolumeResult.fromMap(result);
}

/// Get a snapshot Policy
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_snapshot_policy_args_doc}
/// [options] Invoke options controlling this call.
Future<GetSnapshotPolicyResult> getSnapshotPolicy(
  GetSnapshotPolicyArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getSnapshotPolicy',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSnapshotPolicyResult.fromMap(result);
}

/// Get details of the specified volume group
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_get_volume_group_args_doc}
/// [options] Invoke options controlling this call.
Future<GetVolumeGroupResult> getVolumeGroup(
  GetVolumeGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:getVolumeGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetVolumeGroupResult.fromMap(result);
}

/// This operation will list the cluster peering command, cluster peering passphrase and the vserver peering command
///
/// Uses Azure REST API version 2025-09-01-preview.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_list_capacity_pool_cache_peering_passphrases_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCapacityPoolCachePeeringPassphrasesResult> listCapacityPoolCachePeeringPassphrases(
  ListCapacityPoolCachePeeringPassphrasesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:listCapacityPoolCachePeeringPassphrases',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCapacityPoolCachePeeringPassphrasesResult.fromMap(result);
}

/// Returns report of quotas for the volume
///
/// Uses Azure REST API version 2024-09-01-preview.
///
/// Other available API versions: 2024-03-01-preview, 2024-05-01-preview, 2024-07-01-preview, 2025-01-01-preview, 2025-03-01-preview, 2025-07-01-preview, 2025-08-01-preview, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_list_capacity_pool_volume_quota_report_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCapacityPoolVolumeQuotaReportResult> listCapacityPoolVolumeQuotaReport(
  ListCapacityPoolVolumeQuotaReportArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:listCapacityPoolVolumeQuotaReport',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCapacityPoolVolumeQuotaReportResult.fromMap(result);
}

/// List all replications for a specified volume
///
/// Uses Azure REST API version 2024-09-01.
///
/// Other available API versions: 2022-11-01, 2022-11-01-preview, 2023-05-01, 2023-05-01-preview, 2023-07-01, 2023-07-01-preview, 2023-11-01, 2023-11-01-preview, 2024-01-01, 2024-03-01, 2024-03-01-preview, 2024-05-01, 2024-05-01-preview, 2024-07-01, 2024-07-01-preview, 2024-09-01-preview, 2025-01-01, 2025-01-01-preview, 2025-03-01, 2025-03-01-preview, 2025-06-01, 2025-07-01-preview, 2025-08-01, 2025-08-01-preview, 2025-09-01, 2025-09-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native netapp [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
/// [args] Arguments passed to this invoke. {@macro pulumi_netapp_list_capacity_pool_volume_replications_args_doc}
/// [options] Invoke options controlling this call.
Future<ListCapacityPoolVolumeReplicationsResult> listCapacityPoolVolumeReplications(
  ListCapacityPoolVolumeReplicationsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'azure-native:netapp:listCapacityPoolVolumeReplications',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return ListCapacityPoolVolumeReplicationsResult.fromMap(result);
}
