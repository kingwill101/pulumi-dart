import 'package:pulumi/pulumi.dart' as pulumi;
import 'account_args.dart';
import 'compute_policy_response.dart';
import 'data_lake_store_account_information_response.dart';
import 'firewall_rule_response.dart';
import 'hive_metastore_response.dart';
import 'storage_account_information_response.dart';
import 'virtual_network_rule_response.dart';

/// A Data Lake Analytics account object, containing all information associated with the named Data Lake Analytics account.
///
/// Uses Azure REST API version 2019-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2019-11-01-preview.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Creates the specified Data Lake Analytics account. This supplies the user with computation services for Data Lake Analytics workloads.
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var account = new AzureNative.DataLakeAnalytics.Account("account", new()
///     {
///         AccountName = "contosoadla",
///         ComputePolicies = new[]
///         {
///             new AzureNative.DataLakeAnalytics.Inputs.CreateComputePolicyWithAccountParametersArgs
///             {
///                 MaxDegreeOfParallelismPerJob = 1,
///                 MinPriorityPerJob = 1,
///                 Name = "test_policy",
///                 ObjectId = "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///                 ObjectType = AzureNative.DataLakeAnalytics.AADObjectType.User,
///             },
///         },
///         DataLakeStoreAccounts = new[]
///         {
///             new AzureNative.DataLakeAnalytics.Inputs.AddDataLakeStoreWithAccountParametersArgs
///             {
///                 Name = "test_adls",
///                 Suffix = "test_suffix",
///             },
///         },
///         DefaultDataLakeStoreAccount = "test_adls",
///         FirewallAllowAzureIps = AzureNative.DataLakeAnalytics.FirewallAllowAzureIpsState.Enabled,
///         FirewallRules = new[]
///         {
///             new AzureNative.DataLakeAnalytics.Inputs.CreateFirewallRuleWithAccountParametersArgs
///             {
///                 EndIpAddress = "2.2.2.2",
///                 Name = "test_rule",
///                 StartIpAddress = "1.1.1.1",
///             },
///         },
///         FirewallState = AzureNative.DataLakeAnalytics.FirewallState.Enabled,
///         Location = "eastus2",
///         MaxDegreeOfParallelism = 30,
///         MaxDegreeOfParallelismPerJob = 1,
///         MaxJobCount = 3,
///         MinPriorityPerJob = 1,
///         NewTier = AzureNative.DataLakeAnalytics.TierType.Consumption,
///         QueryStoreRetention = 30,
///         ResourceGroupName = "contosorg",
///         StorageAccounts = new[]
///         {
///             new AzureNative.DataLakeAnalytics.Inputs.AddStorageAccountWithAccountParametersArgs
///             {
///                 AccessKey = "34adfa4f-cedf-4dc0-ba29-b6d1a69ab346",
///                 Name = "test_storage",
///                 Suffix = "test_suffix",
///             },
///         },
///         Tags =
///         {
///             { "test_key", "test_value" },
///         },
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	datalakeanalytics "github.com/pulumi/pulumi-azure-native-sdk/datalakeanalytics/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datalakeanalytics.NewAccount(ctx, "account", &datalakeanalytics.AccountArgs{
/// 			AccountName: pulumi.String("contosoadla"),
/// 			ComputePolicies: datalakeanalytics.CreateComputePolicyWithAccountParametersArray{
/// 				&datalakeanalytics.CreateComputePolicyWithAccountParametersArgs{
/// 					MaxDegreeOfParallelismPerJob: pulumi.Int(1),
/// 					MinPriorityPerJob:            pulumi.Int(1),
/// 					Name:                         pulumi.String("test_policy"),
/// 					ObjectId:                     pulumi.String("34adfa4f-cedf-4dc0-ba29-b6d1a69ab345"),
/// 					ObjectType:                   pulumi.String(datalakeanalytics.AADObjectTypeUser),
/// 				},
/// 			},
/// 			DataLakeStoreAccounts: datalakeanalytics.AddDataLakeStoreWithAccountParametersArray{
/// 				&datalakeanalytics.AddDataLakeStoreWithAccountParametersArgs{
/// 					Name:   pulumi.String("test_adls"),
/// 					Suffix: pulumi.String("test_suffix"),
/// 				},
/// 			},
/// 			DefaultDataLakeStoreAccount: pulumi.String("test_adls"),
/// 			FirewallAllowAzureIps:       datalakeanalytics.FirewallAllowAzureIpsStateEnabled,
/// 			FirewallRules: datalakeanalytics.CreateFirewallRuleWithAccountParametersArray{
/// 				&datalakeanalytics.CreateFirewallRuleWithAccountParametersArgs{
/// 					EndIpAddress:   pulumi.String("2.2.2.2"),
/// 					Name:           pulumi.String("test_rule"),
/// 					StartIpAddress: pulumi.String("1.1.1.1"),
/// 				},
/// 			},
/// 			FirewallState:                datalakeanalytics.FirewallStateEnabled,
/// 			Location:                     pulumi.String("eastus2"),
/// 			MaxDegreeOfParallelism:       pulumi.Int(30),
/// 			MaxDegreeOfParallelismPerJob: pulumi.Int(1),
/// 			MaxJobCount:                  pulumi.Int(3),
/// 			MinPriorityPerJob:            pulumi.Int(1),
/// 			NewTier:                      datalakeanalytics.TierTypeConsumption,
/// 			QueryStoreRetention:          pulumi.Int(30),
/// 			ResourceGroupName:            pulumi.String("contosorg"),
/// 			StorageAccounts: datalakeanalytics.AddStorageAccountWithAccountParametersArray{
/// 				&datalakeanalytics.AddStorageAccountWithAccountParametersArgs{
/// 					AccessKey: pulumi.String("34adfa4f-cedf-4dc0-ba29-b6d1a69ab346"),
/// 					Name:      pulumi.String("test_storage"),
/// 					Suffix:    pulumi.String("test_suffix"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"test_key": pulumi.String("test_value"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.datalakeanalytics.Account;
/// import com.pulumi.azurenative.datalakeanalytics.AccountArgs;
/// import com.pulumi.azurenative.datalakeanalytics.inputs.CreateComputePolicyWithAccountParametersArgs;
/// import com.pulumi.azurenative.datalakeanalytics.inputs.AddDataLakeStoreWithAccountParametersArgs;
/// import com.pulumi.azurenative.datalakeanalytics.inputs.CreateFirewallRuleWithAccountParametersArgs;
/// import com.pulumi.azurenative.datalakeanalytics.inputs.AddStorageAccountWithAccountParametersArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var account = new Account("account", AccountArgs.builder()
///             .accountName("contosoadla")
///             .computePolicies(CreateComputePolicyWithAccountParametersArgs.builder()
///                 .maxDegreeOfParallelismPerJob(1)
///                 .minPriorityPerJob(1)
///                 .name("test_policy")
///                 .objectId("34adfa4f-cedf-4dc0-ba29-b6d1a69ab345")
///                 .objectType("User")
///                 .build())
///             .dataLakeStoreAccounts(AddDataLakeStoreWithAccountParametersArgs.builder()
///                 .name("test_adls")
///                 .suffix("test_suffix")
///                 .build())
///             .defaultDataLakeStoreAccount("test_adls")
///             .firewallAllowAzureIps("Enabled")
///             .firewallRules(CreateFirewallRuleWithAccountParametersArgs.builder()
///                 .endIpAddress("2.2.2.2")
///                 .name("test_rule")
///                 .startIpAddress("1.1.1.1")
///                 .build())
///             .firewallState("Enabled")
///             .location("eastus2")
///             .maxDegreeOfParallelism(30)
///             .maxDegreeOfParallelismPerJob(1)
///             .maxJobCount(3)
///             .minPriorityPerJob(1)
///             .newTier("Consumption")
///             .queryStoreRetention(30)
///             .resourceGroupName("contosorg")
///             .storageAccounts(AddStorageAccountWithAccountParametersArgs.builder()
///                 .accessKey("34adfa4f-cedf-4dc0-ba29-b6d1a69ab346")
///                 .name("test_storage")
///                 .suffix("test_suffix")
///                 .build())
///             .tags(Map.of("test_key", "test_value"))
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const account = new azure_native.datalakeanalytics.Account("account", {
///     accountName: "contosoadla",
///     computePolicies: [{
///         maxDegreeOfParallelismPerJob: 1,
///         minPriorityPerJob: 1,
///         name: "test_policy",
///         objectId: "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///         objectType: azure_native.datalakeanalytics.AADObjectType.User,
///     }],
///     dataLakeStoreAccounts: [{
///         name: "test_adls",
///         suffix: "test_suffix",
///     }],
///     defaultDataLakeStoreAccount: "test_adls",
///     firewallAllowAzureIps: azure_native.datalakeanalytics.FirewallAllowAzureIpsState.Enabled,
///     firewallRules: [{
///         endIpAddress: "2.2.2.2",
///         name: "test_rule",
///         startIpAddress: "1.1.1.1",
///     }],
///     firewallState: azure_native.datalakeanalytics.FirewallState.Enabled,
///     location: "eastus2",
///     maxDegreeOfParallelism: 30,
///     maxDegreeOfParallelismPerJob: 1,
///     maxJobCount: 3,
///     minPriorityPerJob: 1,
///     newTier: azure_native.datalakeanalytics.TierType.Consumption,
///     queryStoreRetention: 30,
///     resourceGroupName: "contosorg",
///     storageAccounts: [{
///         accessKey: "34adfa4f-cedf-4dc0-ba29-b6d1a69ab346",
///         name: "test_storage",
///         suffix: "test_suffix",
///     }],
///     tags: {
///         test_key: "test_value",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// account = azure_native.datalakeanalytics.Account("account",
///     account_name="contosoadla",
///     compute_policies=[{
///         "max_degree_of_parallelism_per_job": 1,
///         "min_priority_per_job": 1,
///         "name": "test_policy",
///         "object_id": "34adfa4f-cedf-4dc0-ba29-b6d1a69ab345",
///         "object_type": azure_native.datalakeanalytics.AADObjectType.USER,
///     }],
///     data_lake_store_accounts=[{
///         "name": "test_adls",
///         "suffix": "test_suffix",
///     }],
///     default_data_lake_store_account="test_adls",
///     firewall_allow_azure_ips=azure_native.datalakeanalytics.FirewallAllowAzureIpsState.ENABLED,
///     firewall_rules=[{
///         "end_ip_address": "2.2.2.2",
///         "name": "test_rule",
///         "start_ip_address": "1.1.1.1",
///     }],
///     firewall_state=azure_native.datalakeanalytics.FirewallState.ENABLED,
///     location="eastus2",
///     max_degree_of_parallelism=30,
///     max_degree_of_parallelism_per_job=1,
///     max_job_count=3,
///     min_priority_per_job=1,
///     new_tier=azure_native.datalakeanalytics.TierType.CONSUMPTION,
///     query_store_retention=30,
///     resource_group_name="contosorg",
///     storage_accounts=[{
///         "access_key": "34adfa4f-cedf-4dc0-ba29-b6d1a69ab346",
///         "name": "test_storage",
///         "suffix": "test_suffix",
///     }],
///     tags={
///         "test_key": "test_value",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   account:
///     type: azure-native:datalakeanalytics:Account
///     properties:
///       accountName: contosoadla
///       computePolicies:
///         - maxDegreeOfParallelismPerJob: 1
///           minPriorityPerJob: 1
///           name: test_policy
///           objectId: 34adfa4f-cedf-4dc0-ba29-b6d1a69ab345
///           objectType: User
///       dataLakeStoreAccounts:
///         - name: test_adls
///           suffix: test_suffix
///       defaultDataLakeStoreAccount: test_adls
///       firewallAllowAzureIps: Enabled
///       firewallRules:
///         - endIpAddress: 2.2.2.2
///           name: test_rule
///           startIpAddress: 1.1.1.1
///       firewallState: Enabled
///       location: eastus2
///       maxDegreeOfParallelism: 30
///       maxDegreeOfParallelismPerJob: 1
///       maxJobCount: 3
///       minPriorityPerJob: 1
///       newTier: Consumption
///       queryStoreRetention: 30
///       resourceGroupName: contosorg
///       storageAccounts:
///         - accessKey: 34adfa4f-cedf-4dc0-ba29-b6d1a69ab346
///           name: test_storage
///           suffix: test_suffix
///       tags:
///         test_key: test_value
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:datalakeanalytics:Account test_account /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}
/// ```
class Account extends pulumi.CustomResource {
  /// The unique identifier associated with this Data Lake Analytics account.
  late final pulumi.Output<String> accountId;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The list of compute policies associated with this account.
  late final pulumi.Output<List<ComputePolicyResponse>> computePolicies;
  /// The account creation time.
  late final pulumi.Output<String> creationTime;
  /// The commitment tier in use for the current month.
  late final pulumi.Output<String> currentTier;
  /// The list of Data Lake Store accounts associated with this account.
  late final pulumi.Output<List<DataLakeStoreAccountInformationResponse>> dataLakeStoreAccounts;
  /// The current state of the DebugDataAccessLevel for this account.
  late final pulumi.Output<String> debugDataAccessLevel;
  /// The default Data Lake Store account associated with this account.
  late final pulumi.Output<String> defaultDataLakeStoreAccount;
  /// The type of the default Data Lake Store account associated with this account.
  late final pulumi.Output<String> defaultDataLakeStoreAccountType;
  /// The full CName endpoint for this account.
  late final pulumi.Output<String> endpoint;
  /// The current state of allowing or disallowing IPs originating within Azure through the firewall. If the firewall is disabled, this is not enforced.
  late final pulumi.Output<String?> firewallAllowAzureIps;
  /// The list of firewall rules associated with this account.
  late final pulumi.Output<List<FirewallRuleResponse>> firewallRules;
  /// The current state of the IP address firewall for this account.
  late final pulumi.Output<String?> firewallState;
  /// The list of hiveMetastores associated with this account.
  late final pulumi.Output<List<HiveMetastoreResponse>> hiveMetastores;
  /// The account last modified time.
  late final pulumi.Output<String> lastModifiedTime;
  /// The resource location.
  late final pulumi.Output<String> location;
  /// The maximum supported active jobs under the account at the same time.
  late final pulumi.Output<int> maxActiveJobCountPerUser;
  /// The maximum supported degree of parallelism for this account.
  late final pulumi.Output<int?> maxDegreeOfParallelism;
  /// The maximum supported degree of parallelism per job for this account.
  late final pulumi.Output<int?> maxDegreeOfParallelismPerJob;
  /// The maximum supported jobs running under the account at the same time.
  late final pulumi.Output<int?> maxJobCount;
  /// The maximum supported active jobs under the account at the same time.
  late final pulumi.Output<int> maxJobRunningTimeInMin;
  /// The maximum supported jobs queued under the account at the same time.
  late final pulumi.Output<int> maxQueuedJobCountPerUser;
  /// The minimum supported priority per job for this account.
  late final pulumi.Output<int> minPriorityPerJob;
  /// The resource name.
  late final pulumi.Output<String> name;
  /// The commitment tier for the next month.
  late final pulumi.Output<String?> newTier;
  /// The provisioning status of the Data Lake Analytics account.
  late final pulumi.Output<String> provisioningState;
  /// The list of Data Lake Store accounts associated with this account.
  late final pulumi.Output<List<DataLakeStoreAccountInformationResponse>?> publicDataLakeStoreAccounts;
  /// The number of days that job metadata is retained.
  late final pulumi.Output<int?> queryStoreRetention;
  /// The state of the Data Lake Analytics account.
  late final pulumi.Output<String> state;
  /// The list of Azure Blob Storage accounts associated with this account.
  late final pulumi.Output<List<StorageAccountInformationResponse>> storageAccounts;
  /// The system defined maximum supported degree of parallelism for this account, which restricts the maximum value of parallelism the user can set for the account.
  late final pulumi.Output<int> systemMaxDegreeOfParallelism;
  /// The system defined maximum supported jobs running under the account at the same time, which restricts the maximum number of running jobs the user can set for the account.
  late final pulumi.Output<int> systemMaxJobCount;
  /// The resource tags.
  late final pulumi.Output<Map<String, String>> tags;
  /// The resource type.
  late final pulumi.Output<String> type;
  /// The list of virtualNetwork rules associated with this account.
  late final pulumi.Output<List<VirtualNetworkRuleResponse>> virtualNetworkRules;

  /// Creates a new [Account].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Account]. {@macro pulumi_datalakeanalytics_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Account(
    String name, {
    AccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:datalakeanalytics:Account',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.computePolicies = registerOutput<List<ComputePolicyResponse>>('computePolicies');
    this.creationTime = registerOutput<String>('creationTime');
    this.currentTier = registerOutput<String>('currentTier');
    this.dataLakeStoreAccounts = registerOutput<List<DataLakeStoreAccountInformationResponse>>('dataLakeStoreAccounts');
    this.debugDataAccessLevel = registerOutput<String>('debugDataAccessLevel');
    this.defaultDataLakeStoreAccount = registerOutput<String>('defaultDataLakeStoreAccount');
    this.defaultDataLakeStoreAccountType = registerOutput<String>('defaultDataLakeStoreAccountType');
    this.endpoint = registerOutput<String>('endpoint');
    this.firewallAllowAzureIps = registerOutput<String?>('firewallAllowAzureIps');
    this.firewallRules = registerOutput<List<FirewallRuleResponse>>('firewallRules');
    this.firewallState = registerOutput<String?>('firewallState');
    this.hiveMetastores = registerOutput<List<HiveMetastoreResponse>>('hiveMetastores');
    this.lastModifiedTime = registerOutput<String>('lastModifiedTime');
    this.location = registerOutput<String>('location');
    this.maxActiveJobCountPerUser = registerOutput<int>('maxActiveJobCountPerUser');
    this.maxDegreeOfParallelism = registerOutput<int?>('maxDegreeOfParallelism');
    this.maxDegreeOfParallelismPerJob = registerOutput<int?>('maxDegreeOfParallelismPerJob');
    this.maxJobCount = registerOutput<int?>('maxJobCount');
    this.maxJobRunningTimeInMin = registerOutput<int>('maxJobRunningTimeInMin');
    this.maxQueuedJobCountPerUser = registerOutput<int>('maxQueuedJobCountPerUser');
    this.minPriorityPerJob = registerOutput<int>('minPriorityPerJob');
    this.name = registerOutput<String>('name');
    this.newTier = registerOutput<String?>('newTier');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.publicDataLakeStoreAccounts = registerOutput<List<DataLakeStoreAccountInformationResponse>?>('publicDataLakeStoreAccounts');
    this.queryStoreRetention = registerOutput<int?>('queryStoreRetention');
    this.state = registerOutput<String>('state');
    this.storageAccounts = registerOutput<List<StorageAccountInformationResponse>>('storageAccounts');
    this.systemMaxDegreeOfParallelism = registerOutput<int>('systemMaxDegreeOfParallelism');
    this.systemMaxJobCount = registerOutput<int>('systemMaxJobCount');
    this.tags = registerOutput<Map<String, String>>('tags');
    this.type = registerOutput<String>('type');
    this.virtualNetworkRules = registerOutput<List<VirtualNetworkRuleResponse>>('virtualNetworkRules');
  }
}
