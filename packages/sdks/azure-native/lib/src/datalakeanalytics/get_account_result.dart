// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'compute_policy_response.dart';
import 'data_lake_store_account_information_response.dart';
import 'firewall_rule_response.dart';
import 'hive_metastore_response.dart';
import 'storage_account_information_response.dart';
import 'virtual_network_rule_response.dart';

/// Result data returned by getAccount.
class GetAccountResult {
  /// The unique identifier associated with this Data Lake Analytics account.
  final String accountId;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The list of compute policies associated with this account.
  final List<ComputePolicyResponse> computePolicies;
  /// The account creation time.
  final String creationTime;
  /// The commitment tier in use for the current month.
  final String currentTier;
  /// The list of Data Lake Store accounts associated with this account.
  final List<DataLakeStoreAccountInformationResponse> dataLakeStoreAccounts;
  /// The current state of the DebugDataAccessLevel for this account.
  final String debugDataAccessLevel;
  /// The default Data Lake Store account associated with this account.
  final String defaultDataLakeStoreAccount;
  /// The type of the default Data Lake Store account associated with this account.
  final String defaultDataLakeStoreAccountType;
  /// The full CName endpoint for this account.
  final String endpoint;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  final String? firewallAllowAzureIps;
  /// The list of firewall rules associated with this account.
  final List<FirewallRuleResponse> firewallRules;
  /// The current state of the IP address firewall for this account.
  final String? firewallState;
  /// The list of hiveMetastores associated with this account.
  final List<HiveMetastoreResponse> hiveMetastores;
  /// The resource identifier.
  final String id;
  /// The account last modified time.
  final String lastModifiedTime;
  /// The resource location.
  final String location;
  /// The maximum supported active jobs under the account at the same time.
  final int maxActiveJobCountPerUser;
  /// The maximum supported degree of parallelism for this account.
  final int? maxDegreeOfParallelism;
  /// The maximum supported degree of parallelism per job for this account.
  final int? maxDegreeOfParallelismPerJob;
  /// The maximum supported jobs running under the account at the same time.
  final int? maxJobCount;
  /// The maximum supported active jobs under the account at the same time.
  final int maxJobRunningTimeInMin;
  /// The maximum supported jobs queued under the account at the same time.
  final int maxQueuedJobCountPerUser;
  /// The minimum supported priority per job for this account.
  final int minPriorityPerJob;
  /// The resource name.
  final String name;
  /// The commitment tier for the next month.
  final String? newTier;
  /// The provisioning status of the Data Lake Analytics account.
  final String provisioningState;
  /// The list of Data Lake Store accounts associated with this account.
  final List<DataLakeStoreAccountInformationResponse>? publicDataLakeStoreAccounts;
  /// The number of days that job metadata is retained.
  final int? queryStoreRetention;
  /// The state of the Data Lake Analytics account.
  final String state;
  /// The list of Azure Blob Storage accounts associated with this account.
  final List<StorageAccountInformationResponse> storageAccounts;
  /// The system defined maximum supported degree of parallelism for this account, which restricts the maximum value of parallelism the user can set for the account.
  final int systemMaxDegreeOfParallelism;
  /// The system defined maximum supported jobs running under the account at the same time, which restricts the maximum number of running jobs the user can set for the account.
  final int systemMaxJobCount;
  /// The resource tags.
  final Map<String, String> tags;
  /// The resource type.
  final String type;
  /// The list of virtualNetwork rules associated with this account.
  final List<VirtualNetworkRuleResponse> virtualNetworkRules;

