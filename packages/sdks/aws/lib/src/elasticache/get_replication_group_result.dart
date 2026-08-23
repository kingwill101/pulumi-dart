// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_group_log_delivery_configuration.dart';
import 'get_replication_group_node_group_configuration.dart';

/// Result data returned by getReplicationGroup.
class GetReplicationGroupResult {
  /// ARN of the created ElastiCache Replication Group.
  final String arn;
  /// Whether an AuthToken (password) is enabled.
  final bool authTokenEnabled;
  /// Whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails.
  final bool automaticFailoverEnabled;
  /// Whether cluster mode is enabled or disabled.
  final String clusterMode;
  /// Configuration endpoint address to allow host discovery.
  final String configurationEndpointAddress;
  /// Description of the replication group.
  final String description;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  final List<GetReplicationGroupLogDeliveryConfiguration> logDeliveryConfigurations;
  /// Identifiers of all the nodes that are part of this replication group.
  final List<String> memberClusters;
  /// Whether Multi-AZ Support is enabled for the replication group.
  final bool multiAzEnabled;
  /// Configuration of the node groups (shards). See below.
  final List<GetReplicationGroupNodeGroupConfiguration> nodeGroupConfigurations;
  /// Cluster node type.
  final String nodeType;
  /// Number of cache clusters that the replication group has.
  final int numCacheClusters;
  /// Number of node groups (shards) for the replication group.
  final int numNodeGroups;
  /// Port number on which the configuration endpoint will accept connections.
  final int port;
  /// Endpoint of the primary node in this node group (shard).
  final String primaryEndpointAddress;
  /// Endpoint of the reader node in this node group (shard).
  final String readerEndpointAddress;
  final String region;
  /// Number of replica nodes in each node group.
  final int replicasPerNodeGroup;
  final String replicationGroupId;
  /// Number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them.
  final int snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).
  final String snapshotWindow;

  /// Creates a new [GetReplicationGroupResult].
  /// [arn] ARN of the created ElastiCache Replication Group.
  /// [authTokenEnabled] Whether an AuthToken (password) is enabled.
  /// [automaticFailoverEnabled] Whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails.
  /// [clusterMode] Whether cluster mode is enabled or disabled.
  /// [configurationEndpointAddress] Configuration endpoint address to allow host discovery.
  /// [description] Description of the replication group.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [logDeliveryConfigurations] Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  /// [memberClusters] Identifiers of all the nodes that are part of this replication group.
  /// [multiAzEnabled] Whether Multi-AZ Support is enabled for the replication group.
  /// [nodeGroupConfigurations] Configuration of the node groups (shards). See below.
  /// [nodeType] Cluster node type.
  /// [numCacheClusters] Number of cache clusters that the replication group has.
  /// [numNodeGroups] Number of node groups (shards) for the replication group.
  /// [port] Port number on which the configuration endpoint will accept connections.
  /// [primaryEndpointAddress] Endpoint of the primary node in this node group (shard).
  /// [readerEndpointAddress] Endpoint of the reader node in this node group (shard).
  /// [region] Required.
  /// [replicasPerNodeGroup] Number of replica nodes in each node group.
  /// [replicationGroupId] Required.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them.
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).
  const GetReplicationGroupResult({
    required this.arn,
    required this.authTokenEnabled,
    required this.automaticFailoverEnabled,
    required this.clusterMode,
    required this.configurationEndpointAddress,
    required this.description,
    required this.id,
    required this.logDeliveryConfigurations,
    required this.memberClusters,
    required this.multiAzEnabled,
    required this.nodeGroupConfigurations,
    required this.nodeType,
    required this.numCacheClusters,
    required this.numNodeGroups,
    required this.port,
    required this.primaryEndpointAddress,
    required this.readerEndpointAddress,
    required this.region,
    required this.replicasPerNodeGroup,
    required this.replicationGroupId,
    required this.snapshotRetentionLimit,
    required this.snapshotWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'authTokenEnabled': authTokenEnabled,
      'automaticFailoverEnabled': automaticFailoverEnabled,
      'clusterMode': clusterMode,
      'configurationEndpointAddress': configurationEndpointAddress,
      'description': description,
      'id': id,
      'logDeliveryConfigurations': pulumi.Input.encodeList<GetReplicationGroupLogDeliveryConfiguration, Map<String, dynamic>>(logDeliveryConfigurations, (value) => value.toMap()),
      'memberClusters': memberClusters,
      'multiAzEnabled': multiAzEnabled,
      'nodeGroupConfigurations': pulumi.Input.encodeList<GetReplicationGroupNodeGroupConfiguration, Map<String, dynamic>>(nodeGroupConfigurations, (value) => value.toMap()),
      'nodeType': nodeType,
      'numCacheClusters': numCacheClusters,
      'numNodeGroups': numNodeGroups,
      'port': port,
      'primaryEndpointAddress': primaryEndpointAddress,
      'readerEndpointAddress': readerEndpointAddress,
      'region': region,
      'replicasPerNodeGroup': replicasPerNodeGroup,
      'replicationGroupId': replicationGroupId,
      'snapshotRetentionLimit': snapshotRetentionLimit,
      'snapshotWindow': snapshotWindow,
    };
  }

  factory GetReplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupResult(
      arn: map['arn'] as String,
      authTokenEnabled: map['authTokenEnabled'] as bool,
      automaticFailoverEnabled: map['automaticFailoverEnabled'] as bool,
      clusterMode: map['clusterMode'] as String,
      configurationEndpointAddress: map['configurationEndpointAddress'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      logDeliveryConfigurations: pulumi.Input.decodeList<GetReplicationGroupLogDeliveryConfiguration>(map['logDeliveryConfigurations']!, (value) => GetReplicationGroupLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      memberClusters: (map['memberClusters'] as List).cast<String>(),
      multiAzEnabled: map['multiAzEnabled'] as bool,
      nodeGroupConfigurations: pulumi.Input.decodeList<GetReplicationGroupNodeGroupConfiguration>(map['nodeGroupConfigurations']!, (value) => GetReplicationGroupNodeGroupConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      nodeType: map['nodeType'] as String,
      numCacheClusters: map['numCacheClusters'] as int,
      numNodeGroups: map['numNodeGroups'] as int,
      port: map['port'] as int,
      primaryEndpointAddress: map['primaryEndpointAddress'] as String,
      readerEndpointAddress: map['readerEndpointAddress'] as String,
      region: map['region'] as String,
      replicasPerNodeGroup: map['replicasPerNodeGroup'] as int,
      replicationGroupId: map['replicationGroupId'] as String,
      snapshotRetentionLimit: map['snapshotRetentionLimit'] as int,
      snapshotWindow: map['snapshotWindow'] as String,
    );
  }
}
