import 'package:pulumi/pulumi.dart' as pulumi;
import 'hana_backup_plan_args.dart';
import 'hana_backup_plan_state.dart';

/// Provides a Hybrid Backup Recovery (HBR) Hana Backup Plan resource.
///
/// For information about Hybrid Backup Recovery (HBR) Hana Backup Plan and how to use it, see [What is Hana Backup Plan](https://www.alibabacloud.com/help/en/hybrid-backup-recovery/latest/api-hbr-2017-09-08-createhanabackupplan).
///
/// > **NOTE:** Available since v1.179.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const example = alicloud.resourcemanager.getResourceGroups({
///     status: "OK",
/// });
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const exampleVault = new alicloud.hbr.Vault("example", {vaultName: `terraform-example-${_default.result}`});
/// const exampleHanaInstance = new alicloud.hbr.HanaInstance("example", {
///     alertSetting: "INHERITED",
///     hanaName: `terraform-example-${_default.result}`,
///     host: "1.1.1.1",
///     instanceNumber: 1,
///     password: "YouPassword123",
///     resourceGroupId: example.then(example => example.groups?.[0]?.id),
///     sid: "HXE",
///     useSsl: false,
///     userName: "admin",
///     validateCertificate: false,
///     vaultId: exampleVault.id,
/// });
/// const exampleHanaBackupPlan = new alicloud.hbr.HanaBackupPlan("example", {
///     backupPrefix: "DIFF_DATA_BACKUP",
///     backupType: "COMPLETE",
///     clusterId: exampleHanaInstance.hanaInstanceId,
///     databaseName: "SYSTEMDB",
///     planName: "terraform-example",
///     resourceGroupId: example.then(example => example.groups?.[0]?.id),
///     schedule: "I|1602673264|P1D",
///     vaultId: exampleHanaInstance.vaultId,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// example = alicloud.resourcemanager.get_resource_groups(status="OK")
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// example_vault = alicloud.hbr.Vault("example", vault_name=f"terraform-example-{default['result']}")
/// example_hana_instance = alicloud.hbr.HanaInstance("example",
///     alert_setting="INHERITED",
///     hana_name=f"terraform-example-{default['result']}",
///     host="1.1.1.1",
///     instance_number=1,
///     password="YouPassword123",
///     resource_group_id=example.groups[0].id,
///     sid="HXE",
///     use_ssl=False,
///     user_name="admin",
///     validate_certificate=False,
///     vault_id=example_vault.id)
/// example_hana_backup_plan = alicloud.hbr.HanaBackupPlan("example",
///     backup_prefix="DIFF_DATA_BACKUP",
///     backup_type="COMPLETE",
///     cluster_id=example_hana_instance.hana_instance_id,
///     database_name="SYSTEMDB",
///     plan_name="terraform-example",
///     resource_group_id=example.groups[0].id,
///     schedule="I|1602673264|P1D",
///     vault_id=example_hana_instance.vault_id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = AliCloud.ResourceManager.GetResourceGroups.Invoke(new()
///     {
///         Status = "OK",
///     });
///
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var exampleVault = new AliCloud.Hbr.Vault("example", new()
///     {
///         VaultName = $"terraform-example-{@default.Result}",
///     });
///
///     var exampleHanaInstance = new AliCloud.Hbr.HanaInstance("example", new()
///     {
///         AlertSetting = "INHERITED",
///         HanaName = $"terraform-example-{@default.Result}",
///         Host = "1.1.1.1",
///         InstanceNumber = 1,
///         Password = "YouPassword123",
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         Sid = "HXE",
///         UseSsl = false,
///         UserName = "admin",
///         ValidateCertificate = false,
///         VaultId = exampleVault.Id,
///     });
///
///     var exampleHanaBackupPlan = new AliCloud.Hbr.HanaBackupPlan("example", new()
///     {
///         BackupPrefix = "DIFF_DATA_BACKUP",
///         BackupType = "COMPLETE",
///         ClusterId = exampleHanaInstance.HanaInstanceId,
///         DatabaseName = "SYSTEMDB",
///         PlanName = "terraform-example",
///         ResourceGroupId = example.Apply(getResourceGroupsResult => getResourceGroupsResult.Groups[0]?.Id),
///         Schedule = "I|1602673264|P1D",
///         VaultId = exampleHanaInstance.VaultId,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/resourcemanager"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := resourcemanager.GetResourceGroups(ctx, &resourcemanager.GetResourceGroupsArgs{
/// 			Status: pulumi.StringRef("OK"),
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVault, err := hbr.NewVault(ctx, "example", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleHanaInstance, err := hbr.NewHanaInstance(ctx, "example", &hbr.HanaInstanceArgs{
/// 			AlertSetting:        pulumi.String("INHERITED"),
/// 			HanaName:            pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 			Host:                pulumi.String("1.1.1.1"),
/// 			InstanceNumber:      pulumi.Int(1),
/// 			Password:            pulumi.String("YouPassword123"),
/// 			ResourceGroupId:     pulumi.String(example.Groups[0].Id),
/// 			Sid:                 pulumi.String("HXE"),
/// 			UseSsl:              pulumi.Bool(false),
/// 			UserName:            pulumi.String("admin"),
/// 			ValidateCertificate: pulumi.Bool(false),
/// 			VaultId:             exampleVault.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewHanaBackupPlan(ctx, "example", &hbr.HanaBackupPlanArgs{
/// 			BackupPrefix:    pulumi.String("DIFF_DATA_BACKUP"),
/// 			BackupType:      pulumi.String("COMPLETE"),
/// 			ClusterId:       exampleHanaInstance.HanaInstanceId,
/// 			DatabaseName:    pulumi.String("SYSTEMDB"),
/// 			PlanName:        pulumi.String("terraform-example"),
/// 			ResourceGroupId: pulumi.String(example.Groups[0].Id),
/// 			Schedule:        pulumi.String("I|1602673264|P1D"),
/// 			VaultId:         exampleHanaInstance.VaultId,
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
/// import com.pulumi.alicloud.resourcemanager.ResourcemanagerFunctions;
/// import com.pulumi.alicloud.resourcemanager.inputs.GetResourceGroupsArgs;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.hbr.HanaInstance;
/// import com.pulumi.alicloud.hbr.HanaInstanceArgs;
/// import com.pulumi.alicloud.hbr.HanaBackupPlan;
/// import com.pulumi.alicloud.hbr.HanaBackupPlanArgs;
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
///         final var example = ResourcemanagerFunctions.getResourceGroups(GetResourceGroupsArgs.builder()
///             .status("OK")
///             .build());
///
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var exampleVault = new Vault("exampleVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var exampleHanaInstance = new HanaInstance("exampleHanaInstance", HanaInstanceArgs.builder()
///             .alertSetting("INHERITED")
///             .hanaName(String.format("terraform-example-%s", default_.result()))
///             .host("1.1.1.1")
///             .instanceNumber(1)
///             .password("YouPassword123")
///             .resourceGroupId(example.groups()[0].id())
///             .sid("HXE")
///             .useSsl(false)
///             .userName("admin")
///             .validateCertificate(false)
///             .vaultId(exampleVault.id())
///             .build());
///
///         var exampleHanaBackupPlan = new HanaBackupPlan("exampleHanaBackupPlan", HanaBackupPlanArgs.builder()
///             .backupPrefix("DIFF_DATA_BACKUP")
///             .backupType("COMPLETE")
///             .clusterId(exampleHanaInstance.hanaInstanceId())
///             .databaseName("SYSTEMDB")
///             .planName("terraform-example")
///             .resourceGroupId(example.groups()[0].id())
///             .schedule("I|1602673264|P1D")
///             .vaultId(exampleHanaInstance.vaultId())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: random:Integer
///     properties:
///       min: 10000
///       max: 99999
///   exampleVault:
///     type: alicloud:hbr:Vault
///     name: example
///     properties:
///       vaultName: terraform-example-${default.result}
///   exampleHanaInstance:
///     type: alicloud:hbr:HanaInstance
///     name: example
///     properties:
///       alertSetting: INHERITED
///       hanaName: terraform-example-${default.result}
///       host: 1.1.1.1
///       instanceNumber: 1
///       password: YouPassword123
///       resourceGroupId: ${example.groups[0].id}
///       sid: HXE
///       useSsl: false
///       userName: admin
///       validateCertificate: false
///       vaultId: ${exampleVault.id}
///   exampleHanaBackupPlan:
///     type: alicloud:hbr:HanaBackupPlan
///     name: example
///     properties:
///       backupPrefix: DIFF_DATA_BACKUP
///       backupType: COMPLETE
///       clusterId: ${exampleHanaInstance.hanaInstanceId}
///       databaseName: SYSTEMDB
///       planName: terraform-example
///       resourceGroupId: ${example.groups[0].id}
///       schedule: I|1602673264|P1D
///       vaultId: ${exampleHanaInstance.vaultId}
/// variables:
///   example:
///     fn::invoke:
///       function: alicloud:resourcemanager:getResourceGroups
///       arguments:
///         status: OK
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Hybrid Backup Recovery (HBR) Hana Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/hanaBackupPlan:HanaBackupPlan example <plan_id>:<vault_id>:<cluster_id>
/// ```
class HanaBackupPlan extends pulumi.CustomResource {
  /// The backup prefix.
  late final pulumi.Output<String?> backupPrefix;
  /// The backup type. Valid values:
  /// - `COMPLETE`: full backup.
  /// - `INCREMENTAL`: incremental backup.
  /// - `DIFFERENTIAL`: differential backup.
  late final pulumi.Output<String> backupType;
  /// The ID of the SAP HANA instance.
  late final pulumi.Output<String> clusterId;
  /// The name of the database.
  late final pulumi.Output<String> databaseName;
  /// The id of the plan.
  late final pulumi.Output<String> planId;
  /// The name of the backup plan.
  late final pulumi.Output<String> planName;
  /// The resource attribute field that represents the resource group ID.
  late final pulumi.Output<String?> resourceGroupId;
  /// The backup policy. Format: `I|{startTime}|{interval}`. The system runs the first backup job at a point in time that is specified in the {startTime} parameter and the subsequent backup jobs at an interval that is specified in the {interval} parameter. The system does not run a backup job before the specified point in time. Each backup job, except the first one, starts only after the previous backup job is completed. For example, I|1631685600|P1D specifies that the system runs the first backup job at 14:00:00 on September 15, 2021 and the subsequent backup jobs once a day.
  late final pulumi.Output<String> schedule;
  /// The status of the resource. Valid values: `Enabled`, `Disabled`.
  late final pulumi.Output<String> status;
  /// The ID of the backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [HanaBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HanaBackupPlan]. {@macro pulumi_hbr_hana_backup_plan_hana_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HanaBackupPlan(
    String name, {
    HanaBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaBackupPlan:HanaBackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPrefix = registerOutput<String?>('backupPrefix');
    this.backupType = registerOutput<String>('backupType');
    this.clusterId = registerOutput<String>('clusterId');
    this.databaseName = registerOutput<String>('databaseName');
    this.planId = registerOutput<String>('planId');
    this.planName = registerOutput<String>('planName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.schedule = registerOutput<String>('schedule');
    this.status = registerOutput<String>('status');
    this.vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [HanaBackupPlan] resource's state with the given [name] and [id].
  static HanaBackupPlan get(
    String name,
    pulumi.Input<String> id, {
    HanaBackupPlanState? state,
  }) {
    return HanaBackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HanaBackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/hanaBackupPlan:HanaBackupPlan',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupPrefix = registerOutput<String?>('backupPrefix');
    this.backupType = registerOutput<String>('backupType');
    this.clusterId = registerOutput<String>('clusterId');
    this.databaseName = registerOutput<String>('databaseName');
    this.planId = registerOutput<String>('planId');
    this.planName = registerOutput<String>('planName');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.schedule = registerOutput<String>('schedule');
    this.status = registerOutput<String>('status');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
