// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_cache_node.dart';
import 'get_cluster_log_delivery_configuration.dart';

/// Result data returned by getCluster.
class GetClusterResult {
  final String arn;
  /// Availability Zone for the cache cluster.
  final String availabilityZone;
  /// List of node objects including `id`, `address`, `port`, `availability_zone` and `outpost_arn`.
  /// Referenceable e.g., as `${data.aws_elasticache_cluster.bar.cache_nodes.0.address}`
  final List<GetClusterCacheNode> cacheNodes;
  /// (Memcached only) DNS name of the cache cluster without the port appended.
  final String clusterAddress;
  final String clusterId;
  /// (Memcached only) Configuration endpoint to allow host discovery.
  final String configurationEndpoint;
  /// Name of the cache engine.
  final String engine;
  /// Version number of the cache engine.
  final String engineVersion;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// The IP version advertised in the discovery protocol.
  final String ipDiscovery;
  /// Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  final List<GetClusterLogDeliveryConfiguration> logDeliveryConfigurations;
  /// Specifies the weekly time range for when maintenance
  /// on the cache cluster is performed.
  final String maintenanceWindow;
  /// The IP versions for cache cluster connections.
  final String networkType;
  /// The cluster node type.
  final String nodeType;
  /// An ARN of an
  /// SNS topic that ElastiCache notifications get sent to.
  final String notificationTopicArn;
  /// The number of cache nodes that the cache cluster has.
  final int numCacheNodes;
  /// Name of the parameter group associated with this cache cluster.
  final String parameterGroupName;
  /// The port number on which each of the cache nodes will
  /// accept connections.
  final int port;
  /// The outpost ARN in which the cache cluster was created if created in outpost.
  final String preferredOutpostArn;
  final String region;
  /// The replication group to which this cache cluster belongs.
  final String replicationGroupId;
  /// List VPC security groups associated with the cache cluster.
  final List<String> securityGroupIds;
  /// The number of days for which ElastiCache will
  /// retain automatic cache cluster snapshots before deleting them.
  final int snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache will
  /// begin taking a daily snapshot of the cache cluster.
  final String snapshotWindow;
  /// Name of the subnet group associated to the cache cluster.
  final String subnetGroupName;
  /// Tags assigned to the resource
  final Map<String, String> tags;

  /// Creates a new [GetClusterResult].
  /// [arn] Required.
  /// [availabilityZone] Availability Zone for the cache cluster.
  /// [cacheNodes] List of node objects including `id`, `address`, `port`, `availability_zone` and `outpost_arn`.
  /// [clusterAddress] (Memcached only) DNS name of the cache cluster without the port appended.
  /// [clusterId] Required.
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
  /// [region] Required.
  /// [replicationGroupId] The replication group to which this cache cluster belongs.
  /// [securityGroupIds] List VPC security groups associated with the cache cluster.
  /// [snapshotRetentionLimit] The number of days for which ElastiCache will
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache will
  /// [subnetGroupName] Name of the subnet group associated to the cache cluster.
  /// [tags] Tags assigned to the resource
  GetClusterResult({
    required this.arn,
    required this.availabilityZone,
    required this.cacheNodes,
    required this.clusterAddress,
    required this.clusterId,
    required this.configurationEndpoint,
    required this.engine,
    required this.engineVersion,
    required this.id,
    required this.ipDiscovery,
    required this.logDeliveryConfigurations,
    required this.maintenanceWindow,
    required this.networkType,
    required this.nodeType,
    required this.notificationTopicArn,
    required this.numCacheNodes,
    required this.parameterGroupName,
    required this.port,
    required this.preferredOutpostArn,
    required this.region,
    required this.replicationGroupId,
    required this.securityGroupIds,
    required this.snapshotRetentionLimit,
    required this.snapshotWindow,
    required this.subnetGroupName,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'availabilityZone': availabilityZone,
      'cacheNodes': pulumi.Input.encodeList<GetClusterCacheNode, Map<String, dynamic>>(cacheNodes, (value) => value.toMap()),
      'clusterAddress': clusterAddress,
      'clusterId': clusterId,
      'configurationEndpoint': configurationEndpoint,
      'engine': engine,
      'engineVersion': engineVersion,
      'id': id,
      'ipDiscovery': ipDiscovery,
      'logDeliveryConfigurations': pulumi.Input.encodeList<GetClusterLogDeliveryConfiguration, Map<String, dynamic>>(logDeliveryConfigurations, (value) => value.toMap()),
      'maintenanceWindow': maintenanceWindow,
      'networkType': networkType,
      'nodeType': nodeType,
      'notificationTopicArn': notificationTopicArn,
      'numCacheNodes': numCacheNodes,
      'parameterGroupName': parameterGroupName,
      'port': port,
      'preferredOutpostArn': preferredOutpostArn,
      'region': region,
      'replicationGroupId': replicationGroupId,
      'securityGroupIds': securityGroupIds,
      'snapshotRetentionLimit': snapshotRetentionLimit,
      'snapshotWindow': snapshotWindow,
      'subnetGroupName': subnetGroupName,
      'tags': tags,
    };
  }

  factory GetClusterResult.fromMap(Map<String, dynamic> map) {
    return GetClusterResult(
      arn: map['arn'] as String,
      availabilityZone: map['availabilityZone'] as String,
      cacheNodes: pulumi.Input.decodeList<GetClusterCacheNode>(map['cacheNodes']!, (value) => GetClusterCacheNode.fromMap((value as Map).cast<String, dynamic>())),
      clusterAddress: map['clusterAddress'] as String,
      clusterId: map['clusterId'] as String,
      configurationEndpoint: map['configurationEndpoint'] as String,
      engine: map['engine'] as String,
      engineVersion: map['engineVersion'] as String,
      id: map['id'] as String,
      ipDiscovery: map['ipDiscovery'] as String,
      logDeliveryConfigurations: pulumi.Input.decodeList<GetClusterLogDeliveryConfiguration>(map['logDeliveryConfigurations']!, (value) => GetClusterLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      maintenanceWindow: map['maintenanceWindow'] as String,
      networkType: map['networkType'] as String,
      nodeType: map['nodeType'] as String,
      notificationTopicArn: map['notificationTopicArn'] as String,
      numCacheNodes: map['numCacheNodes'] as int,
      parameterGroupName: map['parameterGroupName'] as String,
      port: map['port'] as int,
      preferredOutpostArn: map['preferredOutpostArn'] as String,
      region: map['region'] as String,
      replicationGroupId: map['replicationGroupId'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] as String,
      subnetGroupName: map['subnetGroupName'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}

