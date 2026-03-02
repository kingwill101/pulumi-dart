// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'add_data_lake_store_with_account_parameters.dart';
import 'add_storage_account_with_account_parameters.dart';
import 'create_compute_policy_with_account_parameters.dart';
import 'create_firewall_rule_with_account_parameters.dart';
import 'firewall_allow_azure_ips_state.dart';
import 'firewall_state.dart';
import 'tier_type.dart';

/// {@template pulumi_datalakeanalytics_account_args_doc}
/// The set of arguments for Account.
/// {@endtemplate}
/// {@macro pulumi_datalakeanalytics_account_args_doc}
class AccountArgs {
  /// The name of the Data Lake Analytics account.
  final pulumi.Input<String>? accountName;
  /// The list of compute policies associated with this account.
  final pulumi.Input<List<CreateComputePolicyWithAccountParameters>>? computePolicies;
  /// The list of Data Lake Store accounts associated with this account.
  final pulumi.Input<List<AddDataLakeStoreWithAccountParameters>> dataLakeStoreAccounts;
  /// The default Data Lake Store account associated with this account.
  final pulumi.Input<String> defaultDataLakeStoreAccount;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  final pulumi.Input<FirewallAllowAzureIpsState>? firewallAllowAzureIps;
  /// The list of firewall rules associated with this account.
  final pulumi.Input<List<CreateFirewallRuleWithAccountParameters>>? firewallRules;
  /// The current state of the IP address firewall for this account.
  final pulumi.Input<FirewallState>? firewallState;
  /// The resource location.
  final pulumi.Input<String>? location;
  /// The maximum supported degree of parallelism for this account.
  final pulumi.Input<int>? maxDegreeOfParallelism;
  /// The maximum supported degree of parallelism per job for this account.
  final pulumi.Input<int>? maxDegreeOfParallelismPerJob;
  /// The maximum supported jobs running under the account at the same time.
  final pulumi.Input<int>? maxJobCount;
  /// The minimum supported priority per job for this account.
  final pulumi.Input<int>? minPriorityPerJob;
  /// The commitment tier for the next month.
  final pulumi.Input<TierType>? newTier;
  /// The number of days that job metadata is retained.
  final pulumi.Input<int>? queryStoreRetention;
  /// The name of the Azure resource group.
  final pulumi.Input<String> resourceGroupName;
  /// The list of Azure Blob Storage accounts associated with this account.
  final pulumi.Input<List<AddStorageAccountWithAccountParameters>>? storageAccounts;
  /// The resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccountArgs].
  /// [accountName] The name of the Data Lake Analytics account.
  /// [computePolicies] The list of compute policies associated with this account.
  /// [dataLakeStoreAccounts] The list of Data Lake Store accounts associated with this account.
  /// [defaultDataLakeStoreAccount] The default Data Lake Store account associated with this account.
  /// [firewallAllowAzureIps] The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  /// [firewallRules] The list of firewall rules associated with this account.
  /// [firewallState] The current state of the IP address firewall for this account.
  /// [location] The resource location.
  /// [maxDegreeOfParallelism] The maximum supported degree of parallelism for this account.
  /// [maxDegreeOfParallelismPerJob] The maximum supported degree of parallelism per job for this account.
  /// [maxJobCount] The maximum supported jobs running under the account at the same time.
  /// [minPriorityPerJob] The minimum supported priority per job for this account.
  /// [newTier] The commitment tier for the next month.
  /// [queryStoreRetention] The number of days that job metadata is retained.
  /// [resourceGroupName] The name of the Azure resource group.
  /// [storageAccounts] The list of Azure Blob Storage accounts associated with this account.
  /// [tags] The resource tags.
  AccountArgs({
    this.accountName,
    this.computePolicies,
    required this.dataLakeStoreAccounts,
    required this.defaultDataLakeStoreAccount,
    this.firewallAllowAzureIps,
    this.firewallRules,
    this.firewallState,
    this.location,
    this.maxDegreeOfParallelism,
    this.maxDegreeOfParallelismPerJob,
    this.maxJobCount,
    this.minPriorityPerJob,
    this.newTier,
    this.queryStoreRetention,
    required this.resourceGroupName,
    this.storageAccounts,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': ?accountName,
      'computePolicies': ?pulumi.Input.mapOptionalInputValue<List<CreateComputePolicyWithAccountParameters>, List<Map<String, dynamic>>>(computePolicies, (value) => pulumi.Input.encodeList<CreateComputePolicyWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'dataLakeStoreAccounts': pulumi.Input.mapInputValue<List<AddDataLakeStoreWithAccountParameters>, List<Map<String, dynamic>>>(dataLakeStoreAccounts, (value) => pulumi.Input.encodeList<AddDataLakeStoreWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'defaultDataLakeStoreAccount': defaultDataLakeStoreAccount,
      'firewallAllowAzureIps': ?pulumi.Input.mapOptionalInputValue<FirewallAllowAzureIpsState, String>(firewallAllowAzureIps, (value) => value.value),
      'firewallRules': ?pulumi.Input.mapOptionalInputValue<List<CreateFirewallRuleWithAccountParameters>, List<Map<String, dynamic>>>(firewallRules, (value) => pulumi.Input.encodeList<CreateFirewallRuleWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'firewallState': ?pulumi.Input.mapOptionalInputValue<FirewallState, String>(firewallState, (value) => value.value),
      'location': ?location,
      'maxDegreeOfParallelism': ?maxDegreeOfParallelism,
      'maxDegreeOfParallelismPerJob': ?maxDegreeOfParallelismPerJob,
      'maxJobCount': ?maxJobCount,
      'minPriorityPerJob': ?minPriorityPerJob,
      'newTier': ?pulumi.Input.mapOptionalInputValue<TierType, String>(newTier, (value) => value.value),
      'queryStoreRetention': ?queryStoreRetention,
      'resourceGroupName': resourceGroupName,
      'storageAccounts': ?pulumi.Input.mapOptionalInputValue<List<AddStorageAccountWithAccountParameters>, List<Map<String, dynamic>>>(storageAccounts, (value) => pulumi.Input.encodeList<AddStorageAccountWithAccountParameters, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory AccountArgs.fromMap(Map<String, dynamic> map) {
    return AccountArgs(
      accountName: map['accountName'] == null ? null : (map['accountName']! as String).input(),
      computePolicies: map['computePolicies'] == null ? null : (pulumi.Input.decodeList<CreateComputePolicyWithAccountParameters>(map['computePolicies']!, (value) => CreateComputePolicyWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      dataLakeStoreAccounts: (pulumi.Input.decodeList<AddDataLakeStoreWithAccountParameters>(map['dataLakeStoreAccounts'], (value) => AddDataLakeStoreWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      defaultDataLakeStoreAccount: (map['defaultDataLakeStoreAccount'] as String).input(),
      firewallAllowAzureIps: map['firewallAllowAzureIps'] == null ? null : (FirewallAllowAzureIpsState.fromValue(map['firewallAllowAzureIps']! as String)).input(),
      firewallRules: map['firewallRules'] == null ? null : (pulumi.Input.decodeList<CreateFirewallRuleWithAccountParameters>(map['firewallRules']!, (value) => CreateFirewallRuleWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      firewallState: map['firewallState'] == null ? null : (FirewallState.fromValue(map['firewallState']! as String)).input(),
      location: map['location'] == null ? null : (map['location']! as String).input(),
      maxDegreeOfParallelism: map['maxDegreeOfParallelism'] == null ? null : (map['maxDegreeOfParallelism']! as int).input(),
      maxDegreeOfParallelismPerJob: map['maxDegreeOfParallelismPerJob'] == null ? null : (map['maxDegreeOfParallelismPerJob']! as int).input(),
      maxJobCount: map['maxJobCount'] == null ? null : (map['maxJobCount']! as int).input(),
      minPriorityPerJob: map['minPriorityPerJob'] == null ? null : (map['minPriorityPerJob']! as int).input(),
      newTier: map['newTier'] == null ? null : (TierType.fromValue(map['newTier']! as String)).input(),
      queryStoreRetention: map['queryStoreRetention'] == null ? null : (map['queryStoreRetention']! as int).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      storageAccounts: map['storageAccounts'] == null ? null : (pulumi.Input.decodeList<AddStorageAccountWithAccountParameters>(map['storageAccounts']!, (value) => AddStorageAccountWithAccountParameters.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
    );
  }
}

