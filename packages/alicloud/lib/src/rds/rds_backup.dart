import 'package:pulumi/pulumi.dart' as pulumi;
import 'rds_backup_args.dart';

/// Provides a RDS Backup resource.
///
/// For information about RDS Backup and how to use it, see [What is Backup](https://www.alibabacloud.com/help/en/rds/developer-reference/api-rds-2014-08-15-createbackup).
///
/// > **NOTE:** Available since v1.149.0.
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
///
/// const example = new alicloud.rds.Instance("example", {
///     engine: "MySQL",
///     engineVersion: "5.6",
///     instanceType: "rds.mysql.t1.small",
///     instanceStorage: 30,
///     instanceChargeType: "Postpaid",
///     dbInstanceStorageType: "local_ssd",
/// });
/// const exampleRdsBackup = new alicloud.rds.RdsBackup("example", {dbInstanceId: example.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// example = alicloud.rds.Instance("example",
///     engine="MySQL",
///     engine_version="5.6",
///     instance_type="rds.mysql.t1.small",
///     instance_storage=30,
///     instance_charge_type="Postpaid",
///     db_instance_storage_type="local_ssd")
/// example_rds_backup = alicloud.rds.RdsBackup("example", db_instance_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new AliCloud.Rds.Instance("example", new()
///     {
///         Engine = "MySQL",
///         EngineVersion = "5.6",
///         InstanceType = "rds.mysql.t1.small",
///         InstanceStorage = 30,
///         InstanceChargeType = "Postpaid",
///         DbInstanceStorageType = "local_ssd",
///     });
///
///     var exampleRdsBackup = new AliCloud.Rds.RdsBackup("example", new()
///     {
///         DbInstanceId = example.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/rds"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := rds.NewInstance(ctx, "example", &rds.InstanceArgs{
/// 			Engine:                pulumi.String("MySQL"),
/// 			EngineVersion:         pulumi.String("5.6"),
/// 			InstanceType:          pulumi.String("rds.mysql.t1.small"),
/// 			InstanceStorage:       pulumi.Int(30),
/// 			InstanceChargeType:    pulumi.String("Postpaid"),
/// 			DbInstanceStorageType: pulumi.String("local_ssd"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = rds.NewRdsBackup(ctx, "example", &rds.RdsBackupArgs{
/// 			DbInstanceId: example.ID(),
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
/// import com.pulumi.alicloud.rds.Instance;
/// import com.pulumi.alicloud.rds.InstanceArgs;
/// import com.pulumi.alicloud.rds.RdsBackup;
/// import com.pulumi.alicloud.rds.RdsBackupArgs;
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
///         var example = new Instance("example", InstanceArgs.builder()
///             .engine("MySQL")
///             .engineVersion("5.6")
///             .instanceType("rds.mysql.t1.small")
///             .instanceStorage(30)
///             .instanceChargeType("Postpaid")
///             .dbInstanceStorageType("local_ssd")
///             .build());
///
///         var exampleRdsBackup = new RdsBackup("exampleRdsBackup", RdsBackupArgs.builder()
///             .dbInstanceId(example.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: alicloud:rds:Instance
///     properties:
///       engine: MySQL
///       engineVersion: '5.6'
///       instanceType: rds.mysql.t1.small
///       instanceStorage: '30'
///       instanceChargeType: Postpaid
///       dbInstanceStorageType: local_ssd
///   exampleRdsBackup:
///     type: alicloud:rds:RdsBackup
///     name: example
///     properties:
///       dbInstanceId: ${example.id}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// RDS Backup can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:rds/rdsBackup:RdsBackup example <db_instance_id>:<backup_id>
/// ```
class RdsBackup extends pulumi.CustomResource {
  /// The backup id.
  late final pulumi.Output<String> backupId;
  /// The type of backup that you want to perform. Default value: `Physical`. Valid values: `Logical`, `Physical` and `Snapshot`.
  late final pulumi.Output<String> backupMethod;
  /// The policy that you want to use for the backup task. Valid values:
  /// * **db**: specifies to perform a database-level backup.
  /// * **instance**: specifies to perform an instance-level backup.
  late final pulumi.Output<String?> backupStrategy;
  /// The method that you want to use for the backup task. Default value: `Auto`. Valid values:
  /// * **Auto**: specifies to automatically perform a full or incremental backup.
  /// * **FullBackup**: specifies to perform a full backup.
  late final pulumi.Output<String> backupType;
  /// The db instance id.
  late final pulumi.Output<String> dbInstanceId;
  /// The names of the databases whose data you want to back up. Separate the names of the databases with commas (,).
  late final pulumi.Output<String?> dbName;
  /// Remove form state when resource cannot be deleted. Valid values: `true` and `false`.
  late final pulumi.Output<bool?> removeFromState;
  /// Indicates whether the data backup file can be deleted. Valid values: `Enabled` and `Disabled`.
  late final pulumi.Output<String> storeStatus;

  /// Creates a new [RdsBackup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RdsBackup]. {@macro pulumi_rds_rds_backup_rds_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RdsBackup(
    String name, {
    RdsBackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:rds/rdsBackup:RdsBackup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupId = registerOutput<String>('backupId');
    this.backupMethod = registerOutput<String>('backupMethod');
    this.backupStrategy = registerOutput<String?>('backupStrategy');
    this.backupType = registerOutput<String>('backupType');
    this.dbInstanceId = registerOutput<String>('dbInstanceId');
    this.dbName = registerOutput<String?>('dbName');
    this.removeFromState = registerOutput<bool?>('removeFromState');
    this.storeStatus = registerOutput<String>('storeStatus');
  }
}
