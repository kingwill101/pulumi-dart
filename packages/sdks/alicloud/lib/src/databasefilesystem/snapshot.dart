import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a Database File System (DBFS) Snapshot resource.
///
/// For information about Database File System (DBFS) Snapshot and how to use it, see [What is Snapshot](https://help.aliyun.com/zh/dbfs/developer-reference/api-dbfs-2020-04-18-createsnapshot).
///
/// &gt; **NOTE:** Available since v1.156.0.
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
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform-example";
/// const _default = alicloud.databasefilesystem.getInstances({});
/// const example = new alicloud.databasefilesystem.Snapshot("example", {
///     instanceId: _default.then(_default => _default.instances?.[0]?.id),
///     retentionDays: 50,
///     snapshotName: name,
///     description: "DbfsSnapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform-example"
/// default = alicloud.databasefilesystem.get_instances()
/// example = alicloud.databasefilesystem.Snapshot("example",
///     instance_id=default.instances[0].id,
///     retention_days=50,
///     snapshot_name=name,
///     description="DbfsSnapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform-example";
///     var @default = AliCloud.DatabaseFilesystem.GetInstances.Invoke();
///
///     var example = new AliCloud.DatabaseFilesystem.Snapshot("example", new()
///     {
///         InstanceId = @default.Apply(@default => @default.Apply(getInstancesResult => getInstancesResult.Instances[0]?.Id)),
///         RetentionDays = 50,
///         SnapshotName = name,
///         Description = "DbfsSnapshot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/databasefilesystem"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform-example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := databasefilesystem.GetInstances(ctx, &databasefilesystem.GetInstancesArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = databasefilesystem.NewSnapshot(ctx, "example", &databasefilesystem.SnapshotArgs{
/// 			InstanceId:    pulumi.String(_default.Instances[0].Id),
/// 			RetentionDays: pulumi.Int(50),
/// 			SnapshotName:  pulumi.String(name),
/// 			Description:   pulumi.String("DbfsSnapshot"),
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
/// import com.pulumi.alicloud.databasefilesystem.DatabasefilesystemFunctions;
/// import com.pulumi.alicloud.databasefilesystem.inputs.GetInstancesArgs;
/// import com.pulumi.alicloud.databasefilesystem.Snapshot;
/// import com.pulumi.alicloud.databasefilesystem.SnapshotArgs;
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
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform-example");
///         final var default = DatabasefilesystemFunctions.getInstances(GetInstancesArgs.builder()
///             .build());
///
///         var example = new Snapshot("example", SnapshotArgs.builder()
///             .instanceId(default_.instances()[0].id())
///             .retentionDays(50)
///             .snapshotName(name)
///             .description("DbfsSnapshot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform-example
/// resources:
///   example:
///     type: alicloud:databasefilesystem:Snapshot
///     properties:
///       instanceId: ${default.instances[0].id}
///       retentionDays: 50
///       snapshotName: ${name}
///       description: DbfsSnapshot
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:databasefilesystem:getInstances
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Database File System (DBFS) Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:databasefilesystem/snapshot:Snapshot example <id>
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The description of the snapshot. The `description` must be `2` to `256` characters in length. It cannot start with `http://` or `https://`. **NOTE:** From version 1.233.1, `description` can be modified.
  late final pulumi.Output<String?> description;
  /// Specifies whether to force delete the snapshot. Valid values:
  late final pulumi.Output<bool?> force;
  /// The ID of the Database File System.
  late final pulumi.Output<String> instanceId;
  /// The retention period of the snapshot. Valid values: `1` to `65536`.
  late final pulumi.Output<int?> retentionDays;
  /// The name of the snapshot. The `snapshot_name` must be `2` to `128` characters in length. It must start with a large or small letter or Chinese, and cannot start with `http://`, `https://`, `auto` or `dbfs-auto`. It can contain numbers, colons (:), underscores (_), or hyphens (-). **NOTE:** From version 1.233.1, `snapshot_name` can be modified.
  late final pulumi.Output<String?> snapshotName;
  /// The status of the Snapshot.
  late final pulumi.Output<String> status;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_databasefilesystem_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    force = registerOutput<bool?>('force');
    instanceId = registerOutput<String>('instanceId');
    retentionDays = registerOutput<int?>('retentionDays');
    snapshotName = registerOutput<String?>('snapshotName');
    status = registerOutput<String>('status');
  }

  /// Gets an existing [Snapshot] resource's state with the given [name] and [id].
  static Snapshot get(
    String name,
    pulumi.Input<String> id, {
    SnapshotState? state,
  }) {
    return Snapshot._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Snapshot._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:databasefilesystem/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    force = registerOutput<bool?>('force');
    instanceId = registerOutput<String>('instanceId');
    retentionDays = registerOutput<int?>('retentionDays');
    snapshotName = registerOutput<String?>('snapshotName');
    status = registerOutput<String>('status');
  }
}
