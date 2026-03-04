// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU parameters particular to a cluster instance.
class ClusterSkuResponse {
  /// The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  final pulumi.Input<int>? capacity;

  /// Name of this SKU.
  final pulumi.Input<String> name;

  /// Creates a new [ClusterSkuResponse].
  /// [capacity] The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  /// [name] Name of this SKU.
  ClusterSkuResponse({this.capacity, required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'capacity': ?capacity, 'name': name};
  }

  factory ClusterSkuResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSkuResponse(
      capacity: (() {
        final guardedValue = map['capacity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
