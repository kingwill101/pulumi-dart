// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cache_node.dart';
import 'get_cluster_log_delivery_configuration.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final String? arn;
  /// Availability Zone for the cache cluster.
  final String? availabilityZone;
  /// List of node objects including `id`, `address`, `port`, `availabilityZone` and `outpostArn`.
  /// Referenceable e.g., as `${data.aws_elasticache_cluster.bar.cache_nodes.0.address}`
  final List<GetClusterCacheNode>? cacheNodes;
  /// (Memcached only) DNS name of the cache cluster without the port appended.
  final String? clusterAddress;
  final String? clusterId;
  /// (Memcached only) Configuration endpoint to allow host discovery.
  final String? configurationEndpoint;
  /// Name of the cache engine.
  final String? engine;
  /// Version number of the cache engine.
  final String? engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// The IP version advertised in the discovery protocol.
  final String? ipDiscovery;
  /// Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  final List<GetClusterLogDeliveryConfiguration>? logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed.
  final String? maintenanceWindow;
  /// The IP versions for cache cluster connections.
  final String? networkType;
  /// The cluster node type.
  final String? nodeType;
  /// An ARN of an
  /// SNS topic that ElastiCache notifications get sent to.
  final String? notificationTopicArn;
  /// The number of cache nodes that the cache cluster has.
  final int? numCacheNodes;
  /// Name of the parameter group associated with this cache cluster.
  final String? parameterGroupName;
  /// The port number on which each of the cache nodes will
  /// accept connections.
  final int? port;
  /// The outpost ARN in which the cache cluster was created if created in outpost.
  final String? preferredOutpostArn;
  final String? region;
  /// The replication group to which this cache cluster belongs.
  final String? replicationGroupId;
  /// List VPC security groups associated with the cache cluster.
  final List<String>? securityGroupIds;
  /// The number of days for which ElastiCache will
  /// retain automatic cache cluster snapshots before deleting them.
  final int? snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will
  /// begin taking a daily snapshot of the cache cluster.
  final String? snapshotWindow;
  /// Name of the subnet group associated to the cache cluster.
  final String? subnetGroupName;
  /// Tags assigned to the resource
  final Map<String, String>? tags;

  /// Creates a new [GetClusterResult].
  /// [arn] Optional.
  /// [availabilityZone] Availability Zone for the cache cluster.
  /// [cacheNodes] List of node objects including `id`, `address`, `port`, `availabilityZone` and `outpostArn`.
  /// [clusterAddress] (Memcached only) DNS name of the cache cluster without the port appended.
  /// [clusterId] Optional.
  /// [configurationEndpoint] (Memcached only) Configuration endpoint to allow host discovery.
  /// [engine] Name of the cache engine.
  /// [engineVersion] Version number of the cache engine.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipDiscovery] The IP version advertised in the discovery protocol.
  /// [logDeliveryConfigurations] Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  /// [maintenanceWindow] Specifies the weekly time range for when maintenance
  /// [networkType] The IP versions for cache cluster connections.
  /// [nodeType] The cluster node type.
  /// [notificationTopicArn] An ARN of an
  /// [numCacheNodes] The number of cache nodes that the cache cluster has.
  /// [parameterGroupName] Name of the parameter group associated with this cache cluster.
  /// [port] The port number on which each of the cache nodes will
  /// [preferredOutpostArn] The outpost ARN in which the cache cluster was created if created in outpost.
  /// [region] Optional.
  /// [replicationGroupId] The replication group to which this cache cluster belongs.
  /// [securityGroupIds] List VPC security groups associated with the cache cluster.
  /// [snapshotRetentionLimit] The number of days for which ElastiCache will
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will
  /// [subnetGroupName] Name of the subnet group associated to the cache cluster.
  /// [tags] Tags assigned to the resource
  const GetClusterResult({
    this.arn,
    this.availabilityZone,
    this.cacheNodes,
    this.clusterAddress,
    this.clusterId,
    this.configurationEndpoint,
    this.engine,
    this.engineVersion,
    this.id,
    this.ipDiscovery,
    this.logDeliveryConfigurations,
    this.maintenanceWindow,
    this.networkType,
    this.nodeType,
    this.notificationTopicArn,
    this.numCacheNodes,
    this.parameterGroupName,
    this.port,
    this.preferredOutpostArn,
    this.region,
    this.replicationGroupId,
    this.securityGroupIds,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
    this.subnetGroupName,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'availabilityZone': ?availabilityZone,
      'cacheNodes': ?(() { final guardedValue = cacheNodes; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterCacheNode, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'clusterAddress': ?clusterAddress,
      'clusterId': ?clusterId,
      'configurationEndpoint': ?configurationEndpoint,
      'engine': ?engine,
      'engineVersion': ?engineVersion,
      'id': ?id,
      'ipDiscovery': ?ipDiscovery,
      'logDeliveryConfigurations': ?(() { final guardedValue = logDeliveryConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetClusterLogDeliveryConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'maintenanceWindow': ?maintenanceWindow,
      'networkType': ?networkType,
      'nodeType': ?nodeType,
      'notificationTopicArn': ?notificationTopicArn,
      'numCacheNodes': ?numCacheNodes,
      'parameterGroupName': ?parameterGroupName,
      'port': ?port,
      'preferredOutpostArn': ?preferredOutpostArn,
      'region': ?region,
      'replicationGroupId': ?replicationGroupId,
      'securityGroupIds': ?securityGroupIds,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
      'subnetGroupName': ?subnetGroupName,
      'tags': ?tags,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return guardedValue as String; })(),
      cacheNodes: (() { final guardedValue = map['cacheNodes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterCacheNode>(guardedValue, (value) => GetClusterCacheNode.fromMap((value as Map).cast<String, dynamic>())); })(),
      clusterAddress: (() { final guardedValue = map['clusterAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      clusterId: (() { final guardedValue = map['clusterId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationEndpoint: (() { final guardedValue = map['configurationEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engine: (() { final guardedValue = map['engine']; if (guardedValue == null) return null; return guardedValue as String; })(),
      engineVersion: (() { final guardedValue = map['engineVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipDiscovery: (() { final guardedValue = map['ipDiscovery']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logDeliveryConfigurations: (() { final guardedValue = map['logDeliveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetClusterLogDeliveryConfiguration>(guardedValue, (value) => GetClusterLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      maintenanceWindow: (() { final guardedValue = map['maintenanceWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notificationTopicArn: (() { final guardedValue = map['notificationTopicArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numCacheNodes: (() { final guardedValue = map['numCacheNodes']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      parameterGroupName: (() { final guardedValue = map['parameterGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      preferredOutpostArn: (() { final guardedValue = map['preferredOutpostArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetGroupName: (() { final guardedValue = map['subnetGroupName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
