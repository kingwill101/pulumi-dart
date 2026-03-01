// ignore_for_file: unused_element, unnecessary_cast


/// The cluster sku definition.
class ClusterSku {
  /// The capacity reservation level in Gigabytes for this cluster.
  final double? capacity;
  /// The SKU (tier) of a cluster.
  final String? name;

  /// Creates a new [ClusterSku].
  /// [capacity] The capacity reservation level in Gigabytes for this cluster.
  /// [name] The SKU (tier) of a cluster.
  ClusterSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory ClusterSku.fromMap(Map<String, dynamic> map) {
    return ClusterSku(
      capacity: map['capacity'] == null ? null : map['capacity'] as double,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

