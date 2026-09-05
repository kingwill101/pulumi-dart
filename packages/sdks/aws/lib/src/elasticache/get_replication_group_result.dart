// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_replication_group_log_delivery_configuration.dart';
import 'get_replication_group_node_group_configuration.dart';

/// Result data returned by getReplicationGroup.
class GetReplicationGroupResult {
  /// ARN of the created ElastiCache Replication Group.
  final String? arn;
  /// Whether an AuthToken (password) is enabled.
  final bool? authTokenEnabled;
  /// Whether a read-only replica will be automatically promoted to read/write primary if the existing primary fails.
  final bool? automaticFailoverEnabled;
  /// Whether cluster mode is enabled or disabled.
  final String? clusterMode;
  /// Configuration endpoint address to allow host discovery.
  final String? configurationEndpointAddress;
  /// Description of the replication group.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Redis [SLOWLOG](https://redis.io/commands/slowlog) or Redis [Engine Log](https://docs.aws.amazon.com/AmazonElastiCache/latest/red-ug/Log_Delivery.html#Log_contents-engine-log) delivery settings.
  final List<GetReplicationGroupLogDeliveryConfiguration>? logDeliveryConfigurations;
  /// Identifiers of all the nodes that are part of this replication group.
  final List<String>? memberClusters;
  /// Whether Multi-AZ Support is enabled for the replication group.
  final bool? multiAzEnabled;
  /// Configuration of the node groups (shards). See below.
  final List<GetReplicationGroupNodeGroupConfiguration>? nodeGroupConfigurations;
  /// Cluster node type.
  final String? nodeType;
  /// Number of cache clusters that the replication group has.
  final int? numCacheClusters;
  /// Number of node groups (shards) for the replication group.
  final int? numNodeGroups;
  /// Port number on which the configuration endpoint will accept connections.
  final int? port;
  /// Endpoint of the primary node in this node group (shard).
  final String? primaryEndpointAddress;
  /// Endpoint of the reader node in this node group (shard).
  final String? readerEndpointAddress;
  final String? region;
  /// Number of replica nodes in each node group.
  final int? replicasPerNodeGroup;
  final String? replicationGroupId;
  /// Number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them.
  final int? snapshotRetentionLimit;
  /// Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).
  final String? snapshotWindow;

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
  /// [region] Optional.
  /// [replicasPerNodeGroup] Number of replica nodes in each node group.
  /// [replicationGroupId] Optional.
  /// [snapshotRetentionLimit] Number of days for which ElastiCache retains automatic cache cluster snapshots before deleting them.
  /// [snapshotWindow] Daily time range (in UTC) during which ElastiCache begins taking a daily snapshot of your node group (shard).
  const GetReplicationGroupResult({
    this.arn,
    this.authTokenEnabled,
    this.automaticFailoverEnabled,
    this.clusterMode,
    this.configurationEndpointAddress,
    this.description,
    this.id,
    this.logDeliveryConfigurations,
    this.memberClusters,
    this.multiAzEnabled,
    this.nodeGroupConfigurations,
    this.nodeType,
    this.numCacheClusters,
    this.numNodeGroups,
    this.port,
    this.primaryEndpointAddress,
    this.readerEndpointAddress,
    this.region,
    this.replicasPerNodeGroup,
    this.replicationGroupId,
    this.snapshotRetentionLimit,
    this.snapshotWindow,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'authTokenEnabled': ?authTokenEnabled,
      'automaticFailoverEnabled': ?automaticFailoverEnabled,
      'clusterMode': ?clusterMode,
      'configurationEndpointAddress': ?configurationEndpointAddress,
      'description': ?description,
      'id': ?id,
      'logDeliveryConfigurations': ?(() { final guardedValue = logDeliveryConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationGroupLogDeliveryConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'memberClusters': ?memberClusters,
      'multiAzEnabled': ?multiAzEnabled,
      'nodeGroupConfigurations': ?(() { final guardedValue = nodeGroupConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetReplicationGroupNodeGroupConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'nodeType': ?nodeType,
      'numCacheClusters': ?numCacheClusters,
      'numNodeGroups': ?numNodeGroups,
      'port': ?port,
      'primaryEndpointAddress': ?primaryEndpointAddress,
      'readerEndpointAddress': ?readerEndpointAddress,
      'region': ?region,
      'replicasPerNodeGroup': ?replicasPerNodeGroup,
      'replicationGroupId': ?replicationGroupId,
      'snapshotRetentionLimit': ?snapshotRetentionLimit,
      'snapshotWindow': ?snapshotWindow,
    };
  }

  factory GetReplicationGroupResult.fromMap(Map<String, dynamic> map) {
    return GetReplicationGroupResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      authTokenEnabled: (() { final guardedValue = map['authTokenEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      automaticFailoverEnabled: (() { final guardedValue = map['automaticFailoverEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      clusterMode: (() { final guardedValue = map['clusterMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      configurationEndpointAddress: (() { final guardedValue = map['configurationEndpointAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      logDeliveryConfigurations: (() { final guardedValue = map['logDeliveryConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationGroupLogDeliveryConfiguration>(guardedValue, (value) => GetReplicationGroupLogDeliveryConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      memberClusters: (() { final guardedValue = map['memberClusters']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      multiAzEnabled: (() { final guardedValue = map['multiAzEnabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      nodeGroupConfigurations: (() { final guardedValue = map['nodeGroupConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetReplicationGroupNodeGroupConfiguration>(guardedValue, (value) => GetReplicationGroupNodeGroupConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      numCacheClusters: (() { final guardedValue = map['numCacheClusters']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      numNodeGroups: (() { final guardedValue = map['numNodeGroups']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      primaryEndpointAddress: (() { final guardedValue = map['primaryEndpointAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      readerEndpointAddress: (() { final guardedValue = map['readerEndpointAddress']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      replicasPerNodeGroup: (() { final guardedValue = map['replicasPerNodeGroup']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      replicationGroupId: (() { final guardedValue = map['replicationGroupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      snapshotRetentionLimit: (() { final guardedValue = map['snapshotRetentionLimit']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      snapshotWindow: (() { final guardedValue = map['snapshotWindow']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
