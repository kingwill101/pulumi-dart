// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_shard_node_endpoint/cluster_shard_node_endpoint.dart';

class ClusterShardNode {
  /// The Availability Zone in which the node resides.
  final String? availabilityZone;

  /// The date and time when the node was created. Example: `2022-01-01T21:00:00Z`.
  final String? createTime;
  final List<ClusterShardNodeEndpoint>? endpoints;

  /// Name of the cluster. If omitted, the provider will assign a random, unique name. Conflicts with `name_prefix`.
  final String? name;

  ClusterShardNode({
    this.availabilityZone,
    this.createTime,
    this.endpoints,
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final availabilityZoneValue = availabilityZone;
    if (availabilityZoneValue != null) {
      map['availabilityZone'] = availabilityZoneValue;
    }
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final endpointsValue = endpoints;
    if (endpointsValue != null) {
      map['endpoints'] = pulumi.Input.encodeList<ClusterShardNodeEndpoint,
          Map<String, dynamic>>(endpointsValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    return map;
  }

  factory ClusterShardNode.fromMap(Map<String, dynamic> map) {
    return ClusterShardNode(
      availabilityZone: map['availabilityZone'] == null
          ? null
          : map['availabilityZone'] as String,
      createTime:
          map['createTime'] == null ? null : map['createTime'] as String,
      endpoints: map['endpoints'] == null
          ? null
          : pulumi.Input.decodeList<ClusterShardNodeEndpoint>(
              map['endpoints'],
              (value) => ClusterShardNodeEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}
