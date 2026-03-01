// ignore_for_file: unused_element, unnecessary_cast


/// SKU parameters particular to a cluster instance.
class ClusterSku {
  /// The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  final int? capacity;
  /// Name of this SKU.
  final String name;

  /// Creates a new [ClusterSku].
  /// [capacity] The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  /// [name] Name of this SKU.
  ClusterSku({
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
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

