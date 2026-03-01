// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_endpoint.dart';
import 'get_cluster_shard.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Name of the Access Control List associated with the cluster.
  final String aclName;
  /// ARN of the cluster.
  final String arn;
  /// True when the cluster allows automatic minor version upgrades.
  final bool autoMinorVersionUpgrade;
  final List<GetClusterClusterEndpoint> clusterEndpoints;
  /// True when data tiering is enabled.
  final bool dataTiering;
  /// Description for the cluster.
  final String description;
  /// Engine that will run on cluster nodes.
  final String engine;
  /// Patch version number of the engine used by the cluster.
  final String enginePatchVersion;
  /// Version number of the engine used by the cluster.
  final String engineVersion;
  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  final String finalSnapshotName;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// ARN of the KMS key used to encrypt the cluster at rest.
  final String kmsKeyArn;
  /// Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). Example: `sun:23:00-mon:01:30`.
  final String maintenanceWindow;
  /// Name of this node.
  final String name;
  /// Compute and memory capacity of the nodes in the cluster.
  final String nodeType;
  /// The number of replicas to apply to each shard.
  final int numReplicasPerShard;
  /// Number of shards in the cluster.
  final int numShards;
  /// The name of the parameter group associated with the cluster.
  final String parameterGroupName;
  /// Port number that this node is listening on.
  final int port;
  final String region;
  /// Set of VPC Security Group ID-s associated with this cluster.
  final List<String> securityGroupIds;
  /// Set of shards in this cluster.
  final List<GetClusterShard> shards;
  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled.
  final int snapshotRetentionLimit;
  /// Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  final String snapshotWindow;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final String snsTopicArn;
  /// The name of the subnet group used for the cluster.
  final String subnetGroupName;
  /// Map of tags assigned to the cluster.
  final Map<String, String> tags;
  /// When true, in-transit encryption is enabled for the cluster.
  final bool tlsEnabled;

  /// Creates a new [GetClusterResult].
  /// [aclName] Name of the Access Control List associated with the cluster.
  /// [arn] ARN of the cluster.
  /// [autoMinorVersionUpgrade] True when the cluster allows automatic minor version upgrades.
  /// [clusterEndpoints] Required.
  /// [dataTiering] True when data tiering is enabled.
  /// [description] Description for the cluster.
  /// [engine] Engine that will run on cluster nodes.
  /// [enginePatchVersion] Patch version number of the engine used by the cluster.
  /// [engineVersion] Version number of the engine used by the cluster.
  /// [finalSnapshotName] Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the cluster at rest.
  /// [maintenanceWindow] Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). Example: `sun:23:00-mon:01:30`.
  /// [name] Name of this node.
  /// [nodeType] Compute and memory capacity of the nodes in the cluster.
  /// [numReplicasPerShard] The number of replicas to apply to each shard.
  /// [numShards] Number of shards in the cluster.
  /// [parameterGroupName] The name of the parameter group associated with the cluster.
  /// [port] Port number that this node is listening on.
  /// [region] Required.
  /// [securityGroupIds] Set of VPC Security Group ID-s associated with this cluster.
  /// [shards] Set of shards in this cluster.
  /// [snapshotRetentionLimit] The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled.
  /// [snapshotWindow] Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  /// [snsTopicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [subnetGroupName] The name of the subnet group used for the cluster.
  /// [tags] Map of tags assigned to the cluster.
  /// [tlsEnabled] When true, in-transit encryption is enabled for the cluster.
  GetClusterResult({
    required this.aclName,
    required this.arn,
    required this.autoMinorVersionUpgrade,
    required this.clusterEndpoints,
    required this.dataTiering,
    required this.description,
    required this.engine,
    required this.enginePatchVersion,
    required this.engineVersion,
    required this.finalSnapshotName,
    required this.id,
    required this.kmsKeyArn,
    required this.maintenanceWindow,
    required this.name,
    required this.nodeType,
    required this.numReplicasPerShard,
    required this.numShards,
    required this.parameterGroupName,
    required this.port,
    required this.region,
    required this.securityGroupIds,
    required this.shards,
    required this.snapshotRetentionLimit,
    required this.snapshotWindow,
    required this.snsTopicArn,
    required this.subnetGroupName,
    required this.tags,
    required this.tlsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclName': aclName,
      'arn': arn,
      'autoMinorVersionUpgrade': autoMinorVersionUpgrade,
      'clusterEndpoints': pulumi.Input.encodeList<GetClusterClusterEndpoint, Map<String, dynamic>>(clusterEndpoints, (value) => value.toMap()),
      'dataTiering': dataTiering,
      'description': description,
      'engine': engine,
      'enginePatchVersion': enginePatchVersion,
      'engineVersion': engineVersion,
      'finalSnapshotName': finalSnapshotName,
      'id': id,
      'kmsKeyArn': kmsKeyArn,
      'maintenanceWindow': maintenanceWindow,
      'name': name,
      'nodeType': nodeType,
      'numReplicasPerShard': numReplicasPerShard,
      'numShards': numShards,
      'parameterGroupName': parameterGroupName,
      'port': port,
      'region': region,
      'securityGroupIds': securityGroupIds,
      'shards': pulumi.Input.encodeList<GetClusterShard, Map<String, dynamic>>(shards, (value) => value.toMap()),
      'snapshotRetentionLimit': snapshotRetentionLimit,
      'snapshotWindow': snapshotWindow,
      'snsTopicArn': snsTopicArn,
      'subnetGroupName': subnetGroupName,
      'tags': tags,
      'tlsEnabled': tlsEnabled,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      aclName: map['aclName'] as String,
      arn: map['arn'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] as bool,
      clusterEndpoints: pulumi.Input.decodeList<GetClusterClusterEndpoint>(map['clusterEndpoints'], (value) => GetClusterClusterEndpoint.fromMap((value as Map).cast<String, dynamic>())),
      dataTiering: map['dataTiering'] as bool,
      description: map['description'] as String,
      engine: map['engine'] as String,
      enginePatchVersion: map['enginePatchVersion'] as String,
      engineVersion: map['engineVersion'] as String,
      finalSnapshotName: map['finalSnapshotName'] as String,
      id: map['id'] as String,
      kmsKeyArn: map['kmsKeyArn'] as String,
      maintenanceWindow: map['maintenanceWindow'] as String,
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      numReplicasPerShard: map['numReplicasPerShard'] as int,
      numShards: map['numShards'] as int,
      parameterGroupName: map['parameterGroupName'] as String,
      port: map['port'] as int,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      shards: pulumi.Input.decodeList<GetClusterShard>(map['shards'], (value) => GetClusterShard.fromMap((value as Map).cast<String, dynamic>())),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] as String,
      snsTopicArn: map['snsTopicArn'] as String,
      subnetGroupName: map['subnetGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tlsEnabled: map['tlsEnabled'] as bool,
    );
  }
}

