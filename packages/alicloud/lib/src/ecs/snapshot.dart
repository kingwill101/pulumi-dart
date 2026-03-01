import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';

/// Provides an ECS snapshot resource.
///
/// For information about snapshot and how to use it, see [Snapshot](https://www.alibabacloud.com/help/doc-detail/25460.html).
///
/// > **NOTE:** Deprecated since v1.120.0.
///
/// > **DEPRECATED:** This resource has been renamed to alicloud.ecs.EcsSnapshot from version 1.120.0.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// const snapshot = new alicloud.ecs.Snapshot("snapshot", {
///     diskId: instance_attachment.diskId,
///     name: "test-snapshot",
///     description: "this snapshot is created for testing",
///     tags: {
///         version: "1.2",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// snapshot = alicloud.ecs.Snapshot("snapshot",
///     disk_id=instance_attachment["diskId"],
///     name="test-snapshot",
///     description="this snapshot is created for testing",
///     tags={
///         "version": "1.2",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var snapshot = new AliCloud.Ecs.Snapshot("snapshot", new()
///     {
///         DiskId = instance_attachment.DiskId,
///         Name = "test-snapshot",
///         Description = "this snapshot is created for testing",
///         Tags =
///         {
///             { "version", "1.2" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/ecs"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := ecs.NewSnapshot(ctx, "snapshot", &ecs.SnapshotArgs{
/// 			DiskId:      pulumi.Any(instance_attachment.DiskId),
/// 			Name:        pulumi.String("test-snapshot"),
/// 			Description: pulumi.String("this snapshot is created for testing"),
/// 			Tags: pulumi.StringMap{
/// 				"version": pulumi.String("1.2"),
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
/// import com.pulumi.alicloud.ecs.Snapshot;
/// import com.pulumi.alicloud.ecs.SnapshotArgs;
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
///         var snapshot = new Snapshot("snapshot", SnapshotArgs.builder()
///             .diskId(instance_attachment.diskId())
///             .name("test-snapshot")
///             .description("this snapshot is created for testing")
///             .tags(Map.of("version", "1.2"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   snapshot:
///     type: alicloud:ecs:Snapshot
///     properties:
///       diskId: ${["instance-attachment"].diskId}
///       name: test-snapshot
///       description: this snapshot is created for testing
///       tags:
///         version: '1.2'
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Snapshot can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:ecs/snapshot:Snapshot snapshot s-abc1234567890000
/// ```
class Snapshot extends pulumi.CustomResource {
  late final pulumi.Output<String> category;
  late final pulumi.Output<String> createTime;
  /// Description of the snapshot. This description can have a string of 2 to 256 characters, It cannot begin with http:// or https://. Default value is null.
  late final pulumi.Output<String?> description;
  /// The source disk ID.
  late final pulumi.Output<String> diskId;
  late final pulumi.Output<bool?> force;
  late final pulumi.Output<bool?> instantAccess;
  late final pulumi.Output<int?> instantAccessRetentionDays;
  /// The name of the snapshot to be created. The name must be 2 to 128 characters in length. It must start with a letter and cannot start with http:// or https://. It can contain letters, digits, colons (:), underscores (_), and hyphens (-).
  /// It cannot start with auto, because snapshot names starting with auto are recognized as automatic snapshots.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> regionId;
  /// The ID of the resource group.
  late final pulumi.Output<String?> resourceGroupId;
  late final pulumi.Output<int?> retentionDays;
  late final pulumi.Output<String> snapshotName;
  late final pulumi.Output<String> status;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_ecs_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:ecs/snapshot:Snapshot',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.category = registerOutput<String>('category');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.diskId = registerOutput<String>('diskId');
    this.force = registerOutput<bool?>('force');
    this.instantAccess = registerOutput<bool?>('instantAccess');
    this.instantAccessRetentionDays = registerOutput<int?>('instantAccessRetentionDays');
    this.name = registerOutput<String>('name');
    this.regionId = registerOutput<String>('regionId');
    this.resourceGroupId = registerOutput<String?>('resourceGroupId');
    this.retentionDays = registerOutput<int?>('retentionDays');
    this.snapshotName = registerOutput<String>('snapshotName');
    this.status = registerOutput<String>('status');
    this.tags = registerOutput<Map<String, String>?>('tags');
  }
}
