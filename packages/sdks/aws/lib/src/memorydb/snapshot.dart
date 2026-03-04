import 'package:pulumi/pulumi.dart' as pulumi;
import 'snapshot_args.dart';
import 'snapshot_state.dart';

/// Provides a MemoryDB Snapshot.
///
/// More information about snapshot and restore can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/snapshots.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.Snapshot("example", {
///     clusterName: exampleAwsMemorydbCluster.name,
///     name: "my-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.Snapshot("example",
///     cluster_name=example_aws_memorydb_cluster["name"],
///     name="my-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MemoryDb.Snapshot("example", new()
///     {
///         ClusterName = exampleAwsMemorydbCluster.Name,
///         Name = "my-snapshot",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := memorydb.NewSnapshot(ctx, "example", &memorydb.SnapshotArgs{
/// 			ClusterName: pulumi.Any(exampleAwsMemorydbCluster.Name),
/// 			Name:        pulumi.String("my-snapshot"),
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
/// import com.pulumi.aws.memorydb.Snapshot;
/// import com.pulumi.aws.memorydb.SnapshotArgs;
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
///         var example = new Snapshot("example", SnapshotArgs.builder()
///             .clusterName(exampleAwsMemorydbCluster.name())
///             .name("my-snapshot")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:memorydb:Snapshot
///     properties:
///       clusterName: ${exampleAwsMemorydbCluster.name}
///       name: my-snapshot
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a snapshot using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/snapshot:Snapshot example my-snapshot
/// ```
class Snapshot extends pulumi.CustomResource {
  /// The ARN of the snapshot.
  late final pulumi.Output<String> arn;

  /// The configuration of the cluster from which the snapshot was taken.
  late final pulumi.Output<List<Map<String, dynamic>>> clusterConfigurations;

  /// Name of the MemoryDB cluster to take a snapshot of.
  late final pulumi.Output<String> clusterName;

  /// ARN of the KMS key used to encrypt the snapshot at rest.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Indicates whether the snapshot is from an automatic backup (`automated`) or was created manually (`manual`).
  late final pulumi.Output<String> source;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Snapshot].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Snapshot]. {@macro pulumi_memorydb_snapshot_snapshot_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Snapshot(
    String name, {
    SnapshotArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:memorydb/snapshot:Snapshot',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    clusterConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'clusterConfigurations',
    );
    clusterName = registerOutput<String>('clusterName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
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
         'aws:memorydb/snapshot:Snapshot',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    arn = registerOutput<String>('arn');
    clusterConfigurations = registerOutput<List<Map<String, dynamic>>>(
      'clusterConfigurations',
    );
    clusterName = registerOutput<String>('clusterName');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    region = registerOutput<String>('region');
    source = registerOutput<String>('source');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
