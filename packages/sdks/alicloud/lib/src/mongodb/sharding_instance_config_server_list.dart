// ignore_for_file: unused_element, unnecessary_cast


class ShardingInstanceConfigServerList {
  /// The connection address of the Config Server node.
  final String? connectString;
  /// The max connections of the Config Server node.
  final int? maxConnections;
  /// The maximum IOPS of the Config Server node.
  final int? maxIops;
  /// The instance type of the ConfigServer node. Valid values: `mdb.shard.2x.xlarge.d`, `dds.cs.mid`.
  final String? nodeClass;
  /// The description of the Config Server node.
  final String? nodeDescription;
  /// The ID of the Config Server node.
  final String? nodeId;
  /// The storage space of the ConfigServer node.
  final int? nodeStorage;
  /// The connection port of the Config Server node.
  final int? port;

  /// Creates a new [ShardingInstanceConfigServerList].
  /// [connectString] The connection address of the Config Server node.
  /// [maxConnections] The max connections of the Config Server node.
  /// [maxIops] The maximum IOPS of the Config Server node.
  /// [nodeClass] The instance type of the ConfigServer node. Valid values: `mdb.shard.2x.xlarge.d`, `dds.cs.mid`.
  /// [nodeDescription] The description of the Config Server node.
  /// [nodeId] The ID of the Config Server node.
  /// [nodeStorage] The storage space of the ConfigServer node.
  /// [port] The connection port of the Config Server node.
  ShardingInstanceConfigServerList({
    this.connectString,
    this.maxConnections,
    this.maxIops,
    this.nodeClass,
    this.nodeDescription,
    this.nodeId,
    this.nodeStorage,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectString': ?connectString,
      'maxConnections': ?maxConnections,
      'maxIops': ?maxIops,
      'nodeClass': ?nodeClass,
      'nodeDescription': ?nodeDescription,
      'nodeId': ?nodeId,
      'nodeStorage': ?nodeStorage,
      'port': ?port,
    };
  }

  factory ShardingInstanceConfigServerList.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceConfigServerList(
      connectString: map['connectString'] == null ? null : map['connectString'] as String,
      maxConnections: map['maxConnections'] == null ? null : map['maxConnections'] as int,
      maxIops: map['maxIops'] == null ? null : map['maxIops'] as int,
      nodeClass: map['nodeClass'] == null ? null : map['nodeClass'] as String,
      nodeDescription: map['nodeDescription'] == null ? null : map['nodeDescription'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      nodeStorage: map['nodeStorage'] == null ? null : map['nodeStorage'] as int,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

