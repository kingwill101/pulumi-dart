import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_args.dart';
import 'backup_policy_response.dart';
import 'system_data_response.dart';

/// BaseBackupPolicy resource
///
/// Uses Azure REST API version 2025-01-01. In version 2.x of the Azure Native provider, it used API version 2023-01-01.
///
/// Other available API versions: 2023-01-01, 2023-04-01-preview, 2023-05-01, 2023-06-01-preview, 2023-08-01-preview, 2023-11-01, 2023-12-01, 2024-02-01-preview, 2024-03-01, 2024-04-01, 2025-02-01, 2025-07-01, 2025-09-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native dataprotection [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### CreateOrUpdate BackupPolicy
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var backupPolicy = new AzureNative.DataProtection.BackupPolicy("backupPolicy", new()
///     {
///         BackupPolicyName = "OSSDBPolicy",
///         Properties = new AzureNative.DataProtection.Inputs.BackupPolicyArgs
///         {
///             DatasourceTypes = new[]
///             {
///                 "OssDB",
///             },
///             ObjectType = "BackupPolicy",
///             PolicyRules =
///             {
///                 new AzureNative.DataProtection.Inputs.AzureBackupRuleArgs
///                 {
///                     BackupParameters = new AzureNative.DataProtection.Inputs.AzureBackupParamsArgs
///                     {
///                         BackupType = "Full",
///                         ObjectType = "AzureBackupParams",
///                     },
///                     DataStore = new AzureNative.DataProtection.Inputs.DataStoreInfoBaseArgs
///                     {
///                         DataStoreType = AzureNative.DataProtection.DataStoreTypes.VaultStore,
///                         ObjectType = "DataStoreInfoBase",
///                     },
///                     Name = "BackupWeekly",
///                     ObjectType = "AzureBackupRule",
///                     Trigger = new AzureNative.DataProtection.Inputs.ScheduleBasedTriggerContextArgs
///                     {
///                         ObjectType = "ScheduleBasedTriggerContext",
///                         Schedule = new AzureNative.DataProtection.Inputs.BackupScheduleArgs
///                         {
///                             RepeatingTimeIntervals = new[]
///                             {
///                                 "R/2019-11-20T08:00:00-08:00/P1W",
///                             },
///                         },
///                         TaggingCriteria = new[]
///                         {
///                             new AzureNative.DataProtection.Inputs.TaggingCriteriaArgs
///                             {
///                                 IsDefault = true,
///                                 TagInfo = new AzureNative.DataProtection.Inputs.RetentionTagArgs
///                                 {
///                                     TagName = "Default",
///                                 },
///                                 TaggingPriority = 99,
///                             },
///                             new AzureNative.DataProtection.Inputs.TaggingCriteriaArgs
///                             {
///                                 Criteria = new[]
///                                 {
///                                     new AzureNative.DataProtection.Inputs.ScheduleBasedBackupCriteriaArgs
///                                     {
///                                         DaysOfTheWeek = new[]
///                                         {
///                                             AzureNative.DataProtection.DayOfWeek.Sunday,
///                                         },
///                                         ObjectType = "ScheduleBasedBackupCriteria",
///                                         ScheduleTimes = new[]
///                                         {
///                                             "2019-03-01T13:00:00Z",
///                                         },
///                                     },
///                                 },
///                                 IsDefault = false,
///                                 TagInfo = new AzureNative.DataProtection.Inputs.RetentionTagArgs
///                                 {
///                                     TagName = "Weekly",
///                                 },
///                                 TaggingPriority = 20,
///                             },
///                         },
///                     },
///                 },
///                 new AzureNative.DataProtection.Inputs.AzureRetentionRuleArgs
///                 {
///                     IsDefault = true,
///                     Lifecycles = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.SourceLifeCycleArgs
///                         {
///                             DeleteAfter = new AzureNative.DataProtection.Inputs.AbsoluteDeleteOptionArgs
///                             {
///                                 Duration = "P1W",
///                                 ObjectType = "AbsoluteDeleteOption",
///                             },
///                             SourceDataStore = new AzureNative.DataProtection.Inputs.DataStoreInfoBaseArgs
///                             {
///                                 DataStoreType = AzureNative.DataProtection.DataStoreTypes.VaultStore,
///                                 ObjectType = "DataStoreInfoBase",
///                             },
///                         },
///                     },
///                     Name = "Default",
///                     ObjectType = "AzureRetentionRule",
///                 },
///                 new AzureNative.DataProtection.Inputs.AzureRetentionRuleArgs
///                 {
///                     IsDefault = false,
///                     Lifecycles = new[]
///                     {
///                         new AzureNative.DataProtection.Inputs.SourceLifeCycleArgs
///                         {
///                             DeleteAfter = new AzureNative.DataProtection.Inputs.AbsoluteDeleteOptionArgs
///                             {
///                                 Duration = "P12W",
///                                 ObjectType = "AbsoluteDeleteOption",
///                             },
///                             SourceDataStore = new AzureNative.DataProtection.Inputs.DataStoreInfoBaseArgs
///                             {
///                                 DataStoreType = AzureNative.DataProtection.DataStoreTypes.VaultStore,
///                                 ObjectType = "DataStoreInfoBase",
///                             },
///                         },
///                     },
///                     Name = "Weekly",
///                     ObjectType = "AzureRetentionRule",
///                 },
///             },
///         },
///         ResourceGroupName = "000pikumar",
///         VaultName = "PrivatePreviewVault",
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
/// 	dataprotection "github.com/pulumi/pulumi-azure-native-sdk/dataprotection/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataprotection.NewBackupPolicy(ctx, "backupPolicy", &dataprotection.BackupPolicyArgs{
/// 			BackupPolicyName: pulumi.String("OSSDBPolicy"),
/// 			Properties: &dataprotection.BackupPolicyTypeArgs{
/// 				DatasourceTypes: pulumi.StringArray{
/// 					pulumi.String("OssDB"),
/// 				},
/// 				ObjectType: pulumi.String("BackupPolicy"),
/// 				PolicyRules: pulumi.Array{
/// 					dataprotection.AzureBackupRule{
/// 						BackupParameters: dataprotection.AzureBackupParams{
/// 							BackupType: "Full",
/// 							ObjectType: "AzureBackupParams",
/// 						},
/// 						DataStore: dataprotection.DataStoreInfoBase{
/// 							DataStoreType: dataprotection.DataStoreTypesVaultStore,
/// 							ObjectType:    "DataStoreInfoBase",
/// 						},
/// 						Name:       "BackupWeekly",
/// 						ObjectType: "AzureBackupRule",
/// 						Trigger: dataprotection.ScheduleBasedTriggerContext{
/// 							ObjectType: "ScheduleBasedTriggerContext",
/// 							Schedule: dataprotection.BackupSchedule{
/// 								RepeatingTimeIntervals: []string{
/// 									"R/2019-11-20T08:00:00-08:00/P1W",
/// 								},
/// 							},
/// 							TaggingCriteria: []dataprotection.TaggingCriteria{
/// 								{
/// 									IsDefault: true,
/// 									TagInfo: {
/// 										TagName: "Default",
/// 									},
/// 									TaggingPriority: 99,
/// 								},
/// 								{
/// 									Criteria: []dataprotection.ScheduleBasedBackupCriteria{
/// 										{
/// 											DaysOfTheWeek: []dataprotection.DayOfWeek{
/// 												dataprotection.DayOfWeekSunday,
/// 											},
/// 											ObjectType: "ScheduleBasedBackupCriteria",
/// 											ScheduleTimes: []string{
/// 												"2019-03-01T13:00:00Z",
/// 											},
/// 										},
/// 									},
/// 									IsDefault: false,
/// 									TagInfo: {
/// 										TagName: "Weekly",
/// 									},
/// 									TaggingPriority: 20,
/// 								},
/// 							},
/// 						},
/// 					},
/// 					dataprotection.AzureRetentionRule{
/// 						IsDefault: true,
/// 						Lifecycles: []dataprotection.SourceLifeCycle{
/// 							{
/// 								DeleteAfter: {
/// 									Duration:   "P1W",
/// 									ObjectType: "AbsoluteDeleteOption",
/// 								},
/// 								SourceDataStore: {
/// 									DataStoreType: dataprotection.DataStoreTypesVaultStore,
/// 									ObjectType:    "DataStoreInfoBase",
/// 								},
/// 							},
/// 						},
/// 						Name:       "Default",
/// 						ObjectType: "AzureRetentionRule",
/// 					},
/// 					dataprotection.AzureRetentionRule{
/// 						IsDefault: false,
/// 						Lifecycles: []dataprotection.SourceLifeCycle{
/// 							{
/// 								DeleteAfter: {
/// 									Duration:   "P12W",
/// 									ObjectType: "AbsoluteDeleteOption",
/// 								},
/// 								SourceDataStore: {
/// 									DataStoreType: dataprotection.DataStoreTypesVaultStore,
/// 									ObjectType:    "DataStoreInfoBase",
/// 								},
/// 							},
/// 						},
/// 						Name:       "Weekly",
/// 						ObjectType: "AzureRetentionRule",
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("000pikumar"),
/// 			VaultName:         pulumi.String("PrivatePreviewVault"),
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
/// import com.pulumi.azurenative.dataprotection.BackupPolicy;
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
///         var backupPolicy = new BackupPolicy("backupPolicy", BackupPolicyArgs.builder()
///             .backupPolicyName("OSSDBPolicy")
///             .properties(BackupPolicyArgs.builder()
///                 .datasourceTypes("OssDB")
///                 .objectType("BackupPolicy")
///                 .policyRules(
///                     AzureBackupRuleArgs.builder()
///                         .backupParameters(AzureBackupParamsArgs.builder()
///                             .backupType("Full")
///                             .objectType("AzureBackupParams")
///                             .build())
///                         .dataStore(DataStoreInfoBaseArgs.builder()
///                             .dataStoreType("VaultStore")
///                             .objectType("DataStoreInfoBase")
///                             .build())
///                         .name("BackupWeekly")
///                         .objectType("AzureBackupRule")
///                         .trigger(ScheduleBasedTriggerContextArgs.builder()
///                             .objectType("ScheduleBasedTriggerContext")
///                             .schedule(BackupScheduleArgs.builder()
///                                 .repeatingTimeIntervals("R/2019-11-20T08:00:00-08:00/P1W")
///                                 .build())
///                             .taggingCriteria(
///                                 TaggingCriteriaArgs.builder()
///                                     .isDefault(true)
///                                     .tagInfo(RetentionTagArgs.builder()
///                                         .tagName("Default")
///                                         .build())
///                                     .taggingPriority(99)
///                                     .build(),
///                                 TaggingCriteriaArgs.builder()
///                                     .criteria(ScheduleBasedBackupCriteriaArgs.builder()
///                                         .daysOfTheWeek("Sunday")
///                                         .objectType("ScheduleBasedBackupCriteria")
///                                         .scheduleTimes("2019-03-01T13:00:00Z")
///                                         .build())
///                                     .isDefault(false)
///                                     .tagInfo(RetentionTagArgs.builder()
///                                         .tagName("Weekly")
///                                         .build())
///                                     .taggingPriority(20)
///                                     .build())
///                             .build())
///                         .build(),
///                     AzureRetentionRuleArgs.builder()
///                         .isDefault(true)
///                         .lifecycles(SourceLifeCycleArgs.builder()
///                             .deleteAfter(AbsoluteDeleteOptionArgs.builder()
///                                 .duration("P1W")
///                                 .objectType("AbsoluteDeleteOption")
///                                 .build())
///                             .sourceDataStore(DataStoreInfoBaseArgs.builder()
///                                 .dataStoreType("VaultStore")
///                                 .objectType("DataStoreInfoBase")
///                                 .build())
///                             .build())
///                         .name("Default")
///                         .objectType("AzureRetentionRule")
///                         .build(),
///                     AzureRetentionRuleArgs.builder()
///                         .isDefault(false)
///                         .lifecycles(SourceLifeCycleArgs.builder()
///                             .deleteAfter(AbsoluteDeleteOptionArgs.builder()
///                                 .duration("P12W")
///                                 .objectType("AbsoluteDeleteOption")
///                                 .build())
///                             .sourceDataStore(DataStoreInfoBaseArgs.builder()
///                                 .dataStoreType("VaultStore")
///                                 .objectType("DataStoreInfoBase")
///                                 .build())
///                             .build())
///                         .name("Weekly")
///                         .objectType("AzureRetentionRule")
///                         .build())
///                 .build())
///             .resourceGroupName("000pikumar")
///             .vaultName("PrivatePreviewVault")
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
/// const backupPolicy = new azure_native.dataprotection.BackupPolicy("backupPolicy", {
///     backupPolicyName: "OSSDBPolicy",
///     properties: {
///         datasourceTypes: ["OssDB"],
///         objectType: "BackupPolicy",
///         policyRules: [
///             {
///                 backupParameters: {
///                     backupType: "Full",
///                     objectType: "AzureBackupParams",
///                 },
///                 dataStore: {
///                     dataStoreType: azure_native.dataprotection.DataStoreTypes.VaultStore,
///                     objectType: "DataStoreInfoBase",
///                 },
///                 name: "BackupWeekly",
///                 objectType: "AzureBackupRule",
///                 trigger: {
///                     objectType: "ScheduleBasedTriggerContext",
///                     schedule: {
///                         repeatingTimeIntervals: ["R/2019-11-20T08:00:00-08:00/P1W"],
///                     },
///                     taggingCriteria: [
///                         {
///                             isDefault: true,
///                             tagInfo: {
///                                 tagName: "Default",
///                             },
///                             taggingPriority: 99,
///                         },
///                         {
///                             criteria: [{
///                                 daysOfTheWeek: [azure_native.dataprotection.DayOfWeek.Sunday],
///                                 objectType: "ScheduleBasedBackupCriteria",
///                                 scheduleTimes: ["2019-03-01T13:00:00Z"],
///                             }],
///                             isDefault: false,
///                             tagInfo: {
///                                 tagName: "Weekly",
///                             },
///                             taggingPriority: 20,
///                         },
///                     ],
///                 },
///             },
///             {
///                 isDefault: true,
///                 lifecycles: [{
///                     deleteAfter: {
///                         duration: "P1W",
///                         objectType: "AbsoluteDeleteOption",
///                     },
///                     sourceDataStore: {
///                         dataStoreType: azure_native.dataprotection.DataStoreTypes.VaultStore,
///                         objectType: "DataStoreInfoBase",
///                     },
///                 }],
///                 name: "Default",
///                 objectType: "AzureRetentionRule",
///             },
///             {
///                 isDefault: false,
///                 lifecycles: [{
///                     deleteAfter: {
///                         duration: "P12W",
///                         objectType: "AbsoluteDeleteOption",
///                     },
///                     sourceDataStore: {
///                         dataStoreType: azure_native.dataprotection.DataStoreTypes.VaultStore,
///                         objectType: "DataStoreInfoBase",
///                     },
///                 }],
///                 name: "Weekly",
///                 objectType: "AzureRetentionRule",
///             },
///         ],
///     },
///     resourceGroupName: "000pikumar",
///     vaultName: "PrivatePreviewVault",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// backup_policy = azure_native.dataprotection.BackupPolicy("backupPolicy",
///     backup_policy_name="OSSDBPolicy",
///     properties={
///         "datasource_types": ["OssDB"],
///         "object_type": "BackupPolicy",
///         "policy_rules": [
///             {
///                 "backup_parameters": {
///                     "backup_type": "Full",
///                     "object_type": "AzureBackupParams",
///                 },
///                 "data_store": {
///                     "data_store_type": azure_native.dataprotection.DataStoreTypes.VAULT_STORE,
///                     "object_type": "DataStoreInfoBase",
///                 },
///                 "name": "BackupWeekly",
///                 "object_type": "AzureBackupRule",
///                 "trigger": {
///                     "object_type": "ScheduleBasedTriggerContext",
///                     "schedule": {
///                         "repeating_time_intervals": ["R/2019-11-20T08:00:00-08:00/P1W"],
///                     },
///                     "tagging_criteria": [
///                         {
///                             "is_default": True,
///                             "tag_info": {
///                                 "tag_name": "Default",
///                             },
///                             "tagging_priority": 99,
///                         },
///                         {
///                             "criteria": [{
///                                 "days_of_the_week": [azure_native.dataprotection.DayOfWeek.SUNDAY],
///                                 "object_type": "ScheduleBasedBackupCriteria",
///                                 "schedule_times": ["2019-03-01T13:00:00Z"],
///                             }],
///                             "is_default": False,
///                             "tag_info": {
///                                 "tag_name": "Weekly",
///                             },
///                             "tagging_priority": 20,
///                         },
///                     ],
///                 },
///             },
///             {
///                 "is_default": True,
///                 "lifecycles": [{
///                     "delete_after": {
///                         "duration": "P1W",
///                         "object_type": "AbsoluteDeleteOption",
///                     },
///                     "source_data_store": {
///                         "data_store_type": azure_native.dataprotection.DataStoreTypes.VAULT_STORE,
///                         "object_type": "DataStoreInfoBase",
///                     },
///                 }],
///                 "name": "Default",
///                 "object_type": "AzureRetentionRule",
///             },
///             {
///                 "is_default": False,
///                 "lifecycles": [{
///                     "delete_after": {
///                         "duration": "P12W",
///                         "object_type": "AbsoluteDeleteOption",
///                     },
///                     "source_data_store": {
///                         "data_store_type": azure_native.dataprotection.DataStoreTypes.VAULT_STORE,
///                         "object_type": "DataStoreInfoBase",
///                     },
///                 }],
///                 "name": "Weekly",
///                 "object_type": "AzureRetentionRule",
///             },
///         ],
///     },
///     resource_group_name="000pikumar",
///     vault_name="PrivatePreviewVault")
///
/// ```
///
/// ```yaml
/// resources:
///   backupPolicy:
///     type: azure-native:dataprotection:BackupPolicy
///     properties:
///       backupPolicyName: OSSDBPolicy
///       properties:
///         datasourceTypes:
///           - OssDB
///         objectType: BackupPolicy
///         policyRules:
///           - backupParameters:
///               backupType: Full
///               objectType: AzureBackupParams
///             dataStore:
///               dataStoreType: VaultStore
///               objectType: DataStoreInfoBase
///             name: BackupWeekly
///             objectType: AzureBackupRule
///             trigger:
///               objectType: ScheduleBasedTriggerContext
///               schedule:
///                 repeatingTimeIntervals:
///                   - R/2019-11-20T08:00:00-08:00/P1W
///               taggingCriteria:
///                 - isDefault: true
///                   tagInfo:
///                     tagName: Default
///                   taggingPriority: 99
///                 - criteria:
///                     - daysOfTheWeek:
///                         - Sunday
///                       objectType: ScheduleBasedBackupCriteria
///                       scheduleTimes:
///                         - 2019-03-01T13:00:00Z
///                   isDefault: false
///                   tagInfo:
///                     tagName: Weekly
///                   taggingPriority: 20
///           - isDefault: true
///             lifecycles:
///               - deleteAfter:
///                   duration: P1W
///                   objectType: AbsoluteDeleteOption
///                 sourceDataStore:
///                   dataStoreType: VaultStore
///                   objectType: DataStoreInfoBase
///             name: Default
///             objectType: AzureRetentionRule
///           - isDefault: false
///             lifecycles:
///               - deleteAfter:
///                   duration: P12W
///                   objectType: AbsoluteDeleteOption
///                 sourceDataStore:
///                   dataStoreType: VaultStore
///                   objectType: DataStoreInfoBase
///             name: Weekly
///             objectType: AzureRetentionRule
///       resourceGroupName: 000pikumar
///       vaultName: PrivatePreviewVault
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
/// $ pulumi import azure-native:dataprotection:BackupPolicy OSSDBPolicy /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataProtection/backupVaults/{vaultName}/backupPolicies/{backupPolicyName}
/// ```
class BackupPolicyDataprotection extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource name associated with the resource.
  late final pulumi.Output<String> name;

  /// BaseBackupPolicyResource properties
  late final pulumi.Output<BackupPolicyResponse> properties;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource type represents the complete path of the form Namespace/ResourceType/ResourceType/...
  late final pulumi.Output<String> type;

  /// Creates a new [BackupPolicyDataprotection].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyDataprotection]. {@macro pulumi_dataprotection_backup_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyDataprotection(
    String name, {
    BackupPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:dataprotection:BackupPolicy',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<BackupPolicyResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return BackupPolicyResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
