// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingInstanceConfigServerList {
  /// The connection address of the Config Server node.
  final pulumi.Input<String>? connectString;
  /// The max connections of the Config Server node.
  final pulumi.Input<int>? maxConnections;
  /// The maximum IOPS of the Config Server node.
  final pulumi.Input<int>? maxIops;
  /// The instance type of the ConfigServer node. Valid values: `mdb.shard.2x.xlarge.d`, `dds.cs.mid`.
  final pulumi.Input<String>? nodeClass;
  /// The description of the Config Server node.
  final pulumi.Input<String>? nodeDescription;
  /// The ID of the Config Server node.
  final pulumi.Input<String>? nodeId;
  /// The storage space of the ConfigServer node.
  final pulumi.Input<int>? nodeStorage;
  /// The connection port of the Config Server node.
  final pulumi.Input<int>? port;

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
      connectString: (() { final guardedValue = map['connectString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxConnections: (() { final guardedValue = map['maxConnections']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      maxIops: (() { final guardedValue = map['maxIops']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nodeClass: (() { final guardedValue = map['nodeClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeDescription: (() { final guardedValue = map['nodeDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeId: (() { final guardedValue = map['nodeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeStorage: (() { final guardedValue = map['nodeStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      port: (() { final guardedValue = map['port']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