  /// Creates a new [GetAccountResult].
  /// [accountId] The unique identifier associated with this Data Lake Analytics account.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [computePolicies] The list of compute policies associated with this account.
  /// [creationTime] The account creation time.
  /// [currentTier] The commitment tier in use for the current month.
  /// [dataLakeStoreAccounts] The list of Data Lake Store accounts associated with this account.
  /// [debugDataAccessLevel] The current state of the DebugDataAccessLevel for this account.
  /// [defaultDataLakeStoreAccount] The default Data Lake Store account associated with this account.
  /// [defaultDataLakeStoreAccountType] The type of the default Data Lake Store account associated with this account.
  /// [endpoint] The full CName endpoint for this account.
  /// [firewallAllowAzureIps] The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  /// [firewallRules] The list of firewall rules associated with this account.
  /// [firewallState] The current state of the IP address firewall for this account.
  /// [hiveMetastores] The list of hiveMetastores associated with this account.
  /// [id] The resource identifier.
  /// [lastModifiedTime] The account last modified time.
  /// [location] The resource location.
  /// [maxActiveJobCountPerUser] The maximum supported active jobs under the account at the same time.
  /// [maxDegreeOfParallelism] The maximum supported degree of parallelism for this account.
  /// [maxDegreeOfParallelismPerJob] The maximum supported degree of parallelism per job for this account.
  /// [maxJobCount] The maximum supported jobs running under the account at the same time.
  /// [maxJobRunningTimeInMin] The maximum supported active jobs under the account at the same time.
  /// [maxQueuedJobCountPerUser] The maximum supported jobs queued under the account at the same time.
  /// [minPriorityPerJob] The minimum supported priority per job for this account.
  /// [name] The resource name.
  /// [newTier] The commitment tier for the next month.
  /// [provisioningState] The provisioning status of the Data Lake Analytics account.
  /// [publicDataLakeStoreAccounts] The list of Data Lake Store accounts associated with this account.
  /// [queryStoreRetention] The number of days that job metadata is retained.
  /// [state] The state of the Data Lake Analytics account.
  /// [storageAccounts] The list of Azure Blob Storage accounts associated with this account.
  /// [systemMaxDegreeOfParallelism] The system defined maximum supported degree of parallelism for this account, which restricts the maximum value of parallelism the user can set for the account.
  /// [systemMaxJobCount] The system defined maximum supported jobs running under the account at the same time, which restricts the maximum number of running jobs the user can set for the account.
  /// [tags] The resource tags.
  /// [type] The resource type.
  /// [virtualNetworkRules] The list of virtualNetwork rules associated with this account.
  GetAccountResult({
    required this.accountId,
    required this.azureApiVersion,
    required this.computePolicies,
    required this.creationTime,
    required this.currentTier,
    required this.dataLakeStoreAccounts,
    required this.debugDataAccessLevel,
    required this.defaultDataLakeStoreAccount,
    required this.defaultDataLakeStoreAccountType,
    required this.endpoint,
    this.firewallAllowAzureIps,
    required this.firewallRules,
    this.firewallState,
    required this.hiveMetastores,
    required this.id,
    required this.lastModifiedTime,
    required this.location,
    required this.maxActiveJobCountPerUser,
    this.maxDegreeOfParallelism,
    this.maxDegreeOfParallelismPerJob,
    this.maxJobCount,
    required this.maxJobRunningTimeInMin,
    required this.maxQueuedJobCountPerUser,
    required this.minPriorityPerJob,
    required this.name,
    this.newTier,
    required this.provisioningState,
    this.publicDataLakeStoreAccounts,
    this.queryStoreRetention,
    required this.state,
    required this.storageAccounts,
    required this.systemMaxDegreeOfParallelism,
    required this.systemMaxJobCount,
    required this.tags,
    required this.type,
    required this.virtualNetworkRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': accountId,
      'azureApiVersion': azureApiVersion,
      'computePolicies': pulumi.Input.encodeList<ComputePolicyResponse, Map<String, dynamic>>(computePolicies, (value) => value.toMap()),
      'creationTime': creationTime,
      'currentTier': currentTier,
      'dataLakeStoreAccounts': pulumi.Input.encodeList<DataLakeStoreAccountInformationResponse, Map<String, dynamic>>(dataLakeStoreAccounts, (value) => value.toMap()),
      'debugDataAccessLevel': debugDataAccessLevel,
      'defaultDataLakeStoreAccount': defaultDataLakeStoreAccount,
      'defaultDataLakeStoreAccountType': defaultDataLakeStoreAccountType,
      'endpoint': endpoint,
      'firewallAllowAzureIps': ?firewallAllowAzureIps,
      'firewallRules': pulumi.Input.encodeList<FirewallRuleResponse, Map<String, dynamic>>(firewallRules, (value) => value.toMap()),
      'firewallState': ?firewallState,
      'hiveMetastores': pulumi.Input.encodeList<HiveMetastoreResponse, Map<String, dynamic>>(hiveMetastores, (value) => value.toMap()),
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'location': location,
      'maxActiveJobCountPerUser': maxActiveJobCountPerUser,
      'maxDegreeOfParallelism': ?maxDegreeOfParallelism,
      'maxDegreeOfParallelismPerJob': ?maxDegreeOfParallelismPerJob,
      'maxJobCount': ?maxJobCount,
      'maxJobRunningTimeInMin': maxJobRunningTimeInMin,
      'maxQueuedJobCountPerUser': maxQueuedJobCountPerUser,
      'minPriorityPerJob': minPriorityPerJob,
      'name': name,
      'newTier': ?newTier,
      'provisioningState': provisioningState,
      'publicDataLakeStoreAccounts': ?(() { final guardedValue = publicDataLakeStoreAccounts; if (guardedValue == null) return null; return pulumi.Input.encodeList<DataLakeStoreAccountInformationResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'queryStoreRetention': ?queryStoreRetention,
      'state': state,
      'storageAccounts': pulumi.Input.encodeList<StorageAccountInformationResponse, Map<String, dynamic>>(storageAccounts, (value) => value.toMap()),
      'systemMaxDegreeOfParallelism': systemMaxDegreeOfParallelism,
      'systemMaxJobCount': systemMaxJobCount,
      'tags': tags,
      'type': type,
      'virtualNetworkRules': pulumi.Input.encodeList<VirtualNetworkRuleResponse, Map<String, dynamic>>(virtualNetworkRules, (value) => value.toMap()),
    };
  }

  factory GetAccountResult.fromMap(Map<String, dynamic> map) {
    return GetAccountResult(
      accountId: map['accountId'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      computePolicies: pulumi.Input.decodeList<ComputePolicyResponse>(map['computePolicies']!, (value) => ComputePolicyResponse.fromMap((value as Map).cast<String, dynamic>())),
      creationTime: map['creationTime'] as String,
      currentTier: map['currentTier'] as String,
      dataLakeStoreAccounts: pulumi.Input.decodeList<DataLakeStoreAccountInformationResponse>(map['dataLakeStoreAccounts']!, (value) => DataLakeStoreAccountInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      debugDataAccessLevel: map['debugDataAccessLevel'] as String,
      defaultDataLakeStoreAccount: map['defaultDataLakeStoreAccount'] as String,
      defaultDataLakeStoreAccountType: map['defaultDataLakeStoreAccountType'] as String,
      endpoint: map['endpoint'] as String,
      firewallAllowAzureIps: (() { final guardedValue = map['firewallAllowAzureIps']; if (guardedValue == null) return null; return guardedValue as String; })(),
      firewallRules: pulumi.Input.decodeList<FirewallRuleResponse>(map['firewallRules']!, (value) => FirewallRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      firewallState: (() { final guardedValue = map['firewallState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hiveMetastores: pulumi.Input.decodeList<HiveMetastoreResponse>(map['hiveMetastores']!, (value) => HiveMetastoreResponse.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      location: map['location'] as String,
      maxActiveJobCountPerUser: map['maxActiveJobCountPerUser'] as int,
      maxDegreeOfParallelism: (() { final guardedValue = map['maxDegreeOfParallelism']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maxDegreeOfParallelismPerJob: (() { final guardedValue = map['maxDegreeOfParallelismPerJob']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maxJobCount: (() { final guardedValue = map['maxJobCount']; if (guardedValue == null) return null; return guardedValue as int; })(),
      maxJobRunningTimeInMin: map['maxJobRunningTimeInMin'] as int,
      maxQueuedJobCountPerUser: map['maxQueuedJobCountPerUser'] as int,
      minPriorityPerJob: map['minPriorityPerJob'] as int,
      name: map['name'] as String,
      newTier: (() { final guardedValue = map['newTier']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      publicDataLakeStoreAccounts: (() { final guardedValue = map['publicDataLakeStoreAccounts']; if (guardedValue == null) return null; return pulumi.Input.decodeList<DataLakeStoreAccountInformationResponse>(guardedValue, (value) => DataLakeStoreAccountInformationResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      queryStoreRetention: (() { final guardedValue = map['queryStoreRetention']; if (guardedValue == null) return null; return guardedValue as int; })(),
      state: map['state'] as String,
      storageAccounts: pulumi.Input.decodeList<StorageAccountInformationResponse>(map['storageAccounts']!, (value) => StorageAccountInformationResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemMaxDegreeOfParallelism: map['systemMaxDegreeOfParallelism'] as int,
      systemMaxJobCount: map['systemMaxJobCount'] as int,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      virtualNetworkRules: pulumi.Input.decodeList<VirtualNetworkRuleResponse>(map['virtualNetworkRules']!, (value) => VirtualNetworkRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

