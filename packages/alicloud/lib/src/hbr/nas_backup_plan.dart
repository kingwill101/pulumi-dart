import 'package:pulumi/pulumi.dart' as pulumi;
import 'nas_backup_plan_args.dart';

/// Provides a HBR Nas Backup Plan resource.
///
/// For information about HBR Nas Backup Plan and how to use it, see [What is Nas Backup Plan](https://www.alibabacloud.com/help/doc-detail/132248.htm).
///
/// > **NOTE:** Available since v1.132.0.
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
/// const _default = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultVault = new alicloud.hbr.Vault("default", {vaultName: `terraform-example-${_default.result}`});
/// const defaultFileSystem = new alicloud.nas.FileSystem("default", {
///     protocolType: "NFS",
///     storageType: "Performance",
///     description: "terraform-example",
///     encryptType: 1,
/// });
/// const defaultNasBackupPlan = new alicloud.hbr.NasBackupPlan("default", {
///     nasBackupPlanName: "terraform-example",
///     fileSystemId: defaultFileSystem.id,
///     schedule: "I|1602673264|PT2H",
///     backupType: "COMPLETE",
///     vaultId: defaultVault.id,
///     retention: "2",
///     paths: ["/"],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_vault = alicloud.hbr.Vault("default", vault_name=f"terraform-example-{default['result']}")
/// default_file_system = alicloud.nas.FileSystem("default",
///     protocol_type="NFS",
///     storage_type="Performance",
///     description="terraform-example",
///     encrypt_type=1)
/// default_nas_backup_plan = alicloud.hbr.NasBackupPlan("default",
///     nas_backup_plan_name="terraform-example",
///     file_system_id=default_file_system.id,
///     schedule="I|1602673264|PT2H",
///     backup_type="COMPLETE",
///     vault_id=default_vault.id,
///     retention="2",
///     paths=["/"])
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
///     var @default = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultVault = new AliCloud.Hbr.Vault("default", new()
///     {
///         VaultName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultFileSystem = new AliCloud.Nas.FileSystem("default", new()
///     {
///         ProtocolType = "NFS",
///         StorageType = "Performance",
///         Description = "terraform-example",
///         EncryptType = 1,
///     });
///
///     var defaultNasBackupPlan = new AliCloud.Hbr.NasBackupPlan("default", new()
///     {
///         NasBackupPlanName = "terraform-example",
///         FileSystemId = defaultFileSystem.Id,
///         Schedule = "I|1602673264|PT2H",
///         BackupType = "COMPLETE",
///         VaultId = defaultVault.Id,
///         Retention = "2",
///         Paths = new[]
///         {
///             "/",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/hbr"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/nas"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultVault, err := hbr.NewVault(ctx, "default", &hbr.VaultArgs{
/// 			VaultName: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultFileSystem, err := nas.NewFileSystem(ctx, "default", &nas.FileSystemArgs{
/// 			ProtocolType: pulumi.String("NFS"),
/// 			StorageType:  pulumi.String("Performance"),
/// 			Description:  pulumi.String("terraform-example"),
/// 			EncryptType:  pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewNasBackupPlan(ctx, "default", &hbr.NasBackupPlanArgs{
/// 			NasBackupPlanName: pulumi.String("terraform-example"),
/// 			FileSystemId:      defaultFileSystem.ID(),
/// 			Schedule:          pulumi.String("I|1602673264|PT2H"),
/// 			BackupType:        pulumi.String("COMPLETE"),
/// 			VaultId:           defaultVault.ID(),
/// 			Retention:         pulumi.String("2"),
/// 			Paths: pulumi.StringArray{
/// 				pulumi.String("/"),
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
/// import com.pulumi.alicloud.nas.FileSystem;
/// import com.pulumi.alicloud.nas.FileSystemArgs;
/// import com.pulumi.alicloud.hbr.NasBackupPlan;
/// import com.pulumi.alicloud.hbr.NasBackupPlanArgs;
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
///         var default_ = new Integer("default", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultVault = new Vault("defaultVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultFileSystem = new FileSystem("defaultFileSystem", FileSystemArgs.builder()
///             .protocolType("NFS")
///             .storageType("Performance")
///             .description("terraform-example")
///             .encryptType(1)
///             .build());
///
///         var defaultNasBackupPlan = new NasBackupPlan("defaultNasBackupPlan", NasBackupPlanArgs.builder()
///             .nasBackupPlanName("terraform-example")
///             .fileSystemId(defaultFileSystem.id())
///             .schedule("I|1602673264|PT2H")
///             .backupType("COMPLETE")
///             .vaultId(defaultVault.id())
///             .retention("2")
///             .paths("/")
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
///   defaultVault:
///     type: alicloud:hbr:Vault
///     name: default
///     properties:
///       vaultName: terraform-example-${default.result}
///   defaultFileSystem:
///     type: alicloud:nas:FileSystem
///     name: default
///     properties:
///       protocolType: NFS
///       storageType: Performance
///       description: terraform-example
///       encryptType: '1'
///   defaultNasBackupPlan:
///     type: alicloud:hbr:NasBackupPlan
///     name: default
///     properties:
///       nasBackupPlanName: terraform-example
///       fileSystemId: ${defaultFileSystem.id}
///       schedule: I|1602673264|PT2H
///       backupType: COMPLETE
///       vaultId: ${defaultVault.id}
///       retention: '2'
///       paths:
///         - /
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// HBR Nas Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/nasBackupPlan:NasBackupPlan example <id>
/// ```
class NasBackupPlan extends pulumi.CustomResource {
  /// Backup type. Valid values: `COMPLETE`.
  late final pulumi.Output<String> backupType;
  /// This field has been deprecated from provider version 1.153.0+. The creation time of NAS file system. **Note** The time format of the API adopts the ISO 8601, such as `2021-07-09T15:45:30CST` or `2021-07-09T07:45:30Z`.
  late final pulumi.Output<String> createTime;
  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  ///
  /// > **Note** `alicloud.hbr.NasBackupPlan` depends on the `alicloud.nas.FileSystem` and creates a mount point on the file system. If this dependency has not declared, the file system may not be deleted correctly.
  late final pulumi.Output<String?> crossAccountRoleName;
  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;
  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;
  /// Whether to disable the backup task. Valid values: `true`, `false`.
  late final pulumi.Output<bool> disabled;
  /// The File System ID of Nas.
  late final pulumi.Output<String> fileSystemId;
  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  late final pulumi.Output<String> nasBackupPlanName;
  /// This parameter specifies whether to use Windows VSS to define a backup path.
  late final pulumi.Output<String?> options;
  /// List of backup path. Up to 65536 characters. e.g.`["/home", "/var"]`. **Note** You should at least specify a backup path, empty array not allowed here.
  late final pulumi.Output<List<String>> paths;
  /// Backup retention days, the minimum is 1.
  late final pulumi.Output<String> retention;
  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  late final pulumi.Output<String> schedule;
  /// The ID of Backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [NasBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NasBackupPlan]. {@macro pulumi_hbr_nas_backup_plan_nas_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NasBackupPlan(
    String name, {
    NasBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:hbr/nasBackupPlan:NasBackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupType = registerOutput<String>('backupType');
    this.createTime = registerOutput<String>('createTime');
    this.crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    this.crossAccountType = registerOutput<String>('crossAccountType');
    this.crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    this.disabled = registerOutput<bool>('disabled');
    this.fileSystemId = registerOutput<String>('fileSystemId');
    this.nasBackupPlanName = registerOutput<String>('nasBackupPlanName');
    this.options = registerOutput<String?>('options');
    this.paths = registerOutput<List<String>>('paths');
    this.retention = registerOutput<String>('retention');
    this.schedule = registerOutput<String>('schedule');
    this.vaultId = registerOutput<String>('vaultId');
  }
}
