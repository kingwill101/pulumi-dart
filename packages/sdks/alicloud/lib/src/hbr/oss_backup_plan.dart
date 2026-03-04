import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_backup_plan_args.dart';
import 'oss_backup_plan_state.dart';

/// Provides a HBR Oss Backup Plan resource.
///
/// For information about HBR Oss Backup Plan and how to use it, see [What is Oss Backup Plan](https://www.alibabacloud.com/help/doc-detail/130040.htm).
///
/// &gt; **NOTE:** Available since v1.131.0.
///
/// &gt; **NOTE:** Deprecated since v1.249.0.
///
/// &gt; **DEPRECATED:** This resource has been deprecated from version `1.249.0`. Please use new resource alicloud.hbr.Policy and alicloud_hbr_policy_binding.
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
///     max: 99999,
///     min: 10000,
/// });
/// const defaultVault = new alicloud.hbr.Vault("default", {vaultName: `terraform-example-${_default.result}`});
/// const defaultBucket = new alicloud.oss.Bucket("default", {bucket: `terraform-example-${_default.result}`});
/// const defaultOssBackupPlan = new alicloud.hbr.OssBackupPlan("default", {
///     ossBackupPlanName: "terraform-example",
///     prefix: "/example",
///     bucket: defaultBucket.bucket,
///     vaultId: defaultVault.id,
///     schedule: "I|1602673264|PT2H",
///     backupType: "COMPLETE",
///     retention: "2",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// default = random.index.Integer("default",
///     max=99999,
///     min=10000)
/// default_vault = alicloud.hbr.Vault("default", vault_name=f"terraform-example-{default['result']}")
/// default_bucket = alicloud.oss.Bucket("default", bucket=f"terraform-example-{default['result']}")
/// default_oss_backup_plan = alicloud.hbr.OssBackupPlan("default",
///     oss_backup_plan_name="terraform-example",
///     prefix="/example",
///     bucket=default_bucket.bucket,
///     vault_id=default_vault.id,
///     schedule="I|1602673264|PT2H",
///     backup_type="COMPLETE",
///     retention="2")
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
///         Max = 99999,
///         Min = 10000,
///     });
///
///     var defaultVault = new AliCloud.Hbr.Vault("default", new()
///     {
///         VaultName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultBucket = new AliCloud.Oss.Bucket("default", new()
///     {
///         BucketName = $"terraform-example-{@default.Result}",
///     });
///
///     var defaultOssBackupPlan = new AliCloud.Hbr.OssBackupPlan("default", new()
///     {
///         OssBackupPlanName = "terraform-example",
///         Prefix = "/example",
///         Bucket = defaultBucket.BucketName,
///         VaultId = defaultVault.Id,
///         Schedule = "I|1602673264|PT2H",
///         BackupType = "COMPLETE",
///         Retention = "2",
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
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/oss"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_default, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Max: 99999,
/// 			Min: 10000,
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
/// 		defaultBucket, err := oss.NewBucket(ctx, "default", &oss.BucketArgs{
/// 			Bucket: pulumi.Sprintf("terraform-example-%v", _default.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = hbr.NewOssBackupPlan(ctx, "default", &hbr.OssBackupPlanArgs{
/// 			OssBackupPlanName: pulumi.String("terraform-example"),
/// 			Prefix:            pulumi.String("/example"),
/// 			Bucket:            defaultBucket.Bucket,
/// 			VaultId:           defaultVault.ID(),
/// 			Schedule:          pulumi.String("I|1602673264|PT2H"),
/// 			BackupType:        pulumi.String("COMPLETE"),
/// 			Retention:         pulumi.String("2"),
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
/// import com.pulumi.alicloud.oss.Bucket;
/// import com.pulumi.alicloud.oss.BucketArgs;
/// import com.pulumi.alicloud.hbr.OssBackupPlan;
/// import com.pulumi.alicloud.hbr.OssBackupPlanArgs;
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
///             .max(99999)
///             .min(10000)
///             .build());
///
///         var defaultVault = new Vault("defaultVault", VaultArgs.builder()
///             .vaultName(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultBucket = new Bucket("defaultBucket", BucketArgs.builder()
///             .bucket(String.format("terraform-example-%s", default_.result()))
///             .build());
///
///         var defaultOssBackupPlan = new OssBackupPlan("defaultOssBackupPlan", OssBackupPlanArgs.builder()
///             .ossBackupPlanName("terraform-example")
///             .prefix("/example")
///             .bucket(defaultBucket.bucket())
///             .vaultId(defaultVault.id())
///             .schedule("I|1602673264|PT2H")
///             .backupType("COMPLETE")
///             .retention("2")
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
///       max: 99999
///       min: 10000
///   defaultVault:
///     type: alicloud:hbr:Vault
///     name: default
///     properties:
///       vaultName: terraform-example-${default.result}
///   defaultBucket:
///     type: alicloud:oss:Bucket
///     name: default
///     properties:
///       bucket: terraform-example-${default.result}
///   defaultOssBackupPlan:
///     type: alicloud:hbr:OssBackupPlan
///     name: default
///     properties:
///       ossBackupPlanName: terraform-example
///       prefix: /example
///       bucket: ${defaultBucket.bucket}
///       vaultId: ${defaultVault.id}
///       schedule: I|1602673264|PT2H
///       backupType: COMPLETE
///       retention: '2'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// HBR Oss Backup Plan can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:hbr/ossBackupPlan:OssBackupPlan example <id>
/// ```
class OssBackupPlan extends pulumi.CustomResource {
  /// Backup type. Valid values: `COMPLETE`.
  late final pulumi.Output<String> backupType;

