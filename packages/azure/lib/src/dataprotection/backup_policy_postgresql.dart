import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_policy_postgresql_args.dart';
import 'backup_policy_postgresql_retention_rule.dart';

/// Manages a Backup Policy to back up PostgreSQL.
///
/// > **Note:** The `azure.dataprotection.BackupPolicyPostgresql` resource has been deprecated because Azure Database for PostgreSQL Single Server has been retired as of 2025-03-28 and will be removed in v5.0 of the AzureRM Provider.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleBackupVault = new azure.dataprotection.BackupVault("example", {
///     name: "example-backup-vault",
///     resourceGroupName: example.name,
///     location: example.location,
///     datastoreType: "VaultStore",
///     redundancy: "LocallyRedundant",
/// });
/// const exampleBackupPolicyPostgresql = new azure.dataprotection.BackupPolicyPostgresql("example", {
///     name: "example-backup-policy",
///     resourceGroupName: example.name,
///     vaultName: exampleBackupVault.name,
///     backupRepeatingTimeIntervals: ["R/2021-05-23T02:30:00+00:00/P1W"],
///     timeZone: "India Standard Time",
///     defaultRetentionDuration: "P4M",
///     retentionRules: [
///         {
///             name: "weekly",
///             duration: "P6M",
///             priority: 20,
///             criteria: {
///                 absoluteCriteria: "FirstOfWeek",
///             },
///         },
///         {
///             name: "thursday",
///             duration: "P1W",
///             priority: 25,
///             criteria: {
///                 daysOfWeeks: ["Thursday"],
///                 scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
///             },
///         },
///         {
///             name: "monthly",
///             duration: "P1D",
///             priority: 15,
///             criteria: {
///                 weeksOfMonths: [
///                     "First",
///                     "Last",
///                 ],
///                 daysOfWeeks: ["Tuesday"],
///                 scheduledBackupTimes: ["2021-05-23T02:30:00Z"],
///             },
///         },
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_backup_vault = azure.dataprotection.BackupVault("example",
///     name="example-backup-vault",
///     resource_group_name=example.name,
///     location=example.location,
///     datastore_type="VaultStore",
///     redundancy="LocallyRedundant")
/// example_backup_policy_postgresql = azure.dataprotection.BackupPolicyPostgresql("example",
///     name="example-backup-policy",
///     resource_group_name=example.name,
///     vault_name=example_backup_vault.name,
///     backup_repeating_time_intervals=["R/2021-05-23T02:30:00+00:00/P1W"],
///     time_zone="India Standard Time",
///     default_retention_duration="P4M",
///     retention_rules=[
///         {
///             "name": "weekly",
///             "duration": "P6M",
///             "priority": 20,
///             "criteria": {
///                 "absolute_criteria": "FirstOfWeek",
///             },
///         },
///         {
///             "name": "thursday",
///             "duration": "P1W",
///             "priority": 25,
///             "criteria": {
///                 "days_of_weeks": ["Thursday"],
///                 "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
///             },
///         },
///         {
///             "name": "monthly",
///             "duration": "P1D",
///             "priority": 15,
///             "criteria": {
///                 "weeks_of_months": [
///                     "First",
///                     "Last",
///                 ],
///                 "days_of_weeks": ["Tuesday"],
///                 "scheduled_backup_times": ["2021-05-23T02:30:00Z"],
///             },
///         },
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleBackupVault = new Azure.DataProtection.BackupVault("example", new()
///     {
///         Name = "example-backup-vault",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         DatastoreType = "VaultStore",
///         Redundancy = "LocallyRedundant",
///     });
///
///     var exampleBackupPolicyPostgresql = new Azure.DataProtection.BackupPolicyPostgresql("example", new()
///     {
///         Name = "example-backup-policy",
///         ResourceGroupName = example.Name,
///         VaultName = exampleBackupVault.Name,
///         BackupRepeatingTimeIntervals = new[]
///         {
///             "R/2021-05-23T02:30:00+00:00/P1W",
///         },
///         TimeZone = "India Standard Time",
///         DefaultRetentionDuration = "P4M",
///         RetentionRules = new[]
///         {
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleArgs
///             {
///                 Name = "weekly",
///                 Duration = "P6M",
///                 Priority = 20,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleCriteriaArgs
///                 {
///                     AbsoluteCriteria = "FirstOfWeek",
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleArgs
///             {
///                 Name = "thursday",
///                 Duration = "P1W",
///                 Priority = 25,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleCriteriaArgs
///                 {
///                     DaysOfWeeks = new[]
///                     {
///                         "Thursday",
///                     },
///                     ScheduledBackupTimes = new[]
///                     {
///                         "2021-05-23T02:30:00Z",
///                     },
///                 },
///             },
///             new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleArgs
///             {
///                 Name = "monthly",
///                 Duration = "P1D",
///                 Priority = 15,
///                 Criteria = new Azure.DataProtection.Inputs.BackupPolicyPostgresqlRetentionRuleCriteriaArgs
///                 {
///                     WeeksOfMonths = new[]
///                     {
///                         "First",
///                         "Last",
///                     },
///                     DaysOfWeeks = new[]
///                     {
///                         "Tuesday",
///                     },
///                     ScheduledBackupTimes = new[]
///                     {
///                         "2021-05-23T02:30:00Z",
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/dataprotection"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleBackupVault, err := dataprotection.NewBackupVault(ctx, "example", &dataprotection.BackupVaultArgs{
/// 			Name:              pulumi.String("example-backup-vault"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			DatastoreType:     pulumi.String("VaultStore"),
/// 			Redundancy:        pulumi.String("LocallyRedundant"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataprotection.NewBackupPolicyPostgresql(ctx, "example", &dataprotection.BackupPolicyPostgresqlArgs{
/// 			Name:              pulumi.String("example-backup-policy"),
/// 			ResourceGroupName: example.Name,
/// 			VaultName:         exampleBackupVault.Name,
/// 			BackupRepeatingTimeIntervals: pulumi.StringArray{
/// 				pulumi.String("R/2021-05-23T02:30:00+00:00/P1W"),
/// 			},
/// 			TimeZone:                 pulumi.String("India Standard Time"),
/// 			DefaultRetentionDuration: pulumi.String("P4M"),
/// 			RetentionRules: dataprotection.BackupPolicyPostgresqlRetentionRuleArray{
/// 				&dataprotection.BackupPolicyPostgresqlRetentionRuleArgs{
/// 					Name:     pulumi.String("weekly"),
/// 					Duration: pulumi.String("P6M"),
/// 					Priority: pulumi.Int(20),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlRetentionRuleCriteriaArgs{
/// 						AbsoluteCriteria: pulumi.String("FirstOfWeek"),
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyPostgresqlRetentionRuleArgs{
/// 					Name:     pulumi.String("thursday"),
/// 					Duration: pulumi.String("P1W"),
/// 					Priority: pulumi.Int(25),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlRetentionRuleCriteriaArgs{
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Thursday"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2021-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 				&dataprotection.BackupPolicyPostgresqlRetentionRuleArgs{
/// 					Name:     pulumi.String("monthly"),
/// 					Duration: pulumi.String("P1D"),
/// 					Priority: pulumi.Int(15),
/// 					Criteria: &dataprotection.BackupPolicyPostgresqlRetentionRuleCriteriaArgs{
/// 						WeeksOfMonths: pulumi.StringArray{
/// 							pulumi.String("First"),
/// 							pulumi.String("Last"),
/// 						},
/// 						DaysOfWeeks: pulumi.StringArray{
/// 							pulumi.String("Tuesday"),
/// 						},
/// 						ScheduledBackupTimes: pulumi.StringArray{
/// 							pulumi.String("2021-05-23T02:30:00Z"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.dataprotection.BackupVault;
/// import com.pulumi.azure.dataprotection.BackupVaultArgs;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresql;
/// import com.pulumi.azure.dataprotection.BackupPolicyPostgresqlArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlRetentionRuleArgs;
/// import com.pulumi.azure.dataprotection.inputs.BackupPolicyPostgresqlRetentionRuleCriteriaArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleBackupVault = new BackupVault("exampleBackupVault", BackupVaultArgs.builder()
///             .name("example-backup-vault")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .datastoreType("VaultStore")
///             .redundancy("LocallyRedundant")
///             .build());
///
///         var exampleBackupPolicyPostgresql = new BackupPolicyPostgresql("exampleBackupPolicyPostgresql", BackupPolicyPostgresqlArgs.builder()
///             .name("example-backup-policy")
///             .resourceGroupName(example.name())
///             .vaultName(exampleBackupVault.name())
///             .backupRepeatingTimeIntervals("R/2021-05-23T02:30:00+00:00/P1W")
///             .timeZone("India Standard Time")
///             .defaultRetentionDuration("P4M")
///             .retentionRules(
///                 BackupPolicyPostgresqlRetentionRuleArgs.builder()
///                     .name("weekly")
///                     .duration("P6M")
///                     .priority(20)
///                     .criteria(BackupPolicyPostgresqlRetentionRuleCriteriaArgs.builder()
///                         .absoluteCriteria("FirstOfWeek")
///                         .build())
///                     .build(),
///                 BackupPolicyPostgresqlRetentionRuleArgs.builder()
///                     .name("thursday")
///                     .duration("P1W")
///                     .priority(25)
///                     .criteria(BackupPolicyPostgresqlRetentionRuleCriteriaArgs.builder()
///                         .daysOfWeeks("Thursday")
///                         .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                         .build())
///                     .build(),
///                 BackupPolicyPostgresqlRetentionRuleArgs.builder()
///                     .name("monthly")
///                     .duration("P1D")
///                     .priority(15)
///                     .criteria(BackupPolicyPostgresqlRetentionRuleCriteriaArgs.builder()
///                         .weeksOfMonths(
///                             "First",
///                             "Last")
///                         .daysOfWeeks("Tuesday")
///                         .scheduledBackupTimes("2021-05-23T02:30:00Z")
///                         .build())
///                     .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleBackupVault:
///     type: azure:dataprotection:BackupVault
///     name: example
///     properties:
///       name: example-backup-vault
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       datastoreType: VaultStore
///       redundancy: LocallyRedundant
///   exampleBackupPolicyPostgresql:
///     type: azure:dataprotection:BackupPolicyPostgresql
///     name: example
///     properties:
///       name: example-backup-policy
///       resourceGroupName: ${example.name}
///       vaultName: ${exampleBackupVault.name}
///       backupRepeatingTimeIntervals:
///         - R/2021-05-23T02:30:00+00:00/P1W
///       timeZone: India Standard Time
///       defaultRetentionDuration: P4M
///       retentionRules:
///         - name: weekly
///           duration: P6M
///           priority: 20
///           criteria:
///             absoluteCriteria: FirstOfWeek
///         - name: thursday
///           duration: P1W
///           priority: 25
///           criteria:
///             daysOfWeeks:
///               - Thursday
///             scheduledBackupTimes:
///               - 2021-05-23T02:30:00Z
///         - name: monthly
///           duration: P1D
///           priority: 15
///           criteria:
///             weeksOfMonths:
///               - First
///               - Last
///             daysOfWeeks:
///               - Tuesday
///             scheduledBackupTimes:
///               - 2021-05-23T02:30:00Z
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.DataProtection` - 2024-04-01
///
/// ## Import
///
/// Backup Policy PostgreSQL's can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:dataprotection/backupPolicyPostgresql:BackupPolicyPostgresql example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.DataProtection/backupVaults/vault1/backupPolicies/backupPolicy1
/// ```
class BackupPolicyPostgresql extends pulumi.CustomResource {
  /// Specifies a list of repeating time interval. It supports weekly back. It should follow `ISO 8601` repeating time interval. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<List<String>> backupRepeatingTimeIntervals;
  /// The duration of default retention rule. It should follow `ISO 8601` duration format. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<String> defaultRetentionDuration;
  /// The name which should be used for this Backup Policy PostgreSQL. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<String> name;
  /// The name of the Resource Group where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// One or more `retention_rule` blocks as defined below. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<List<BackupPolicyPostgresqlRetentionRule>?> retentionRules;
  /// Specifies the Time Zone which should be used by the backup schedule. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<String?> timeZone;
  /// The name of the Backup Vault where the Backup Policy PostgreSQL should exist. Changing this forces a new Backup Policy PostgreSQL to be created.
  late final pulumi.Output<String> vaultName;

  /// Creates a new [BackupPolicyPostgresql].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPolicyPostgresql]. {@macro pulumi_dataprotection_backup_policy_postgresql_backup_policy_postgresql_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPolicyPostgresql(
    String name, {
    BackupPolicyPostgresqlArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:dataprotection/backupPolicyPostgresql:BackupPolicyPostgresql',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupRepeatingTimeIntervals = registerOutput<List<String>>('backupRepeatingTimeIntervals');
    this.defaultRetentionDuration = registerOutput<String>('defaultRetentionDuration');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionRules = registerOutput<List<BackupPolicyPostgresqlRetentionRule>?>('retentionRules');
    this.timeZone = registerOutput<String?>('timeZone');
    this.vaultName = registerOutput<String>('vaultName');
  }
}
