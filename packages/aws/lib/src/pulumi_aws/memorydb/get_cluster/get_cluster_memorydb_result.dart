// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_cluster_endpoint/get_cluster_cluster_endpoint.dart';
import '../get_cluster_shard/get_cluster_shard.dart';

/// Result data returned by getCluster.
class GetClusterMemorydbResult {
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

  GetClusterMemorydbResult({
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
    final map = <String, dynamic>{};
    map['aclName'] = aclName;
    map['arn'] = arn;
    map['autoMinorVersionUpgrade'] = autoMinorVersionUpgrade;
    map['clusterEndpoints'] = pulumi.Input.encodeList<GetClusterClusterEndpoint,
        Map<String, dynamic>>(clusterEndpoints, (value) => value.toMap());
    map['dataTiering'] = dataTiering;
    map['description'] = description;
    map['engine'] = engine;
    map['enginePatchVersion'] = enginePatchVersion;
    map['engineVersion'] = engineVersion;
    map['finalSnapshotName'] = finalSnapshotName;
    map['id'] = id;
    map['kmsKeyArn'] = kmsKeyArn;
    map['maintenanceWindow'] = maintenanceWindow;
    map['name'] = name;
    map['nodeType'] = nodeType;
    map['numReplicasPerShard'] = numReplicasPerShard;
    map['numShards'] = numShards;
    map['parameterGroupName'] = parameterGroupName;
    map['port'] = port;
    map['region'] = region;
    map['securityGroupIds'] = securityGroupIds;
    map['shards'] =
        pulumi.Input.encodeList<GetClusterShard, Map<String, dynamic>>(
            shards, (value) => value.toMap());
    map['snapshotRetentionLimit'] = snapshotRetentionLimit;
    map['snapshotWindow'] = snapshotWindow;
    map['snsTopicArn'] = snsTopicArn;
    map['subnetGroupName'] = subnetGroupName;
    map['tags'] = tags;
    map['tlsEnabled'] = tlsEnabled;
    return map;
  }

  factory GetClusterMemorydbResult.fromMap(Map<String, dynamic> map) {
    return GetClusterMemorydbResult(
      aclName: map['aclName'] as String,
      arn: map['arn'] as String,
      autoMinorVersionUpgrade: map['autoMinorVersionUpgrade'] as bool,
      clusterEndpoints: pulumi.Input.decodeList<GetClusterClusterEndpoint>(
          map['clusterEndpoints'],
          (value) => GetClusterClusterEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
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
      shards: pulumi.Input.decodeList<GetClusterShard>(
          map['shards'],
          (value) =>
              GetClusterShard.fromMap((value as Map).cast<String, dynamic>())),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] as String,
      snsTopicArn: map['snsTopicArn'] as String,
      subnetGroupName: map['subnetGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tlsEnabled: map['tlsEnabled'] as bool,
    );
  }
}
