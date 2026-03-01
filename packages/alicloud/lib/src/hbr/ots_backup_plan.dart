import 'package:pulumi/pulumi.dart' as pulumi;
import 'ots_backup_plan_args.dart';
import 'ots_backup_plan_ots_detail.dart';
import 'ots_backup_plan_rule.dart';

/// Provides a HBR Ots Backup Plan resource.
///
/// For information about HBR Ots Backup Plan and how to use it, see [What is Ots Backup Plan](https://www.alibabacloud.com/help/en/hybrid-backup-recovery/latest/overview).
///
/// > **NOTE:** Available since v1.163.0.
///
/// > **NOTE:** Deprecated since v1.249.0.
///
/// > **DEPRECATED:** This resource has been deprecated from version `1.249.0`. Please use new resource alicloud.hbr.Policy and alicloud_hbr_policy_binding.
///
/// ## Example Usage
///
/// Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const defaultInteger = new random.index.Integer("default", {
///     max: 99999,
///     min: 10000,
/// });
/// const defaultVault = new alicloud.hbr.Vault("default", {
///     vaultName: `terraform-example-${defaultInteger.result}`,
///     vaultType: "STANDARD",
/// });
/// const defaultInstance = new alicloud.ots.Instance("default", {
///     name: `Example-${defaultInteger.result}`,
///     description: "terraform-example",
///     accessedBy: "Any",
///     tags: {
///         Created: "TF",
///         For: "example",
///     },
/// });
/// const defaultTable = new alicloud.ots.Table("default", {
///     instanceName: defaultInstance.name,
///     tableName: "terraform_example",
///     primaryKeys: [{
///         name: "pk1",
///         type: "Integer",
///     }],
///     timeToLive: -1,
///     maxVersion: 1,
///     deviationCellVersionInSec: "1",
/// });
/// const defaultRole = new alicloud.ram.Role("default", {
///     name: "hbrexamplerole",
///     document: `\\t\\t{
/// \\t\\t\\t\\"Statement\\": [
/// \\t\\t\\t{
/// \\t\\t\\t\\t\\"Action\\": \\"sts:AssumeRole\\",
/// \\t\\t\\t\\t\\"Effect\\": \\"Allow\\",
/// \\t\\t\\t\\t\\"Principal\\": {
/// \\t\\t\\t\\t\\t\\"Service\\": [
/// \\t\\t\\t\\t\\t\\t\\"crossbackup.hbr.aliyuncs.com\\"
/// \\t\\t\\t\\t\\t]
/// \\t\\t\\t\\t}
/// \\t\\t\\t}
/// \\t\\t\\t],
///   \\t\\t\\t\\"Version\\": \\"1\\"
/// \\t\\t}
/// `,
///     force: true,
/// });
/// const _default = alicloud.getAccount({});
/// const example = new alicloud.hbr.OtsBackupPlan("example", {
///     otsBackupPlanName: `terraform-example-${defaultInteger.result}`,
///     vaultId: defaultVault.id,
///     backupType: "COMPLETE",
///     retention: "1",
///     instanceName: defaultInstance.name,
///     crossAccountType: "SELF_ACCOUNT",
///     crossAccountUserId: _default.then(_default => _default.id),
///     crossAccountRoleName: defaultRole.id,
///     otsDetails: [{
///         tableNames: [defaultTable.tableName],
///     }],
///     rules: [{
///         schedule: "I|1602673264|PT2H",
///         retention: "1",
///         disabled: false,
///         ruleName: "terraform-example",
///         backupType: "COMPLETE",
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default_integer = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_vault = alicloud.hbr.Vault("default",
///     vault_name=f"terraform-example-{default_integer['result']}",
///     vault_type="STANDARD")
/// default_instance = alicloud.ots.Instance("default",
///     name=f"Example-{default_integer['result']}",
///     description="terraform-example",
///     accessed_by="Any",
///     tags={
///         "Created": "TF",
///         "For": "example",
///     })
/// default_table = alicloud.ots.Table("default",
///     instance_name=default_instance.name,
///     table_name="terraform_example",
///     primary_keys=[{
///         "name": "pk1",
///         "type": "Integer",
///     }],
///     time_to_live=-1,
///     max_version=1,
///     deviation_cell_version_in_sec="1")
/// default_role = alicloud.ram.Role("default",
///     name="hbrexamplerole",
///     document="""\t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t{
/// \t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Principal\": {
/// \t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\"crossbackup.hbr.aliyuncs.com\"
/// \t\t\t\t\t]
/// \t\t\t\t}
/// \t\t\t}
/// \t\t\t],
///   \t\t\t\"Version\": \"1\"
/// \t\t}
/// """,
///     force=True)
/// default = alicloud.get_account()
/// example = alicloud.hbr.OtsBackupPlan("example",
///     ots_backup_plan_name=f"terraform-example-{default_integer['result']}",
///     vault_id=default_vault.id,
///     backup_type="COMPLETE",
///     retention="1",
///     instance_name=default_instance.name,
///     cross_account_type="SELF_ACCOUNT",
///     cross_account_user_id=default.id,
///     cross_account_role_name=default_role.id,
///     ots_details=[{
///         "table_names": [default_table.table_name],
///     }],
///     rules=[{
///         "schedule": "I|1602673264|PT2H",
///         "retention": "1",
///         "disabled": False,
///         "rule_name": "terraform-example",
///         "backup_type": "COMPLETE",
///     }])
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
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultVault = new AliCloud.Hbr.Vault("default", new()
///     {
///         VaultName = $"terraform-example-{defaultInteger.Result}",
///         VaultType = "STANDARD",
///     });
///
///     var defaultInstance = new AliCloud.Ots.Instance("default", new()
///     {
///         Name = $"Example-{defaultInteger.Result}",
///         Description = "terraform-example",
///         AccessedBy = "Any",
///         Tags =
///         {
///             { "Created", "TF" },
///             { "For", "example" },
///         },
///     });
///
///     var defaultTable = new AliCloud.Ots.Table("default", new()
///     {
///         InstanceName = defaultInstance.Name,
///         TableName = "terraform_example",
///         PrimaryKeys = new[]
///         {
///             new AliCloud.Ots.Inputs.TablePrimaryKeyArgs
///             {
///                 Name = "pk1",
///                 Type = "Integer",
///             },
///         },
///         TimeToLive = -1,
///         MaxVersion = 1,
///         DeviationCellVersionInSec = "1",
///     });
///
///     var defaultRole = new AliCloud.Ram.Role("default", new()
///     {
///         Name = "hbrexamplerole",
///         Document = @"\t\t{
/// \t\t\t\""Statement\"": [
/// \t\t\t{
/// \t\t\t\t\""Action\"": \""sts:AssumeRole\"",
/// \t\t\t\t\""Effect\"": \""Allow\"",
/// \t\t\t\t\""Principal\"": {
/// \t\t\t\t\t\""Service\"": [
/// \t\t\t\t\t\t\""crossbackup.hbr.aliyuncs.com\""
/// \t\t\t\t\t]
/// \t\t\t\t}
/// \t\t\t}
/// \t\t\t],
///   \t\t\t\""Version\"": \""1\""
/// \t\t}
/// ",
///         Force = true,
///     });
///
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var example = new AliCloud.Hbr.OtsBackupPlan("example", new()
///     {
///         OtsBackupPlanName = $"terraform-example-{defaultInteger.Result}",
///         VaultId = defaultVault.Id,
///         BackupType = "COMPLETE",
///         Retention = "1",
///         InstanceName = defaultInstance.Name,
///         CrossAccountType = "SELF_ACCOUNT",
///         CrossAccountUserId = @default.Apply(@default => @default.Apply(getAccountResult => getAccountResult.Id)),
///         CrossAccountRoleName = defaultRole.Id,
///         OtsDetails = new[]
///         {
///             new AliCloud.Hbr.Inputs.OtsBackupPlanOtsDetailArgs
///             {
///                 TableNames = new[]
///                 {
///                     defaultTable.TableName,
///                 },
///             },
///         },
///         Rules = new[]
///         {
///             new AliCloud.Hbr.Inputs.OtsBackupPlanRuleArgs
///             {
///                 Schedule = "I|1602673264|PT2H",
///                 Retention = "1",
///                 Disabled = false,
///                 RuleName = "terraform-example",
///                 BackupType = "COMPLETE",
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
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ots"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ram"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVault, err := hbr.NewVault(ctx, "default", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			VaultType: pulumi.String("STANDARD"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInstance, err := ots.NewInstance(ctx, "default", &ots.InstanceArgs{
/// 			Name:        pulumi.Sprintf("Example-%v", defaultInteger.Result),
/// 			Description: pulumi.String("terraform-example"),
/// 			AccessedBy:  pulumi.String("Any"),
/// 			Tags: pulumi.StringMap{
/// 				"Created": pulumi.String("TF"),
/// 				"For":     pulumi.String("example"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultTable, err := ots.NewTable(ctx, "default", &ots.TableArgs{
/// 			InstanceName: defaultInstance.Name,
/// 			TableName:    pulumi.String("terraform_example"),
/// 			PrimaryKeys: ots.TablePrimaryKeyArray{
/// 				&ots.TablePrimaryKeyArgs{
/// 					Name: pulumi.String("pk1"),
/// 					Type: pulumi.String("Integer"),
/// 				},
/// 			},
/// 			TimeToLive:                pulumi.Int(-1),
/// 			MaxVersion:                pulumi.Int(1),
/// 			DeviationCellVersionInSec: pulumi.String("1"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultRole, err := ram.NewRole(ctx, "default", &ram.RoleArgs{
/// 			Name: pulumi.String("hbrexamplerole"),
/// 			Document: pulumi.String(`\t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t{
/// \t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Principal\": {
/// \t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\"crossbackup.hbr.aliyuncs.com\"
/// \t\t\t\t\t]
/// \t\t\t\t}
/// \t\t\t}
/// \t\t\t],
///   \t\t\t\"Version\": \"1\"
/// \t\t}
/// `),
/// 			Force: pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewOtsBackupPlan(ctx, "example", &hbr.OtsBackupPlanArgs{
/// 			OtsBackupPlanName:    pulumi.Sprintf("terraform-example-%v", defaultInteger.Result),
/// 			VaultId:              defaultVault.ID(),
/// 			BackupType:           pulumi.String("COMPLETE"),
/// 			Retention:            pulumi.String("1"),
/// 			InstanceName:         defaultInstance.Name,
/// 			CrossAccountType:     pulumi.String("SELF_ACCOUNT"),
/// 			CrossAccountUserId:   pulumi.String(_default.Id),
/// 			CrossAccountRoleName: defaultRole.ID(),
/// 			OtsDetails: hbr.OtsBackupPlanOtsDetailArray{
/// 				&hbr.OtsBackupPlanOtsDetailArgs{
/// 					TableNames: pulumi.StringArray{
/// 						defaultTable.TableName,
/// 					},
/// 				},
/// 			},
/// 			Rules: hbr.OtsBackupPlanRuleArray{
/// 				&hbr.OtsBackupPlanRuleArgs{
/// 					Schedule:   pulumi.String("I|1602673264|PT2H"),
/// 					Retention:  pulumi.String("1"),
/// 					Disabled:   pulumi.Bool(false),
/// 					RuleName:   pulumi.String("terraform-example"),
/// 					BackupType: pulumi.String("COMPLETE"),
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
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.hbr.Vault;
/// import com.pulumi.alicloud.hbr.VaultArgs;
/// import com.pulumi.alicloud.ots.Instance;
/// import com.pulumi.alicloud.ots.InstanceArgs;
/// import com.pulumi.alicloud.ots.Table;
/// import com.pulumi.alicloud.ots.TableArgs;
/// import com.pulumi.alicloud.ots.inputs.TablePrimaryKeyArgs;
/// import com.pulumi.alicloud.ram.Role;
/// import com.pulumi.alicloud.ram.RoleArgs;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.alicloud.hbr.OtsBackupPlan;
/// import com.pulumi.alicloud.hbr.OtsBackupPlanArgs;
/// import com.pulumi.alicloud.hbr.inputs.OtsBackupPlanOtsDetailArgs;
/// import com.pulumi.alicloud.hbr.inputs.OtsBackupPlanRuleArgs;
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
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultVault = new Vault("defaultVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", defaultInteger.result()))
///             .vaultType("STANDARD")
///             .build());
///
///         var defaultInstance = new Instance("defaultInstance", InstanceArgs.builder()
///             .name(String.format("Example-%s", defaultInteger.result()))
///             .description("terraform-example")
///             .accessedBy("Any")
///             .tags(Map.ofEntries(
///                 Map.entry("Created", "TF"),
///                 Map.entry("For", "example")
///             ))
///             .build());
///
///         var defaultTable = new Table("defaultTable", TableArgs.builder()
///             .instanceName(defaultInstance.name())
///             .tableName("terraform_example")
///             .primaryKeys(TablePrimaryKeyArgs.builder()
///                 .name("pk1")
///                 .type("Integer")
///                 .build())
///             .timeToLive(-1)
///             .maxVersion(1)
///             .deviationCellVersionInSec("1")
///             .build());
///
///         var defaultRole = new Role("defaultRole", RoleArgs.builder()
///             .name("hbrexamplerole")
///             .document("""
/// \t\t{
/// \t\t\t\"Statement\": [
/// \t\t\t{
/// \t\t\t\t\"Action\": \"sts:AssumeRole\",
/// \t\t\t\t\"Effect\": \"Allow\",
/// \t\t\t\t\"Principal\": {
/// \t\t\t\t\t\"Service\": [
/// \t\t\t\t\t\t\"crossbackup.hbr.aliyuncs.com\"
/// \t\t\t\t\t]
/// \t\t\t\t}
/// \t\t\t}
/// \t\t\t],
///   \t\t\t\"Version\": \"1\"
/// \t\t}
///             """)
///             .force(true)
///             .build());
///
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var example = new OtsBackupPlan("example", OtsBackupPlanArgs.builder()
///             .otsBackupPlanName(String.format("terraform-example-%s", defaultInteger.result()))
///             .vaultId(defaultVault.id())
///             .backupType("COMPLETE")
///             .retention("1")
///             .instanceName(defaultInstance.name())
///             .crossAccountType("SELF_ACCOUNT")
///             .crossAccountUserId(default_.id())
///             .crossAccountRoleName(defaultRole.id())
///             .otsDetails(OtsBackupPlanOtsDetailArgs.builder()
///                 .tableNames(defaultTable.tableName())
///                 .build())
///             .rules(OtsBackupPlanRuleArgs.builder()
///                 .schedule("I|1602673264|PT2H")
///                 .retention("1")
///                 .disabled(false)
///                 .ruleName("terraform-example")
///                 .backupType("COMPLETE")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       max: 99999
///       min: 10000
///   defaultVault:
///     type: alicloud:hbr:Vault
///     name: default
///     properties:
///       vaultName: terraform-example-${defaultInteger.result}
///       vaultType: STANDARD
///   defaultInstance:
///     type: alicloud:ots:Instance
///     name: default
///     properties:
///       name: Example-${defaultInteger.result}
///       description: terraform-example
///       accessedBy: Any
///       tags:
///         Created: TF
///         For: example
///   defaultTable:
///     type: alicloud:ots:Table
///     name: default
///     properties:
///       instanceName: ${defaultInstance.name}
///       tableName: terraform_example
///       primaryKeys:
///         - name: pk1
///           type: Integer
///       timeToLive: -1
///       maxVersion: 1
///       deviationCellVersionInSec: 1
///   defaultRole:
///     type: alicloud:ram:Role
///     name: default
///     properties:
///       name: hbrexamplerole
///       document: |
///         \t\t{
///         \t\t\t\"Statement\": [
///         \t\t\t{
///         \t\t\t\t\"Action\": \"sts:AssumeRole\",
///         \t\t\t\t\"Effect\": \"Allow\",
///         \t\t\t\t\"Principal\": {
///         \t\t\t\t\t\"Service\": [
///         \t\t\t\t\t\t\"crossbackup.hbr.aliyuncs.com\"
///         \t\t\t\t\t]
///         \t\t\t\t}
///         \t\t\t}
///         \t\t\t],
///           \t\t\t\"Version\": \"1\"
///         \t\t}
///       force: true
///   example:
///     type: alicloud:hbr:OtsBackupPlan
///     properties:
///       otsBackupPlanName: terraform-example-${defaultInteger.result}
///       vaultId: ${defaultVault.id}
///       backupType: COMPLETE
///       retention: '1'
///       instanceName: ${defaultInstance.name}
///       crossAccountType: SELF_ACCOUNT
///       crossAccountUserId: ${default.id}
///       crossAccountRoleName: ${defaultRole.id}
///       otsDetails:
///         - tableNames:
///             - ${defaultTable.tableName}
///       rules:
///         - schedule: I|1602673264|PT2H
///           retention: '1'
///           disabled: 'false'
///           ruleName: terraform-example
///           backupType: COMPLETE
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// HBR Ots Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/otsBackupPlan:OtsBackupPlan example <id>
/// ```
class OtsBackupPlan extends pulumi.CustomResource {
  /// Backup type. Valid values: `COMPLETE`.
  late final pulumi.Output<String> backupType;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;
  /// Whether to disable the backup task. Valid values: `true`, `false`. Default values: `false`.
  late final pulumi.Output<bool> disabled;
  /// The name of the Table store instance. **Note:** Required while source_type equals `OTS_TABLE`.
  late final pulumi.Output<String?> instanceName;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  late final pulumi.Output<String> otsBackupPlanName;
  /// The details about the Table store instance. See the following `Block ots_detail`. **Note:** Required while source_type equals `OTS_TABLE`.
  late final pulumi.Output<List<OtsBackupPlanOtsDetail>?> otsDetails;
  /// Backup retention days, the minimum is 1.
  late final pulumi.Output<String> retention;
  /// The backup plan rule. See the following `Block rules`. **Note:** Required while source_type equals `OTS_TABLE`.
  late final pulumi.Output<List<OtsBackupPlanRule>?> rules;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// - `startTime` Backup start time, UNIX time seconds.
  late final pulumi.Output<String?> schedule;
  /// The ID of backup vault.
  late final pulumi.Output<String?> vaultId;

  /// Creates a new [OtsBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OtsBackupPlan]. {@macro pulumi_hbr_ots_backup_plan_ots_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OtsBackupPlan(
    String name, {
    OtsBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/otsBackupPlan:OtsBackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupType = registerOutput<String>('backupType');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.disabled = registerOutput<bool>('disabled');
    this.instanceName = registerOutput<String?>('instanceName');
    this.otsBackupPlanName = registerOutput<String>('otsBackupPlanName');
    this.otsDetails = registerOutput<List<OtsBackupPlanOtsDetail>?>('otsDetails');
    this.retention = registerOutput<String>('retention');
    this.rules = registerOutput<List<OtsBackupPlanRule>?>('rules');
    this.schedule = registerOutput<String?>('schedule');
    this.vaultId = registerOutput<String?>('vaultId');
  }
}