  /// The name of OSS bucket.
  late final pulumi.Output<String> bucket;

  /// The role name created in the original account RAM backup by the cross account managed by the current account.
  late final pulumi.Output<String?> crossAccountRoleName;

  /// The type of the cross account backup. Valid values: `SELF_ACCOUNT`, `CROSS_ACCOUNT`.
  late final pulumi.Output<String> crossAccountType;

  /// The original account ID of the cross account backup managed by the current account.
  late final pulumi.Output<int?> crossAccountUserId;

  /// Whether to disable the backup task. Valid values: `true`, `false`.
  late final pulumi.Output<bool> disabled;

  /// The name of the backup plan. 1~64 characters, the backup plan name of each data source type in a single warehouse required to be unique.
  late final pulumi.Output<String> ossBackupPlanName;

  /// Backup prefix. Once specified, only objects with matching prefixes will be backed up.
  late final pulumi.Output<String?> prefix;

  /// Backup retention days, the minimum is 1.
  late final pulumi.Output<String> retention;

  /// Backup strategy. Optional format: `I|{startTime}|{interval}`. It means to execute a backup task every `{interval}` starting from `{startTime}`. The backup task for the elapsed time will not be compensated. If the last backup task has not completed yet, the next backup task will not be triggered.
  /// * `startTime` Backup start time, UNIX time seconds.
  late final pulumi.Output<String> schedule;

  /// The ID of backup vault.
  late final pulumi.Output<String> vaultId;

  /// Creates a new [OssBackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssBackupPlan]. {@macro pulumi_hbr_oss_backup_plan_oss_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssBackupPlan(
    String name, {
    OssBackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:hbr/ossBackupPlan:OssBackupPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupType = registerOutput<String>('backupType');
    bucket = registerOutput<String>('bucket');
    crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    crossAccountType = registerOutput<String>('crossAccountType');
    crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    disabled = registerOutput<bool>('disabled');
    ossBackupPlanName = registerOutput<String>('ossBackupPlanName');
    prefix = registerOutput<String?>('prefix');
    retention = registerOutput<String>('retention');
    schedule = registerOutput<String>('schedule');
    vaultId = registerOutput<String>('vaultId');
  }

  /// Gets an existing [OssBackupPlan] resource's state with the given [name] and [id].
  static OssBackupPlan get(
    String name,
    pulumi.Input<String> id, {
    OssBackupPlanState? state,
  }) {
    return OssBackupPlan._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OssBackupPlan._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:hbr/ossBackupPlan:OssBackupPlan',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    backupType = registerOutput<String>('backupType');
    bucket = registerOutput<String>('bucket');
    crossAccountRoleName = registerOutput<String?>('crossAccountRoleName');
    crossAccountType = registerOutput<String>('crossAccountType');
    crossAccountUserId = registerOutput<int?>('crossAccountUserId');
    disabled = registerOutput<bool>('disabled');
    ossBackupPlanName = registerOutput<String>('ossBackupPlanName');
    prefix = registerOutput<String?>('prefix');
    retention = registerOutput<String>('retention');
    schedule = registerOutput<String>('schedule');
    vaultId = registerOutput<String>('vaultId');
  }
}
