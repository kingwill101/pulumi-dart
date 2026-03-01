import 'package:pulumi/pulumi.dart' as pulumi;
import 'policy_file_share_args.dart';
import 'policy_file_share_backup.dart';
import 'policy_file_share_retention_daily.dart';
import 'policy_file_share_retention_monthly.dart';
import 'policy_file_share_retention_weekly.dart';
import 'policy_file_share_retention_yearly.dart';

/// Manages an Azure File Share Backup Policy within a Recovery Services vault.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "tfex-recovery_vault",
///     location: "West Europe",
/// });
/// const exampleVault = new azure.recoveryservices.Vault("example", {
///     name: "tfex-recovery-vault",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Standard",
/// });
/// const policy = new azure.backup.PolicyFileShare("policy", {
///     name: "tfex-recovery-vault-policy",
///     resourceGroupName: example.name,
///     recoveryVaultName: exampleVault.name,
///     timezone: "UTC",
///     backup: {
///         frequency: "Daily",
///         time: "23:00",
///     },
///     retentionDaily: {
///         count: 10,
///     },
///     retentionWeekly: {
///         count: 7,
///         weekdays: [
///             "Sunday",
///             "Wednesday",
///             "Friday",
///             "Saturday",
///         ],
///     },
///     retentionMonthly: {
///         count: 7,
///         weekdays: [
///             "Sunday",
///             "Wednesday",
///         ],
///         weeks: [
///             "First",
///             "Last",
///         ],
///     },
///     retentionYearly: {
///         count: 7,
///         weekdays: ["Sunday"],
///         weeks: ["Last"],
///         months: ["January"],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="tfex-recovery_vault",
///     location="West Europe")
/// example_vault = azure.recoveryservices.Vault("example",
///     name="tfex-recovery-vault",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Standard")
/// policy = azure.backup.PolicyFileShare("policy",
///     name="tfex-recovery-vault-policy",
///     resource_group_name=example.name,
///     recovery_vault_name=example_vault.name,
///     timezone="UTC",
///     backup={
///         "frequency": "Daily",
///         "time": "23:00",
///     },
///     retention_daily={
///         "count": 10,
///     },
///     retention_weekly={
///         "count": 7,
///         "weekdays": [
///             "Sunday",
///             "Wednesday",
///             "Friday",
///             "Saturday",
///         ],
///     },
///     retention_monthly={
///         "count": 7,
///         "weekdays": [
///             "Sunday",
///             "Wednesday",
///         ],
///         "weeks": [
///             "First",
///             "Last",
///         ],
///     },
///     retention_yearly={
///         "count": 7,
///         "weekdays": ["Sunday"],
///         "weeks": ["Last"],
///         "months": ["January"],
///     })
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
///         Name = "tfex-recovery_vault",
///         Location = "West Europe",
///     });
///
///     var exampleVault = new Azure.RecoveryServices.Vault("example", new()
///     {
///         Name = "tfex-recovery-vault",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Standard",
///     });
///
///     var policy = new Azure.Backup.PolicyFileShare("policy", new()
///     {
///         Name = "tfex-recovery-vault-policy",
///         ResourceGroupName = example.Name,
///         RecoveryVaultName = exampleVault.Name,
///         Timezone = "UTC",
///         Backup = new Azure.Backup.Inputs.PolicyFileShareBackupArgs
///         {
///             Frequency = "Daily",
///             Time = "23:00",
///         },
///         RetentionDaily = new Azure.Backup.Inputs.PolicyFileShareRetentionDailyArgs
///         {
///             Count = 10,
///         },
///         RetentionWeekly = new Azure.Backup.Inputs.PolicyFileShareRetentionWeeklyArgs
///         {
///             Count = 7,
///             Weekdays = new[]
///             {
///                 "Sunday",
///                 "Wednesday",
///                 "Friday",
///                 "Saturday",
///             },
///         },
///         RetentionMonthly = new Azure.Backup.Inputs.PolicyFileShareRetentionMonthlyArgs
///         {
///             Count = 7,
///             Weekdays = new[]
///             {
///                 "Sunday",
///                 "Wednesday",
///             },
///             Weeks = new[]
///             {
///                 "First",
///                 "Last",
///             },
///         },
///         RetentionYearly = new Azure.Backup.Inputs.PolicyFileShareRetentionYearlyArgs
///         {
///             Count = 7,
///             Weekdays = new[]
///             {
///                 "Sunday",
///             },
///             Weeks = new[]
///             {
///                 "Last",
///             },
///             Months = new[]
///             {
///                 "January",
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/backup"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/recoveryservices"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("tfex-recovery_vault"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := recoveryservices.NewVault(ctx, "example", &recoveryservices.VaultArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Standard"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backup.NewPolicyFileShare(ctx, "policy", &backup.PolicyFileShareArgs{
/// 			Name:              pulumi.String("tfex-recovery-vault-policy"),
/// 			ResourceGroupName: example.Name,
/// 			RecoveryVaultName: exampleVault.Name,
/// 			Timezone:          pulumi.String("UTC"),
/// 			Backup: &backup.PolicyFileShareBackupArgs{
/// 				Frequency: pulumi.String("Daily"),
/// 				Time:      pulumi.String("23:00"),
/// 			},
/// 			RetentionDaily: &backup.PolicyFileShareRetentionDailyArgs{
/// 				Count: pulumi.Int(10),
/// 			},
/// 			RetentionWeekly: &backup.PolicyFileShareRetentionWeeklyArgs{
/// 				Count: pulumi.Int(7),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 					pulumi.String("Wednesday"),
/// 					pulumi.String("Friday"),
/// 					pulumi.String("Saturday"),
/// 				},
/// 			},
/// 			RetentionMonthly: &backup.PolicyFileShareRetentionMonthlyArgs{
/// 				Count: pulumi.Int(7),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 					pulumi.String("Wednesday"),
/// 				},
/// 				Weeks: pulumi.StringArray{
/// 					pulumi.String("First"),
/// 					pulumi.String("Last"),
/// 				},
/// 			},
/// 			RetentionYearly: &backup.PolicyFileShareRetentionYearlyArgs{
/// 				Count: pulumi.Int(7),
/// 				Weekdays: pulumi.StringArray{
/// 					pulumi.String("Sunday"),
/// 				},
/// 				Weeks: pulumi.StringArray{
/// 					pulumi.String("Last"),
/// 				},
/// 				Months: pulumi.StringArray{
/// 					pulumi.String("January"),
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
/// import com.pulumi.azure.recoveryservices.Vault;
/// import com.pulumi.azure.recoveryservices.VaultArgs;
/// import com.pulumi.azure.backup.PolicyFileShare;
/// import com.pulumi.azure.backup.PolicyFileShareArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareBackupArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareRetentionDailyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareRetentionWeeklyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareRetentionMonthlyArgs;
/// import com.pulumi.azure.backup.inputs.PolicyFileShareRetentionYearlyArgs;
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
///             .name("tfex-recovery_vault")
///             .location("West Europe")
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .name("tfex-recovery-vault")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Standard")
///             .build());
///
///         var policy = new PolicyFileShare("policy", PolicyFileShareArgs.builder()
///             .name("tfex-recovery-vault-policy")
///             .resourceGroupName(example.name())
///             .recoveryVaultName(exampleVault.name())
///             .timezone("UTC")
///             .backup(PolicyFileShareBackupArgs.builder()
///                 .frequency("Daily")
///                 .time("23:00")
///                 .build())
///             .retentionDaily(PolicyFileShareRetentionDailyArgs.builder()
///                 .count(10)
///                 .build())
///             .retentionWeekly(PolicyFileShareRetentionWeeklyArgs.builder()
///                 .count(7)
///                 .weekdays(
///                     "Sunday",
///                     "Wednesday",
///                     "Friday",
///                     "Saturday")
///                 .build())
///             .retentionMonthly(PolicyFileShareRetentionMonthlyArgs.builder()
///                 .count(7)
///                 .weekdays(
///                     "Sunday",
///                     "Wednesday")
///                 .weeks(
///                     "First",
///                     "Last")
///                 .build())
///             .retentionYearly(PolicyFileShareRetentionYearlyArgs.builder()
///                 .count(7)
///                 .weekdays("Sunday")
///                 .weeks("Last")
///                 .months("January")
///                 .build())
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
///       name: tfex-recovery_vault
///       location: West Europe
///   exampleVault:
///     type: azure:recoveryservices:Vault
///     name: example
///     properties:
///       name: tfex-recovery-vault
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Standard
///   policy:
///     type: azure:backup:PolicyFileShare
///     properties:
///       name: tfex-recovery-vault-policy
///       resourceGroupName: ${example.name}
///       recoveryVaultName: ${exampleVault.name}
///       timezone: UTC
///       backup:
///         frequency: Daily
///         time: 23:00
///       retentionDaily:
///         count: 10
///       retentionWeekly:
///         count: 7
///         weekdays:
///           - Sunday
///           - Wednesday
///           - Friday
///           - Saturday
///       retentionMonthly:
///         count: 7
///         weekdays:
///           - Sunday
///           - Wednesday
///         weeks:
///           - First
///           - Last
///       retentionYearly:
///         count: 7
///         weekdays:
///           - Sunday
///         weeks:
///           - Last
///         months:
///           - January
/// ```
///
///
/// ## Import
///
/// Azure File Share Backup Policies can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:backup/policyFileShare:PolicyFileShare policy1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.RecoveryServices/vaults/example-recovery-vault/backupPolicies/policy1
/// ```
class PolicyFileShare extends pulumi.CustomResource {
  /// Configures the Policy backup frequency and times as documented in the `backup` block below.
  late final pulumi.Output<PolicyFileShareBackup> backup;
  /// The backup tier to use. Possible values are `vault-standard` and `snapshot`. Defaults to `snapshot`.
  ///
  /// > **Note:** When `backup_tier` is set to `vault-standard`, the `snapshot_retention_in_days` value must be less than the `retention_daily` count.
  late final pulumi.Output<String?> backupTier;
  /// Specifies the name of the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the Recovery Services Vault to use. Changing this forces a new resource to be created.
  late final pulumi.Output<String> recoveryVaultName;
  /// The name of the resource group in which to create the policy. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// Configures the policy daily retention as documented in the `retention_daily` block below.
  late final pulumi.Output<PolicyFileShareRetentionDaily> retentionDaily;
  /// Configures the policy monthly retention as documented in the `retention_monthly` block below.
  late final pulumi.Output<PolicyFileShareRetentionMonthly?> retentionMonthly;
  /// Configures the policy weekly retention as documented in the `retention_weekly` block below.
  late final pulumi.Output<PolicyFileShareRetentionWeekly?> retentionWeekly;
  /// Configures the policy yearly retention as documented in the `retention_yearly` block below.
  late final pulumi.Output<PolicyFileShareRetentionYearly?> retentionYearly;
  /// The number of days to retain the snapshots. Defaults to `0`.
  late final pulumi.Output<int?> snapshotRetentionInDays;
  /// Specifies the timezone. [the possible values are defined here](https://jackstromberg.com/2017/01/list-of-time-zones-consumed-by-azure/). Defaults to `UTC`
  ///
  /// > **Note:** The maximum number of snapshots that Azure Files can retain is 200. If your combined snapshot count exceeds 200 based on your retention policies, it will result in an error. See [this](https://docs.microsoft.com/azure/backup/backup-azure-files-faq#what-is-the-maximum-retention-i-can-configure-for-backups) article for more information.
  late final pulumi.Output<String?> timezone;

  /// Creates a new [PolicyFileShare].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PolicyFileShare]. {@macro pulumi_backup_policy_file_share_policy_file_share_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PolicyFileShare(
    String name, {
    PolicyFileShareArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:backup/policyFileShare:PolicyFileShare',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backup = registerOutput<PolicyFileShareBackup>('backup');
    this.backupTier = registerOutput<String?>('backupTier');
    this.name = registerOutput<String>('name');
    this.recoveryVaultName = registerOutput<String>('recoveryVaultName');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.retentionDaily = registerOutput<PolicyFileShareRetentionDaily>('retentionDaily');
    this.retentionMonthly = registerOutput<PolicyFileShareRetentionMonthly?>('retentionMonthly');
    this.retentionWeekly = registerOutput<PolicyFileShareRetentionWeekly?>('retentionWeekly');
    this.retentionYearly = registerOutput<PolicyFileShareRetentionYearly?>('retentionYearly');
    this.snapshotRetentionInDays = registerOutput<int?>('snapshotRetentionInDays');
    this.timezone = registerOutput<String?>('timezone');
  }
}
