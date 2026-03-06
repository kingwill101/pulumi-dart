// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_shard_node_endpoint.dart';

class GetClusterShardNode {
  /// The Availability Zone in which the node resides.
  final pulumi.Input<String> availabilityZone;
  /// The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  final pulumi.Input<String> createTime;
  final pulumi.Input<List<GetClusterShardNodeEndpoint>> endpoints;
  /// Name of the cluster.
  final pulumi.Input<String> name;

  /// Creates a new [GetClusterShardNode].
  /// [availabilityZone] The Availability Zone in which the node resides.
  /// [createTime] The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  /// [endpoints] Required.
  /// [name] Name of the cluster.
  const GetClusterShardNode({
    required this.availabilityZone,
    required this.createTime,
    required this.endpoints,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'availabilityZone': availabilityZone,
      'createTime': createTime,
      'endpoints': pulumi.Input.mapInputValue<List<GetClusterShardNodeEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<GetClusterShardNodeEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
    };
  }

  factory GetClusterShardNode.fromMap(Map<String, dynamic> map) {
    return GetClusterShardNode(
      availabilityZone: pulumi.Input.fromValue(map['availabilityZone'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      endpoints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetClusterShardNodeEndpoint>(map['endpoints']!, (value) => GetClusterShardNodeEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

