// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cluster_endpoint.dart';
import 'get_cluster_shard.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  /// Name of the Access Control List associated with the cluster.
  final String? aclName;
  /// ARN of the cluster.
  final String? arn;
  /// True when the cluster allows automatic minor version upgrades.
  final bool? autoMinorVersionUpgrade;
  final List<GetClusterClusterEndpoint>? clusterEndpoints;
  /// True when data tiering is enabled.
  final bool? dataTiering;
  /// Description for the cluster.
  final String? description;
  /// Engine that will run on cluster nodes.
  final String? engine;
  /// Patch version number of the engine used by the cluster.
  final String? enginePatchVersion;
  /// Version number of the engine used by the cluster.
  final String? engineVersion;
  /// Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  final String? finalSnapshotName;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Mechanism that the cluster uses to discover IP addresses.
  final String? ipDiscovery;
  /// ARN of the KMS key used to encrypt the cluster at rest.
  final String? kmsKeyArn;
  /// Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). Example: `sun:23:00-mon:01:30`.
  final String? maintenanceWindow;
  /// Name of this node.
  final String? name;
  /// IP address type for the cluster.
  final String? networkType;
  /// Compute and memory capacity of the nodes in the cluster.
  final String? nodeType;
  /// The number of replicas to apply to each shard.
  final int? numReplicasPerShard;
  /// Number of shards in the cluster.
  final int? numShards;
  /// The name of the parameter group associated with the cluster.
  final String? parameterGroupName;
  /// Port number that this node is listening on.
  final int? port;
  final String? region;
  /// Set of VPC Security Group ID-s associated with this cluster.
  final List<String>? securityGroupIds;
  /// Set of shards in this cluster.
  final List<GetClusterShard>? shards;
  /// The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled.
  final int? snapshotRetentionLimit;
  /// Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  final String? snapshotWindow;
  /// ARN of the SNS topic to which cluster notifications are sent.
  final String? snsTopicArn;
  /// The name of the subnet group used for the cluster.
  final String? subnetGroupName;
  /// Map of tags assigned to the cluster.
  final Map<String, String>? tags;
  /// When true, in-transit encryption is enabled for the cluster.
  final bool? tlsEnabled;

  /// Creates a new [GetClusterResult].
  /// [aclName] Name of the Access Control List associated with the cluster.
  /// [arn] ARN of the cluster.
  /// [autoMinorVersionUpgrade] True when the cluster allows automatic minor version upgrades.
  /// [clusterEndpoints] Optional.
  /// [dataTiering] True when data tiering is enabled.
  /// [description] Description for the cluster.
  /// [engine] Engine that will run on cluster nodes.
  /// [enginePatchVersion] Patch version number of the engine used by the cluster.
  /// [engineVersion] Version number of the engine used by the cluster.
  /// [finalSnapshotName] Name of the final cluster snapshot to be created when this resource is deleted. If omitted, no final snapshot will be made.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipDiscovery] Mechanism that the cluster uses to discover IP addresses.
  /// [kmsKeyArn] ARN of the KMS key used to encrypt the cluster at rest.
  /// [maintenanceWindow] Weekly time range during which maintenance on the cluster is performed. Specify as a range in the format `ddd:hh24:mi-ddd:hh24:mi` (24H Clock UTC). Example: `sun:23:00-mon:01:30`.
  /// [name] Name of this node.
  /// [networkType] IP address type for the cluster.
  /// [nodeType] Compute and memory capacity of the nodes in the cluster.
  /// [numReplicasPerShard] The number of replicas to apply to each shard.
  /// [numShards] Number of shards in the cluster.
  /// [parameterGroupName] The name of the parameter group associated with the cluster.
  /// [port] Port number that this node is listening on.
  /// [region] Optional.
  /// [securityGroupIds] Set of VPC Security Group ID-s associated with this cluster.
  /// [shards] Set of shards in this cluster.
  /// [snapshotRetentionLimit] The number of days for which MemoryDB retains automatic snapshots before deleting them. When set to `0`, automatic backups are disabled.
  /// [snapshotWindow] Daily time range (in UTC) during which MemoryDB begins taking a daily snapshot of your shard. Example: `05:00-09:00`.
  /// [snsTopicArn] ARN of the SNS topic to which cluster notifications are sent.
  /// [subnetGroupName] The name of the subnet group used for the cluster.
  /// [tags] Map of tags assigned to the cluster.
  /// [tlsEnabled] When true, in-transit encryption is enabled for the cluster.
  const GetClusterResult({
    this.aclName,
    this.arn,
    this.autoMinorVersionUpgrade,
    this.clusterEndpoints,
    this.dataTiering,
    this.description,
    this.engine,
    this.enginePatchVersion,
    this.engineVersion,
    this.finalSnapshotName,
    this.id,
    this.ipDiscovery,
    this.kmsKeyArn,
    this.maintenanceWindow,
    this.name,
    this.networkType,
    this.nodeType,
    this.numReplicasPerShard,
    this.numShards,
    this.parameterGroupName,
    this.port,
    this.region,
    this.securityGroupIds,
    this.shards,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.snsTopicArn,
    this.subnetGroupName,
    this.tags,
    this.tlsEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aclName': ?aclName,
      'arn': ?arn,
      'autoMinorVersionUpgrade': ?autoMinorVersionUpgrade,
      'clusterEndpoints': ?(() { final guardedValue = clusterEndpoints; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterClusterEndpoint, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dataTiering': ?dataTiering,
      'description': ?description,
      'engine': ?engine,
      'enginePatchVersion': ?enginePatchVersion,
      'engineVersion': ?engineVersion,
      'finalSnapshotName': ?finalSnapshotName,
      'id': ?id,
      'ipDiscovery': ?ipDiscovery,
      'kmsKeyArn': ?kmsKeyArn,
      'maintenanceWindow': ?maintenanceWindow,
      'name': ?name,
      'networkType': ?networkType,
      'nodeType': ?nodeType,
      'numReplicasPerShard': ?numReplicasPerShard,
      'numShards': ?numShards,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'shards': ?(() { final guardedValue = shards; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterShard, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'snsTopicArn': ?snsTopicArn,
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
      'tlsEnabled': ?tlsEnabled,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      aclName: (() { final guardedValue = map['aclName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      autoMinorVersionUpgrade: (() { final guardedValue = map['autoMinorVersionUpgrade']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterEndpoints: (() { final guardedValue = map['clusterEndpoints']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterClusterEndpoint>(guardedValue, (value) => GetClusterClusterEndpoint.fromMap((value as Map).cast<String, dynamic>())); })(),
      dataTiering: (() { final guardedValue = map['dataTiering']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      enginePatchVersion: (() { final guardedValue = map['enginePatchVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      finalSnapshotName: (() { final guardedValue = map['finalSnapshotName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipDiscovery: (() { final guardedValue = map['ipDiscovery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyArn: (() { final guardedValue = map['kmsKeyArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numReplicasPerShard: (() { final guardedValue = map['numReplicasPerShard']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      numShards: (() { final guardedValue = map['numShards']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      shards: (() { final guardedValue = map['shards']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterShard>(guardedValue, (value) => GetClusterShard.fromMap((value as Map).cast<String, dynamic>())); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snsTopicArn: (() { final guardedValue = map['snsTopicArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tlsEnabled: (() { final guardedValue = map['tlsEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
    );
  }
}
