import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_cluster_endpoint/cluster_cluster_endpoint.dart';
import '../cluster_shard/cluster_shard.dart';
import 'cluster_memorydb_args.dart';

/// Provides a MemoryDB Cluster.
///
/// More information about MemoryDB can be found in the [Developer Guide](https://docs.aws.amazon.com/memorydb/latest/devguide/what-is-memorydb-for-redis.html).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a cluster using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:memorydb/cluster:Cluster example my-cluster
/// ```
class ClusterMemorydb extends pulumi.CustomResource {
  /// The name of the Access Control List to associate with the cluster.
  late final pulumi.Output<String> aclName;

  /// The ARN of the cluster.
  late final pulumi.Output<String> arn;

  /// When set to `true`, the cluster will automatically receive minor engine version upgrades after launch. Defaults to `true`.
  late final pulumi.Output<bool?> autoMinorVersionUpgrade;
  late final pulumi.Output<List<ClusterClusterEndpoint>> clusterEndpoints;

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

  /// ARN of the KMS key used to encrypt the cluster at rest.
  late final pulumi.Output<String?> kmsKeyArn;

  /// Specifies the weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). The minimum maintenance window is a 60 minute period. Example: `sun:23:00-mon:01:30`.
  late final pulumi.Output<String> maintenanceWindow;

  /// The multi region cluster identifier specified on `aws.memorydb.MultiRegionCluster`.
  late final pulumi.Output<String?> multiRegionClusterName;

  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  late final pulumi.Output<String> name;

  /// Creates a unique name beginning with the specified prefix. Conflicts with `name`.
  late final pulumi.Output<String> namePrefix;

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
  late final pulumi.Output<List<ClusterShard>> shards;

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

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// A flag to enable in-transit encryption on the cluster. When set to `false`, the `acl_name` must be `open-access`. Defaults to `true`.
  late final pulumi.Output<bool?> tlsEnabled;

  ClusterMemorydb(
    String name, {
    ClusterMemorydbArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:memorydb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
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
