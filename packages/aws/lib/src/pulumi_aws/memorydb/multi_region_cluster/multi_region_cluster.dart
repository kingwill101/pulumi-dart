import 'package:pulumi/pulumi.dart';
import '../multi_region_cluster_timeouts/multi_region_cluster_timeouts.dart';
import 'multi_region_cluster_args.dart';

/// Provides a MemoryDB Multi Region Cluster.
///
/// More information about MemoryDB can be found in the [Developer Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/what-is-memorydb-for-redis.html).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.MultiRegionCluster("example", {
/// multiRegionClusterNameSuffix: "example",
/// nodeType: "db.r7g.xlarge",
/// });
/// const exampleCluster = new aws.memorydb.Cluster("example", {
/// aclName: exampleAwsMemorydbAcl.id,
/// autoMinorVersionUpgrade: false,
/// name: "example",
/// nodeType: "db.t4g.small",
/// numShards: 2,
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// snapshotRetentionLimit: 7,
/// subnetGroupName: exampleAwsMemorydbSubnetGroup.id,
/// multiRegionClusterName: example.multiRegionClusterName,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.MultiRegionCluster("example",
/// multi_region_cluster_name_suffix="example",
/// node_type="db.r7g.xlarge")
/// example_cluster = aws.memorydb.Cluster("example",
/// acl_name=example_aws_memorydb_acl["id"],
/// auto_minor_version_upgrade=False,
/// name="example",
/// node_type="db.t4g.small",
/// num_shards=2,
/// security_group_ids=[example_aws_security_group["id"]],
/// snapshot_retention_limit=7,
/// subnet_group_name=example_aws_memorydb_subnet_group["id"],
/// multi_region_cluster_name=example.multi_region_cluster_name)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.MemoryDb.MultiRegionCluster("example", new()
/// {
/// MultiRegionClusterNameSuffix = "example",
/// NodeType = "db.r7g.xlarge",
/// });
///
/// var exampleCluster = new Aws.MemoryDb.Cluster("example", new()
/// {
/// AclName = exampleAwsMemorydbAcl.Id,
/// AutoMinorVersionUpgrade = false,
/// Name = "example",
/// NodeType = "db.t4g.small",
/// NumShards = 2,
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SnapshotRetentionLimit = 7,
/// SubnetGroupName = exampleAwsMemorydbSubnetGroup.Id,
/// MultiRegionClusterName = example.MultiRegionClusterName,
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
/// example, err := memorydb.NewMultiRegionCluster(ctx, "example", &memorydb.MultiRegionClusterArgs{
/// MultiRegionClusterNameSuffix: pulumi.String("example"),
/// NodeType:                     pulumi.String("db.r7g.xlarge"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = memorydb.NewCluster(ctx, "example", &memorydb.ClusterArgs{
/// AclName:                 pulumi.Any(exampleAwsMemorydbAcl.Id),
/// AutoMinorVersionUpgrade: pulumi.Bool(false),
/// Name:                    pulumi.String("example"),
/// NodeType:                pulumi.String("db.t4g.small"),
/// NumShards:               pulumi.Int(2),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SnapshotRetentionLimit: pulumi.Int(7),
/// SubnetGroupName:        pulumi.Any(exampleAwsMemorydbSubnetGroup.Id),
/// MultiRegionClusterName: example.MultiRegionClusterName,
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
/// import com.pulumi.aws.memorydb.MultiRegionCluster;
/// import com.pulumi.aws.memorydb.MultiRegionClusterArgs;
/// import com.pulumi.aws.memorydb.Cluster;
/// import com.pulumi.aws.memorydb.ClusterArgs;
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
/// var example = new MultiRegionCluster("example", MultiRegionClusterArgs.builder()
/// .multiRegionClusterNameSuffix("example")
/// .nodeType("db.r7g.xlarge")
/// .build());
///
/// var exampleCluster = new Cluster("exampleCluster", ClusterArgs.builder()
/// .aclName(exampleAwsMemorydbAcl.id())
/// .autoMinorVersionUpgrade(false)
/// .name("example")
/// .nodeType("db.t4g.small")
/// .numShards(2)
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .snapshotRetentionLimit(7)
/// .subnetGroupName(exampleAwsMemorydbSubnetGroup.id())
/// .multiRegionClusterName(example.multiRegionClusterName())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:memorydb:MultiRegionCluster
/// properties:
/// multiRegionClusterNameSuffix: example
/// nodeType: db.r7g.xlarge
/// exampleCluster:
/// type: aws:memorydb:Cluster
/// name: example
/// properties:
/// aclName: ${exampleAwsMemorydbAcl.id}
/// autoMinorVersionUpgrade: false
/// name: example
/// nodeType: db.t4g.small
/// numShards: 2
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// snapshotRetentionLimit: 7
/// subnetGroupName: ${exampleAwsMemorydbSubnetGroup.id}
/// multiRegionClusterName: ${example.multiRegionClusterName}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the <span pulumi-lang-nodejs="`multiRegionClusterName`" pulumi-lang-dotnet="`MultiRegionClusterName`" pulumi-lang-go="`multiRegionClusterName`" pulumi-lang-python="`multi_region_cluster_name`" pulumi-lang-yaml="`multiRegionClusterName`" pulumi-lang-java="`multiRegionClusterName`">`multi_region_cluster_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/multiRegionCluster:MultiRegionCluster example virxk-example
/// ```
class MultiRegionCluster extends CustomResource {
  /// The ARN of the multi-region cluster.
  late final Output<String> arn;

  /// description for the multi-region cluster.
  late final Output<String?> description;

  /// The name of the engine to be used for the multi-region cluster. Valid values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> and <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>.
  late final Output<String> engine;

  /// The version of the engine to be used for the multi-region cluster. Downgrades are not supported.
  late final Output<String> engineVersion;

  /// The name of the multi-region cluster.
  late final Output<String> multiRegionClusterName;

  /// A suffix to be added to the multi-region cluster name. An AWS generated prefix is automatically applied to the multi-region cluster name when it is created.
  late final Output<String> multiRegionClusterNameSuffix;

  /// The name of the multi-region parameter group to be associated with the cluster.
  late final Output<String> multiRegionParameterGroupName;

  /// The node type to be used for the multi-region cluster.
  ///
  /// The following arguments are optional:
  late final Output<String> nodeType;

  /// The number of shards for the multi-region cluster.
  late final Output<int> numShards;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<String> status;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<MultiRegionClusterTimeouts?> timeouts;

  /// A flag to enable in-transit encryption on the cluster.
  late final Output<bool> tlsEnabled;
  late final Output<String?> updateStrategy;

  MultiRegionCluster(
    String name, {
    MultiRegionClusterArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/multiRegionCluster:MultiRegionCluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.engine = Output.createUnknown<String>();
    this.engineVersion = Output.createUnknown<String>();
    this.multiRegionClusterName = Output.createUnknown<String>();
    this.multiRegionClusterNameSuffix = Output.createUnknown<String>();
    this.multiRegionParameterGroupName = Output.createUnknown<String>();
    this.nodeType = Output.createUnknown<String>();
    this.numShards = Output.createUnknown<int>();
    this.region = Output.createUnknown<String>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.timeouts = Output.createUnknown<MultiRegionClusterTimeouts?>();
    this.tlsEnabled = Output.createUnknown<bool>();
    this.updateStrategy = Output.createUnknown<String?>();
  }
}
