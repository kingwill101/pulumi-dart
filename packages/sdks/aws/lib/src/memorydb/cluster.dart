import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_args.dart';
import 'cluster_state.dart';

/// Provides a MemoryDB Cluster.
///
/// More information about MemoryDB can be found in the [Developer Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/what-is-memorydb-for-redis.html).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.memorydb.Cluster("example", {
///     aclName: "open-access",
///     name: "my-cluster",
///     nodeType: "db.t4g.small",
///     engine: "redis",
///     engineVersion: "7.1",
///     numShards: 2,
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     snapshotRetentionLimit: 7,
///     subnetGroupName: exampleAwsMemorydbSubnetGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.memorydb.Cluster("example",
///     acl_name="open-access",
///     name="my-cluster",
///     node_type="db.t4g.small",
///     engine="redis",
///     engine_version="7.1",
///     num_shards=2,
///     security_group_ids=[example_aws_security_group["id"]],
///     snapshot_retention_limit=7,
///     subnet_group_name=example_aws_memorydb_subnet_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.MemoryDb.Cluster("example", new()
///     {
///         AclName = "open-access",
///         Name = "my-cluster",
///         NodeType = "db.t4g.small",
///         Engine = "redis",
///         EngineVersion = "7.1",
///         NumShards = 2,
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         SnapshotRetentionLimit = 7,
///         SubnetGroupName = exampleAwsMemorydbSubnetGroup.Id,
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
/// 		_, err := memorydb.NewCluster(ctx, "example", &memorydb.ClusterArgs{
/// 			AclName:       pulumi.String("open-access"),
/// 			Name:          pulumi.String("my-cluster"),
/// 			NodeType:      pulumi.String("db.t4g.small"),
/// 			Engine:        pulumi.String("redis"),
/// 			EngineVersion: pulumi.String("7.1"),
/// 			NumShards:     pulumi.Int(2),
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			SnapshotRetentionLimit: pulumi.Int(7),
/// 			SubnetGroupName:        pulumi.Any(exampleAwsMemorydbSubnetGroup.Id),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_memorydb_cluster" "example" {
///   acl_name                 = "open-access"
///   name                     = "my-cluster"
///   node_type                = "db.t4g.small"
///   engine                   = "redis"
///   engine_version           = "7.1"
///   num_shards               = 2
///   security_group_ids       = [exampleAwsSecurityGroup.id]
///   snapshot_retention_limit = 7
///   subnet_group_name        = exampleAwsMemorydbSubnetGroup.id
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Cluster("example", ClusterArgs.builder()
///             .aclName("open-access")
///             .name("my-cluster")
///             .nodeType("db.t4g.small")
///             .engine("redis")
///             .engineVersion("7.1")
///             .numShards(2)
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .snapshotRetentionLimit(7)
///             .subnetGroupName(exampleAwsMemorydbSubnetGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:memorydb:Cluster
///     properties:
///       aclName: open-access
///       name: my-cluster
///       nodeType: db.t4g.small
///       engine: redis
///       engineVersion: '7.1'
///       numShards: 2
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       snapshotRetentionLimit: 7
///       subnetGroupName: ${exampleAwsMemorydbSubnetGroup.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/cluster:Cluster example my-cluster
/// ```
class Cluster extends pulumi.CustomResource {
  /// The name of the Access Control List to associate with the cluster.
  late final pulumi.Output<String> aclName;
  /// The ARN of the cluster.
  late final pulumi.Output<String> arn;
  /// When set to `true`, the cluster will automatically receive minor engine version upgrades after launch. Defaults to `true`.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;
  late final pulumi.Output<List<Map<String, dynamic>>> clusterEndpoints;
  /// Enables data tiering. This option is not supported by all instance types. For more information, see [Data tiering](https://docs.aws.amazon.com/memorydb/latest/devguide/data-tiering.html).
  late final pulumi.Output<bool?> dataTiering;
  /// Description for the cluster. Defaults to `"Managed by Pulumi"`.
  late final pulumi.Output<String?> description;
  /// The engine that will run on your nodes. Supported values are `redis` and `valkey`.
  late final pulumi.Output<String> engine;
  /// Patch version number of the engine used by the cluster.
  late final pulumi.Output<String> enginePatchVersion;
  /// Version number of the engine to be used for the cluster. Downgrades are not supported.
  late final pulumi.Output<String> engineVersion;
  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  late final pulumi.Output<String?> finalSnapshotName;
  /// Mechanism that the cluster uses to discover IP addresses. Valid values are `ipv4` and `ipv6`. Defaults to `ipv4`. To specify `ipv6`, `networkType` must be `ipv6` or `dualStack`.
  late final pulumi.Output<String> ipDiscovery;
  /// ARN of the KMS key used to encrypt the cluster at rest.
  late final pulumi.Output<String?> kmsKeyArn;
  /// Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  late final pulumi.Output<String> maintenanceWindow;
  /// The multi region cluster identifier specified on `aws.memorydb.MultiRegionCluster`.
  late final pulumi.Output<String?> multiRegionClusterName;
  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  late final pulumi.Output<String> name;
  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;
  /// IP address type for the cluster. Valid values are `ipv4`, `ipv6` and `dualStack`. Defaults to `ipv4`.
  late final pulumi.Output<String> networkType;
  /// The compute and memory capacity of the nodes in the cluster. See AWS documentation on [supported node types](https://docs.aws.amazon.com/memorydb/latest/devguide/nodes.supportedtypes.html) as well as [vertical scaling](https://docs.aws.amazon.com/memorydb/latest/devguide/cluster-vertical-scaling.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> nodeType;
  /// The number of replicas to apply to each shard, up to a maximum of 5. Defaults to `1` (i.e. 2 nodes per shard).
  late final pulumi.Output<int?> numReplicasPerShard;
  /// The number of shards in the cluster. Defaults to `1`.
  late final pulumi.Output<int?> numShards;
  /// The name of the parameter group associated with the cluster.
  late final pulumi.Output<String> parameterGroupName;
  /// The port number on which each of the nodes accepts connections. Defaults to `6379`.
  late final pulumi.Output<int> port;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Set of VPC Security Group ID-s to associate with this cluster.
  late final pulumi.Output<List<String>?> securityGroupIds;
  /// Set of shards in this cluster.
  late final pulumi.Output<List<Map<String, dynamic>>> shards;
  /// List of ARN-s that uniquely identify RDB snapshot files stored in S3. The snapshot files will be used to populate the new cluster. Object names in the ARN-s cannot contain any commas.
  late final pulumi.Output<List<String>?> snapshotArns;
  /// The name of a snapshot from which to restore data into the new cluster.
  late final pulumi.Output<String?> snapshotName;
  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled. Defaults to `0`.
  late final pulumi.Output<int> snapshotRetentionLimit;
  /// The daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  late final pulumi.Output<String> snapshotWindow;
  /// ARN of the SNS topic to which cluster notifications are sent.
  late final pulumi.Output<String?> snsTopicArn;
  /// The name of the subnet group to be used for the cluster. Defaults to a subnet group consisting of default VPC subnets.
  late final pulumi.Output<String> subnetGroupName;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// A flag to enable in-transit encryption on the cluster. When set to `false`, the `aclName` must be `open-access`. Defaults to `true`.
  late final pulumi.Output<bool?> tlsEnabled;

  /// Creates a new [Cluster].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Cluster]. {@macro pulumi_memorydb_cluster_cluster_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclName = registerOutput<String>('aclName');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    clusterEndpoints = registerOutput<List<Map<String, dynamic>>>('clusterEndpoints');
    dataTiering = registerOutput<bool?>('dataTiering');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    enginePatchVersion = registerOutput<String>('enginePatchVersion');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotName = registerOutput<String?>('finalSnapshotName');
    ipDiscovery = registerOutput<String>('ipDiscovery');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    multiRegionClusterName = registerOutput<String?>('multiRegionClusterName');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkType = registerOutput<String>('networkType');
    nodeType = registerOutput<String>('nodeType');
    numReplicasPerShard = registerOutput<int?>('numReplicasPerShard');
    numShards = registerOutput<int?>('numShards');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    shards = registerOutput<List<Map<String, dynamic>>>('shards');
    snapshotArns = registerOutput<List<String>?>('snapshotArns');
    snapshotName = registerOutput<String?>('snapshotName');
    snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    snapshotWindow = registerOutput<String>('snapshotWindow');
    snsTopicArn = registerOutput<String?>('snsTopicArn');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
  }

  /// Gets an existing [Cluster] resource's state with the given [name] and [id].
  static Cluster get(
    String name,
    pulumi.Input<String> id, {
    ClusterState? state,
  }) {
    return Cluster._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Cluster._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    aclName = registerOutput<String>('aclName');
    arn = registerOutput<String>('arn');
    autoMinorVersionUpgrade = registerOutput<bool?>('autoMinorVersionUpgrade');
    clusterEndpoints = registerOutput<List<Map<String, dynamic>>>('clusterEndpoints');
    dataTiering = registerOutput<bool?>('dataTiering');
    description = registerOutput<String?>('description');
    engine = registerOutput<String>('engine');
    enginePatchVersion = registerOutput<String>('enginePatchVersion');
    engineVersion = registerOutput<String>('engineVersion');
    finalSnapshotName = registerOutput<String?>('finalSnapshotName');
    ipDiscovery = registerOutput<String>('ipDiscovery');
    kmsKeyArn = registerOutput<String?>('kmsKeyArn');
    maintenanceWindow = registerOutput<String>('maintenanceWindow');
    multiRegionClusterName = registerOutput<String?>('multiRegionClusterName');
    this.name = registerOutput<String>('name');
    namePrefix = registerOutput<String>('namePrefix');
    networkType = registerOutput<String>('networkType');
    nodeType = registerOutput<String>('nodeType');
    numReplicasPerShard = registerOutput<int?>('numReplicasPerShard');
    numShards = registerOutput<int?>('numShards');
    parameterGroupName = registerOutput<String>('parameterGroupName');
    port = registerOutput<int>('port');
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    shards = registerOutput<List<Map<String, dynamic>>>('shards');
    snapshotArns = registerOutput<List<String>?>('snapshotArns');
    snapshotName = registerOutput<String?>('snapshotName');
    snapshotRetentionLimit = registerOutput<int>('snapshotRetentionLimit');
    snapshotWindow = registerOutput<String>('snapshotWindow');
    snsTopicArn = registerOutput<String?>('snsTopicArn');
    subnetGroupName = registerOutput<String>('subnetGroupName');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    tlsEnabled = registerOutput<bool?>('tlsEnabled');
  }
}
