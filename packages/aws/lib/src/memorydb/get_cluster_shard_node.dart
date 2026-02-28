// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_shard_node_endpoint.dart';

class GetClusterShardNode {
  /// The Availability Zone in which the node resides.
  final String availabilityZone;

  /// The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  final String createTime;
  final List<GetClusterShardNodeEndpoint> endpoints;

  /// Name of the cluster.
  final String name;

  /// Creates a new [GetClusterShardNode].
  /// [availabilityZone] The Availability Zone in which the node resides.
  /// [createTime] The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  /// [endpoints] Required.
  /// [name] Name of the cluster.
  GetClusterShardNode({
    required this.availabilityZone,
    required this.createTime,
    required this.endpoints,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['availabilityZone'] = availabilityZone;
    map['createTime'] = createTime;
    map['endpoints'] = pulumi.Input.encodeList<GetClusterShardNodeEndpoint,
        Map<String, dynamic>>(endpoints, (value) => value.toMap());
    map['name'] = name;
    return map;
  }

  factory GetClusterShardNode.fromMap(Map<String, dynamic> map) {
    return GetClusterShardNode(
      availabilityZone: map['availabilityZone'] as String,
      createTime: map['createTime'] as String,
      endpoints: pulumi.Input.decodeList<GetClusterShardNodeEndpoint>(
          map['endpoints'],
          (value) => GetClusterShardNodeEndpoint.fromMap(
              (value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
    );
  }
}
