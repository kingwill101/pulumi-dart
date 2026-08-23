// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_shard_node_endpoint.dart';

class ClusterShardNode {
  /// The Availability Zone in which the node resides.
  final pulumi.Input<String>? availabilityZone;
  /// The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  final pulumi.Input<String>? createTime;
  final pulumi.Input<List<ClusterShardNodeEndpoint>>? endpoints;
  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  final pulumi.Input<String>? name;

  /// Creates a new [ClusterShardNode].
  /// [availabilityZone] The Availability Zone in which the node resides.
  /// [createTime] The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  /// [endpoints] Optional.
  /// [name] Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `namePrefix`.
  const ClusterShardNode({
    this.availabilityZone,
    this.createTime,
    this.endpoints,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': ?availabilityZone,
      'createTime': ?createTime,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ClusterShardNodeEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ClusterShardNodeEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': ?name,
    };
  }

  factory ClusterShardNode.fromMap(Map<String, dynamic> map) {
    return ClusterShardNode(
      availabilityZone: (() { final guardedValue = map['availabilityZone']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpoints: (() { final guardedValue = map['endpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterShardNodeEndpoint>(guardedValue, (value) => ClusterShardNodeEndpoint.fromMap((value as Map).cast<String, dynamic>()))); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
