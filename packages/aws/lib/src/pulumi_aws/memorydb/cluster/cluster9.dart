import 'package:pulumi/pulumi.dart';
import '../cluster_cluster_endpoint/cluster_cluster_endpoint.dart';
import '../cluster_shard/cluster_shard.dart';
import 'cluster_args9.dart';

/// Provides a MemoryDB Cluster.
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
/// const example = new aws.memorydb.Cluster("example", {
/// aclName: "open-access",
/// name: "my-cluster",
/// nodeType: "db.t4g.small",
/// engine: "redis",
/// engineVersion: "7.1",
/// numShards: 2,
/// securityGroupIds: [exampleAwsSecurityGroup.id],
/// snapshotRetentionLimit: 7,
/// subnetGroupName: exampleAwsMemorydbSubnetGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.Cluster("example",
/// acl_name="open-access",
/// name="my-cluster",
/// node_type="db.t4g.small",
/// engine="redis",
/// engine_version="7.1",
/// num_shards=2,
/// security_group_ids=[example_aws_security_group["id"]],
/// snapshot_retention_limit=7,
/// subnet_group_name=example_aws_memorydb_subnet_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.MemoryDb.Cluster("example", new()
/// {
/// AclName = "open-access",
/// Name = "my-cluster",
/// NodeType = "db.t4g.small",
/// Engine = "redis",
/// EngineVersion = "7.1",
/// NumShards = 2,
/// SecurityGroupIds = new[]
/// {
/// exampleAwsSecurityGroup.Id,
/// },
/// SnapshotRetentionLimit = 7,
/// SubnetGroupName = exampleAwsMemorydbSubnetGroup.Id,
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
/// _, err := memorydb.NewCluster(ctx, "example", &memorydb.ClusterArgs{
/// AclName:       pulumi.String("open-access"),
/// Name:          pulumi.String("my-cluster"),
/// NodeType:      pulumi.String("db.t4g.small"),
/// Engine:        pulumi.String("redis"),
/// EngineVersion: pulumi.String("7.1"),
/// NumShards:     pulumi.Int(2),
/// SecurityGroupIds: pulumi.StringArray{
/// exampleAwsSecurityGroup.Id,
/// },
/// SnapshotRetentionLimit: pulumi.Int(7),
/// SubnetGroupName:        pulumi.Any(exampleAwsMemorydbSubnetGroup.Id),
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
/// var example = new Cluster("example", ClusterArgs.builder()
/// .aclName("open-access")
/// .name("my-cluster")
/// .nodeType("db.t4g.small")
/// .engine("redis")
/// .engineVersion("7.1")
/// .numShards(2)
/// .securityGroupIds(exampleAwsSecurityGroup.id())
/// .snapshotRetentionLimit(7)
/// .subnetGroupName(exampleAwsMemorydbSubnetGroup.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:memorydb:Cluster
/// properties:
/// aclName: open-access
/// name: my-cluster
/// nodeType: db.t4g.small
/// engine: redis
/// engineVersion: '7.1'
/// numShards: 2
/// securityGroupIds:
/// - ${exampleAwsSecurityGroup.id}
/// snapshotRetentionLimit: 7
/// subnetGroupName: ${exampleAwsMemorydbSubnetGroup.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/cluster:Cluster example my-cluster
/// ```
class Cluster9 extends CustomResource {
  /// The name of the Access Control List to associate with the cluster.
  late final Output<String> aclName;

  /// The ARN of the cluster.
  late final Output<String> arn;

  /// When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the cluster will automatically receive minor engine version upgrades after launch. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> autoMinorVersionUpgrade;
  late final Output<List<ClusterClusterEndpoint>> clusterEndpoints;

  /// Enables data tiering. This option is not supported by all instance types. For more information, see [Data tiering](https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).
  late final Output<bool?> dataTiering;

  /// Description for the cluster. Defaults to `"Managed by Pulumi"`.
  late final Output<String?> description;

  /// The engine that will run on your nodes. Supported values are <span pulumi-lang-nodejs="`redis`" pulumi-lang-dotnet="`Redis`" pulumi-lang-go="`redis`" pulumi-lang-python="`redis`" pulumi-lang-yaml="`redis`" pulumi-lang-java="`redis`">`redis`</span> and <span pulumi-lang-nodejs="`valkey`" pulumi-lang-dotnet="`Valkey`" pulumi-lang-go="`valkey`" pulumi-lang-python="`valkey`" pulumi-lang-yaml="`valkey`" pulumi-lang-java="`valkey`">`valkey`</span>.
  late final Output<String> engine;

  /// Patch version number of the engine used by the cluster.
  late final Output<String> enginePatchVersion;

  /// Version number of the engine to be used for the cluster. Downgrades are not supported.
  late final Output<String> engineVersion;

  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  late final Output<String?> finalSnapshotName;

  /// ARN of the KMS key used to encrypt the cluster at rest.
  late final Output<String?> kmsKeyArn;

  /// Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  late final Output<String> maintenanceWindow;

