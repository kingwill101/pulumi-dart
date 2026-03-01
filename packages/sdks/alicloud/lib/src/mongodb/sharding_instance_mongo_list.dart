// ignore_for_file: unused_element, unnecessary_cast


class ShardingInstanceMongoList {
  /// The connection address of the Config Server node.
  final String? connectString;
  /// The instance type of the mongo node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  final String nodeClass;
  /// The ID of the Config Server node.
  final String? nodeId;
  /// The connection port of the Config Server node.
  final int? port;

  /// Creates a new [ShardingInstanceMongoList].
  /// [connectString] The connection address of the Config Server node.
  /// [nodeClass] The instance type of the mongo node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  /// [nodeId] The ID of the Config Server node.
  /// [port] The connection port of the Config Server node.
  ShardingInstanceMongoList({
    this.connectString,
    required this.nodeClass,
    this.nodeId,
    this.port,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectString': ?connectString,
      'nodeClass': nodeClass,
      'nodeId': ?nodeId,
      'port': ?port,
    };
  }

  factory ShardingInstanceMongoList.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceMongoList(
      connectString: map['connectString'] == null ? null : map['connectString'] as String,
      nodeClass: map['nodeClass'] as String,
      nodeId: map['nodeId'] == null ? null : map['nodeId'] as String,
      port: map['port'] == null ? null : map['port'] as int,
    );
  }
}

