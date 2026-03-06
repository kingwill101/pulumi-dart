// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingInstanceMongoList {
  /// The connection address of the Config Server node.
  final pulumi.Input<String>? connectString;
  /// The instance type of the mongo node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  final pulumi.Input<String> nodeClass;
  /// The ID of the Config Server node.
  final pulumi.Input<String>? nodeId;
  /// The connection port of the Config Server node.
  final pulumi.Input<int>? port;

  /// Creates a new [ShardingInstanceMongoList].
  /// [connectString] The connection address of the Config Server node.
  /// [nodeClass] The instance type of the mongo node. see [Instance specifications](https://www.alibabacloud.com/help/doc-detail/57141.htm).
  /// [nodeId] The ID of the Config Server node.
  /// [port] The connection port of the Config Server node.
  const ShardingInstanceMongoList({
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
      connectString: (() { final guardedValue = map['connectString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeClass: pulumi.Input.fromValue(map['nodeClass'] as String),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