  /// The multi region cluster identifier specified on <span pulumi-lang-nodejs="`aws.memorydb.MultiRegionCluster`" pulumi-lang-dotnet="`aws.memorydb.MultiRegionCluster`" pulumi-lang-go="`memorydb.MultiRegionCluster`" pulumi-lang-python="`memorydb.MultiRegionCluster`" pulumi-lang-yaml="`aws.memorydb.MultiRegionCluster`" pulumi-lang-java="`aws.memorydb.MultiRegionCluster`">`aws.memorydb.MultiRegionCluster`</span>.
  late final Output<String?> multiRegionClusterName;

  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with <span pulumi-lang-nodejs="`namePrefix`" pulumi-lang-dotnet="`NamePrefix`" pulumi-lang-go="`namePrefix`" pulumi-lang-python="`name_prefix`" pulumi-lang-yaml="`namePrefix`" pulumi-lang-java="`namePrefix`">`name_prefix`</span>.
  late final Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>.
  late final Output<String> namePrefix;

  /// The compute and memory capacity of the nodes in the cluster. See AWS documentation on [supported node types](https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.supportedtypes.html) as well as [vertical scaling](https://docs.aws.amazon.com/memorydb/latest/devguide/cluster-vertical-scaling.html).
  ///
  /// The following arguments are optional:
  late final Output<String> nodeType;

  /// The number of replicas to apply to each shard, up to a maximum of 5. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span> (i.e. 2 nodes per shard).
  late final Output<int?> numReplicasPerShard;

  /// The number of shards in the cluster. Defaults to <span pulumi-lang-nodejs="`1`" pulumi-lang-dotnet="`1`" pulumi-lang-go="`1`" pulumi-lang-python="`1`" pulumi-lang-yaml="`1`" pulumi-lang-java="`1`">`1`</span>.
  late final Output<int?> numShards;

  /// The name of the parameter group associated with the cluster.
  late final Output<String> parameterGroupName;

  /// The port number on which each of the nodes accepts connections. Defaults to <span pulumi-lang-nodejs="`6379`" pulumi-lang-dotnet="`6379`" pulumi-lang-go="`6379`" pulumi-lang-python="`6379`" pulumi-lang-yaml="`6379`" pulumi-lang-java="`6379`">`6379`</span>.
  late final Output<int> port;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Set of VPC Security Group ID-s to associate with this cluster.
  late final Output<List<String>?> securityGroupIds;

  /// Set of shards in this cluster.
  late final Output<List<ClusterShard>> shards;

  /// List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas.
  late final Output<List<String>?> snapshotArns;

  /// The name of a snapshot from which to restore data into the new cluster.
  late final Output<String?> snapshotName;

  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>, automatic backups are disabled. Defaults to <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span>.
  late final Output<int> snapshotRetentionLimit;

  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  late final Output<String> snapshotWindow;

  /// ARN of the SNS topic to which cluster notifications are sent.
  late final Output<String?> snsTopicArn;

  /// The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets.
  late final Output<String> subnetGroupName;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// A flag to enable in-transit encryption on the cluster. When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the <span pulumi-lang-nodejs="`aclName`" pulumi-lang-dotnet="`AclName`" pulumi-lang-go="`aclName`" pulumi-lang-python="`acl_name`" pulumi-lang-yaml="`aclName`" pulumi-lang-java="`aclName`">`acl_name`</span> must be `open-access`. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  late final Output<bool?> tlsEnabled;

  Cluster9(
    String name, {
    ClusterArgs9? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/cluster:Cluster',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.aclName = registerOutput<String>('aclName');
    this.arn = registerOutput<String>('arn');
    this.autoMinorVersionUpgrade =
        registerOutput<bool?>('autoMinorVersionUpgrade');
    this.clusterEndpoints =
        registerOutput<List<ClusterClusterEndpoint>>('clusterEndpoints');
    this.dataTiering = registerOutput<bool?>('dataTiering');
    this.description = registerOutput<String?>('description');
    this.engine = registerOutput<String>('engine');
    this.enginePatchVersion = registerOutput<String>('enginePatchVersion');
    this.engineVersion = registerOutput<String>('engineVersion');
    this.finalSnapshotName = registerOutput<String?>('finalSnapshotName');
    this.kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    this.maintenanceWindow = registerOutput<String>('maintenanceWindow');
    this.multiRegionClusterName =
        registerOutput<String?>('multiRegionClusterName');
    this.name = registerOutput<String>('name');
    this.namePrefix = registerOutput<String>('namePrefix');
    this.nodeType = registerOutput<String>('nodeType');
    this.numReplicasPerShard = registerOutput<int?>('numReplicasPerShard');
    this.numShards = registerOutput<int?>('numShards');
    this.parameterGroupName = registerOutput<String>('parameterGroupName');
    this.port = registerOutput<int>('port');
    this.region = registerOutput<String>('region');
    this.securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    this.shards = registerOutput<List<ClusterShard>>('shards');
    this.snapshotArns = registerOutput<List<String>?>('snapshotArns');
    this.snapshotName = registerOutput<String?>('snapshotName');
    this.snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    this.snapshotWindow = registerOutput<String>('snapshotWindow');
    this.snsTopicArn = registerOutput<String?>('snsTopicArn');
    this.subnetGroupName = registerOutput<String>('subnetGroupName');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tlsEnabled = registerOutput<bool?>('tlsEnabled');
  }
}
