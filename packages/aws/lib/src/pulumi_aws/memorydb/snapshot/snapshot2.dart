import 'package:pulumi/pulumi.dart';
import '../snapshot_cluster_configuration/snapshot_cluster_configuration.dart';
import 'snapshot_args2.dart';

/// Provides a MemoryDB Snapshot.
///
/// More information about snapshot and restore can be found in the [MemoryDB User Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/snapshots.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.Snapshot("example", {
/// clusterName: exampleAwsMemorydbCluster.name,
/// name: "my-snapshot",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.Snapshot("example",
/// cluster_name=example_aws_memorydb_cluster["name"],
/// name="my-snapshot")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.MemoryDb.Snapshot("example", new()
/// {
/// ClusterName = exampleAwsMemorydbCluster.Name,
/// Name = "my-snapshot",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/memorydb"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := memorydb.NewSnapshot(ctx, "example", &memorydb.SnapshotArgs{
/// ClusterName: pulumi.Any(exampleAwsMemorydbCluster.Name),
/// Name:        pulumi.String("my-snapshot"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new Snapshot("example", SnapshotArgs.builder()
/// .clusterName(exampleAwsMemorydbCluster.name())
/// .name("my-snapshot")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:memorydb:Snapshot
/// properties:
/// clusterName: ${exampleAwsMemorydbCluster.name}
/// name: my-snapshot
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a snapshot using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/snapshot:Snapshot example my-snapshot
/// ```
class Snapshot2 extends CustomResource {
  /// The ARN of the snapshot.
  late final Output<String> arn;

  /// The configuration of the cluster from which the snapshot was taken.
  late final Output<List<SnapshotClusterConfiguration>> clusterConfigurations;

  /// Name of the MemoryDB cluster to take a snapshot of.
  late final Output<String> clusterName;

  /// ARN of the KMS key used to encrypt the snapshot at rest.
  late final Output<String?> kmsKeyArn;

  /// Name of the snapshot. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Indicates whether the snapshot is from an automatic backup (<span pulumi-lang-nodejs="`automated`" pulumi-lang-dotnet="`Automated`" pulumi-lang-go="`automated`" pulumi-lang-python="`automated`" pulumi-lang-yaml="`automated`" pulumi-lang-java="`automated`">`automated`</span>) or was created manually (<span pulumi-lang-nodejs="`manual`" pulumi-lang-dotnet="`Manual`" pulumi-lang-go="`manual`" pulumi-lang-python="`manual`" pulumi-lang-yaml="`manual`" pulumi-lang-java="`manual`">`manual`</span>).
  late final Output<String> source;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Snapshot2(
    String name, {
    SnapshotArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.clusterConfigurations =
        registerOutput<List<SnapshotClusterConfiguration>>(
            'clusterConfigurations');
    this.clusterName = registerOutput<String>('clusterName');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.region = registerOutput<String>('region');
    this.source = registerOutput<String>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
