import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_association_args.dart';
import 'backup_plan_association_rules_config_info.dart';

/// A Backup and DR BackupPlanAssociation.
///
///
/// To get more information about BackupPlanAssociation, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Bpa
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const mySA = new gcp.serviceaccount.Account("mySA", {
///     accountId: "my-custom",
///     displayName: "Custom SA for VM Instance",
/// });
/// const myinstance = new gcp.compute.Instance("myinstance", {
///     networkInterfaces: [{
///         accessConfigs: [{}],
///         network: "default",
///     }],
///     name: "test-instance",
///     machineType: "n2-standard-2",
///     zone: "us-central1-a",
///     bootDisk: {
///         initializeParams: {
///             image: "debian-cloud/debian-11",
///             labels: {
///                 my_label: "value",
///             },
///         },
///     },
///     scratchDisks: [{
///         "interface": "NVME",
///     }],
///     serviceAccount: {
///         email: mySA.email,
///         scopes: ["cloud-platform"],
///     },
/// });
/// const bv1 = new gcp.backupdisasterrecovery.BackupVault("bv1", {
///     location: "us-central1",
///     backupVaultId: "bv-bpa",
///     backupMinimumEnforcedRetentionDuration: "100000s",
///     forceDelete: true,
/// });
/// const bp1 = new gcp.backupdisasterrecovery.BackupPlan("bp1", {
///     location: "us-central1",
///     backupPlanId: "bp-bpa-test",
///     resourceType: "compute.googleapis.com/Instance",
///     backupVault: bv1.id,
///     backupRules: [{
///         ruleId: "rule-1",
///         backupRetentionDays: 2,
///         standardSchedule: {
///             recurrenceType: "HOURLY",
///             hourlyFrequency: 6,
///             timeZone: "UTC",
///             backupWindow: {
///                 startHourOfDay: 12,
///                 endHourOfDay: 18,
///             },
///         },
///     }],
/// });
/// const my_backup_plan_association = new gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association", {
///     location: "us-central1",
///     resourceType: "compute.googleapis.com/Instance",
///     backupPlanAssociationId: "my-bpa",
///     resource: myinstance.id,
///     backupPlan: bp1.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_sa = gcp.serviceaccount.Account("mySA",
///     account_id="my-custom",
///     display_name="Custom SA for VM Instance")
/// myinstance = gcp.compute.Instance("myinstance",
///     network_interfaces=[{
///         "access_configs": [{}],
///         "network": "default",
///     }],
///     name="test-instance",
///     machine_type="n2-standard-2",
///     zone="us-central1-a",
///     boot_disk={
///         "initialize_params": {
///             "image": "debian-cloud/debian-11",
///             "labels": {
///                 "my_label": "value",
///             },
///         },
///     },
///     scratch_disks=[{
///         "interface": "NVME",
///     }],
///     service_account={
///         "email": my_sa.email,
///         "scopes": ["cloud-platform"],
///     })
/// bv1 = gcp.backupdisasterrecovery.BackupVault("bv1",
///     location="us-central1",
///     backup_vault_id="bv-bpa",
///     backup_minimum_enforced_retention_duration="100000s",
///     force_delete=True)
/// bp1 = gcp.backupdisasterrecovery.BackupPlan("bp1",
///     location="us-central1",
///     backup_plan_id="bp-bpa-test",
///     resource_type="compute.googleapis.com/Instance",
///     backup_vault=bv1.id,
///     backup_rules=[{
///         "rule_id": "rule-1",
///         "backup_retention_days": 2,
///         "standard_schedule": {
///             "recurrence_type": "HOURLY",
///             "hourly_frequency": 6,
///             "time_zone": "UTC",
///             "backup_window": {
///                 "start_hour_of_day": 12,
///                 "end_hour_of_day": 18,
///             },
///         },
///     }])
/// my_backup_plan_association = gcp.backupdisasterrecovery.BackupPlanAssociation("my-backup-plan-association",
///     location="us-central1",
///     resource_type="compute.googleapis.com/Instance",
///     backup_plan_association_id="my-bpa",
///     resource=myinstance.id,
///     backup_plan=bp1.name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var mySA = new Gcp.ServiceAccount.Account("mySA", new()
///     {
///         AccountId = "my-custom",
///         DisplayName = "Custom SA for VM Instance",
///     });
///
///     var myinstance = new Gcp.Compute.Instance("myinstance", new()
///     {
///         NetworkInterfaces = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceNetworkInterfaceArgs
///             {
///                 AccessConfigs = new[]
///                 {
///                     null,
///                 },
///                 Network = "default",
///             },
///         },
///         Name = "test-instance",
///         MachineType = "n2-standard-2",
///         Zone = "us-central1-a",
///         BootDisk = new Gcp.Compute.Inputs.InstanceBootDiskArgs
///         {
///             InitializeParams = new Gcp.Compute.Inputs.InstanceBootDiskInitializeParamsArgs
///             {
///                 Image = "debian-cloud/debian-11",
///                 Labels =
///                 {
///                     { "my_label", "value" },
///                 },
///             },
///         },
///         ScratchDisks = new[]
///         {
///             new Gcp.Compute.Inputs.InstanceScratchDiskArgs
///             {
///                 Interface = "NVME",
///             },
///         },
///         ServiceAccount = new Gcp.Compute.Inputs.InstanceServiceAccountArgs
///         {
///             Email = mySA.Email,
///             Scopes = new[]
///             {
///                 "cloud-platform",
///             },
///         },
///     });
///
///     var bv1 = new Gcp.BackupDisasterRecovery.BackupVault("bv1", new()
///     {
///         Location = "us-central1",
///         BackupVaultId = "bv-bpa",
///         BackupMinimumEnforcedRetentionDuration = "100000s",
///         ForceDelete = true,
///     });
///
///     var bp1 = new Gcp.BackupDisasterRecovery.BackupPlan("bp1", new()
///     {
///         Location = "us-central1",
///         BackupPlanId = "bp-bpa-test",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupVault = bv1.Id,
///         BackupRules = new[]
///         {
///             new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleArgs
///             {
///                 RuleId = "rule-1",
///                 BackupRetentionDays = 2,
///                 StandardSchedule = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleArgs
///                 {
///                     RecurrenceType = "HOURLY",
///                     HourlyFrequency = 6,
///                     TimeZone = "UTC",
///                     BackupWindow = new Gcp.BackupDisasterRecovery.Inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs
///                     {
///                         StartHourOfDay = 12,
///                         EndHourOfDay = 18,
///                     },
///                 },
///             },
///         },
///     });
///
///     var my_backup_plan_association = new Gcp.BackupDisasterRecovery.BackupPlanAssociation("my-backup-plan-association", new()
///     {
///         Location = "us-central1",
///         ResourceType = "compute.googleapis.com/Instance",
///         BackupPlanAssociationId = "my-bpa",
///         Resource = myinstance.Id,
///         BackupPlan = bp1.Name,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/backupdisasterrecovery"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/compute"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		mySA, err := serviceaccount.NewAccount(ctx, "mySA", &serviceaccount.AccountArgs{
/// 			AccountId:   pulumi.String("my-custom"),
/// 			DisplayName: pulumi.String("Custom SA for VM Instance"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		myinstance, err := compute.NewInstance(ctx, "myinstance", &compute.InstanceArgs{
/// 			NetworkInterfaces: compute.InstanceNetworkInterfaceArray{
/// 				&compute.InstanceNetworkInterfaceArgs{
/// 					AccessConfigs: compute.InstanceNetworkInterfaceAccessConfigArray{
/// 						&compute.InstanceNetworkInterfaceAccessConfigArgs{},
/// 					},
/// 					Network: pulumi.String("default"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("test-instance"),
/// 			MachineType: pulumi.String("n2-standard-2"),
/// 			Zone:        pulumi.String("us-central1-a"),
/// 			BootDisk: &compute.InstanceBootDiskArgs{
/// 				InitializeParams: &compute.InstanceBootDiskInitializeParamsArgs{
/// 					Image: pulumi.String("debian-cloud/debian-11"),
/// 					Labels: pulumi.StringMap{
/// 						"my_label": pulumi.String("value"),
/// 					},
/// 				},
/// 			},
/// 			ScratchDisks: compute.InstanceScratchDiskArray{
/// 				&compute.InstanceScratchDiskArgs{
/// 					Interface: pulumi.String("NVME"),
/// 				},
/// 			},
/// 			ServiceAccount: &compute.InstanceServiceAccountArgs{
/// 				Email: mySA.Email,
/// 				Scopes: pulumi.StringArray{
/// 					pulumi.String("cloud-platform"),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bv1, err := backupdisasterrecovery.NewBackupVault(ctx, "bv1", &backupdisasterrecovery.BackupVaultArgs{
/// 			Location:                               pulumi.String("us-central1"),
/// 			BackupVaultId:                          pulumi.String("bv-bpa"),
/// 			BackupMinimumEnforcedRetentionDuration: pulumi.String("100000s"),
/// 			ForceDelete:                            pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bp1, err := backupdisasterrecovery.NewBackupPlan(ctx, "bp1", &backupdisasterrecovery.BackupPlanArgs{
/// 			Location:     pulumi.String("us-central1"),
/// 			BackupPlanId: pulumi.String("bp-bpa-test"),
/// 			ResourceType: pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupVault:  bv1.ID(),
/// 			BackupRules: backupdisasterrecovery.BackupPlanBackupRuleArray{
/// 				&backupdisasterrecovery.BackupPlanBackupRuleArgs{
/// 					RuleId:              pulumi.String("rule-1"),
/// 					BackupRetentionDays: pulumi.Int(2),
/// 					StandardSchedule: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleArgs{
/// 						RecurrenceType:  pulumi.String("HOURLY"),
/// 						HourlyFrequency: pulumi.Int(6),
/// 						TimeZone:        pulumi.String("UTC"),
/// 						BackupWindow: &backupdisasterrecovery.BackupPlanBackupRuleStandardScheduleBackupWindowArgs{
/// 							StartHourOfDay: pulumi.Int(12),
/// 							EndHourOfDay:   pulumi.Int(18),
/// 						},
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = backupdisasterrecovery.NewBackupPlanAssociation(ctx, "my-backup-plan-association", &backupdisasterrecovery.BackupPlanAssociationArgs{
/// 			Location:                pulumi.String("us-central1"),
/// 			ResourceType:            pulumi.String("compute.googleapis.com/Instance"),
/// 			BackupPlanAssociationId: pulumi.String("my-bpa"),
/// 			Resource:                myinstance.ID(),
/// 			BackupPlan:              bp1.Name,
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
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.compute.Instance;
/// import com.pulumi.gcp.compute.InstanceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceNetworkInterfaceArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceBootDiskInitializeParamsArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceScratchDiskArgs;
/// import com.pulumi.gcp.compute.inputs.InstanceServiceAccountArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVault;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupVaultArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlan;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.inputs.BackupPlanBackupRuleStandardScheduleBackupWindowArgs;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociation;
/// import com.pulumi.gcp.backupdisasterrecovery.BackupPlanAssociationArgs;
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
///         var mySA = new Account("mySA", AccountArgs.builder()
///             .accountId("my-custom")
///             .displayName("Custom SA for VM Instance")
///             .build());
///
///         var myinstance = new Instance("myinstance", InstanceArgs.builder()
///             .networkInterfaces(InstanceNetworkInterfaceArgs.builder()
///                 .accessConfigs(InstanceNetworkInterfaceAccessConfigArgs.builder()
///                     .build())
///                 .network("default")
///                 .build())
///             .name("test-instance")
///             .machineType("n2-standard-2")
///             .zone("us-central1-a")
///             .bootDisk(InstanceBootDiskArgs.builder()
///                 .initializeParams(InstanceBootDiskInitializeParamsArgs.builder()
///                     .image("debian-cloud/debian-11")
///                     .labels(Map.of("my_label", "value"))
///                     .build())
///                 .build())
///             .scratchDisks(InstanceScratchDiskArgs.builder()
///                 .interface_("NVME")
///                 .build())
///             .serviceAccount(InstanceServiceAccountArgs.builder()
///                 .email(mySA.email())
///                 .scopes("cloud-platform")
///                 .build())
///             .build());
///
///         var bv1 = new BackupVault("bv1", BackupVaultArgs.builder()
///             .location("us-central1")
///             .backupVaultId("bv-bpa")
///             .backupMinimumEnforcedRetentionDuration("100000s")
///             .forceDelete(true)
///             .build());
///
///         var bp1 = new BackupPlan("bp1", BackupPlanArgs.builder()
///             .location("us-central1")
///             .backupPlanId("bp-bpa-test")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupVault(bv1.id())
///             .backupRules(BackupPlanBackupRuleArgs.builder()
///                 .ruleId("rule-1")
///                 .backupRetentionDays(2)
///                 .standardSchedule(BackupPlanBackupRuleStandardScheduleArgs.builder()
///                     .recurrenceType("HOURLY")
///                     .hourlyFrequency(6)
///                     .timeZone("UTC")
///                     .backupWindow(BackupPlanBackupRuleStandardScheduleBackupWindowArgs.builder()
///                         .startHourOfDay(12)
///                         .endHourOfDay(18)
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///         var my_backup_plan_association = new BackupPlanAssociation("my-backup-plan-association", BackupPlanAssociationArgs.builder()
///             .location("us-central1")
///             .resourceType("compute.googleapis.com/Instance")
///             .backupPlanAssociationId("my-bpa")
///             .resource(myinstance.id())
///             .backupPlan(bp1.name())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   mySA:
///     type: gcp:serviceaccount:Account
///     properties:
///       accountId: my-custom
///       displayName: Custom SA for VM Instance
///   myinstance:
///     type: gcp:compute:Instance
///     properties:
///       networkInterfaces:
///         - accessConfigs:
///             - {}
///           network: default
///       name: test-instance
///       machineType: n2-standard-2
///       zone: us-central1-a
///       bootDisk:
///         initializeParams:
///           image: debian-cloud/debian-11
///           labels:
///             my_label: value
///       scratchDisks:
///         - interface: NVME
///       serviceAccount:
///         email: ${mySA.email}
///         scopes:
///           - cloud-platform
///   bv1:
///     type: gcp:backupdisasterrecovery:BackupVault
///     properties:
///       location: us-central1
///       backupVaultId: bv-bpa
///       backupMinimumEnforcedRetentionDuration: 100000s
///       forceDelete: 'true'
///   bp1:
///     type: gcp:backupdisasterrecovery:BackupPlan
///     properties:
///       location: us-central1
///       backupPlanId: bp-bpa-test
///       resourceType: compute.googleapis.com/Instance
///       backupVault: ${bv1.id}
///       backupRules:
///         - ruleId: rule-1
///           backupRetentionDays: 2
///           standardSchedule:
///             recurrenceType: HOURLY
///             hourlyFrequency: 6
///             timeZone: UTC
///             backupWindow:
///               startHourOfDay: 12
///               endHourOfDay: 18
///   my-backup-plan-association:
///     type: gcp:backupdisasterrecovery:BackupPlanAssociation
///     properties:
///       location: us-central1
///       resourceType: compute.googleapis.com/Instance
///       backupPlanAssociationId: my-bpa
///       resource: ${myinstance.id}
///       backupPlan: ${bp1.name}
/// ```
///
///
/// ## Import
///
/// BackupPlanAssociation can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}`
///
/// * `{{project}}/{{location}}/{{backup_plan_association_id}}`
///
/// * `{{location}}/{{backup_plan_association_id}}`
///
/// When using the `pulumi import` command, BackupPlanAssociation can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default projects/{{project}}/locations/{{location}}/backupPlanAssociations/{{backup_plan_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{project}}/{{location}}/{{backup_plan_association_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation default {{location}}/{{backup_plan_association_id}}
/// ```
class BackupPlanAssociation extends pulumi.CustomResource {
  /// The BP with which resource needs to be created
  /// Note:
  /// - A Backup Plan configured for 'compute.googleapis.com/Instance', can only protect instance type resources.
  /// - A Backup Plan configured for 'compute.googleapis.com/Disk' can be used to protect both standard Disks and Regional Disks resources.
  late final pulumi.Output<String> backupPlan;

  /// The id of backupplan association
  late final pulumi.Output<String> backupPlanAssociationId;

  /// The time when the instance was created
  late final pulumi.Output<String> createTime;

  /// Resource name of data source which will be used as storage location for backups taken
  late final pulumi.Output<String> dataSource;

  /// The point in time when the last successful backup was captured from the source
  late final pulumi.Output<String> lastSuccessfulBackupConsistencyTime;

  /// The location for the backupplan association
  late final pulumi.Output<String> location;

  /// The name of backup plan association resource created
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The resource for which BPA needs to be created
  late final pulumi.Output<String> resource;

  /// The resource type of workload on which backupplan is applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", and "compute.googleapis.com/RegionDisk"
  late final pulumi.Output<String> resourceType;

  /// Message for rules config info
  /// Structure is documented below.
  late final pulumi.Output<List<BackupPlanAssociationRulesConfigInfo>>
      rulesConfigInfos;

  /// The time when the instance was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BackupPlanAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlanAssociation]. {@macro pulumi_backupdisasterrecovery_backup_plan_association_backup_plan_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlanAssociation(
    String name, {
    BackupPlanAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlanAssociation:BackupPlanAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPlan = registerOutput<String>('backupPlan');
    this.backupPlanAssociationId =
        registerOutput<String>('backupPlanAssociationId');
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.lastSuccessfulBackupConsistencyTime =
        registerOutput<String>('lastSuccessfulBackupConsistencyTime');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resource = registerOutput<String>('resource');
    this.resourceType = registerOutput<String>('resourceType');
    this.rulesConfigInfos =
        registerOutput<List<BackupPlanAssociationRulesConfigInfo>>(
            'rulesConfigInfos');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
