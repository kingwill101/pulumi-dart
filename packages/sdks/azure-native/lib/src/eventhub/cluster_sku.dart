// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// SKU parameters particular to a cluster instance.
class ClusterSku {
  /// The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  final pulumi.Input<int?>? capacity;
  /// Name of this SKU.
  final pulumi.Input<dynamic> name;

  /// Creates a new [ClusterSku].
  /// [capacity] The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  /// [name] Name of this SKU.
  const ClusterSku({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory ClusterSku.fromMap(Map<String, dynamic> map) {
    return ClusterSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name']),
    );
  }
}
