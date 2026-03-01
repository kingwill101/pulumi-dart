// ignore_for_file: unused_element, unnecessary_cast


/// SKU parameters particular to a cluster instance.
class ClusterSkuResponse {
  /// The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  final int? capacity;
  /// Name of this SKU.
  final String name;

  /// Creates a new [ClusterSkuResponse].
  /// [capacity] The quantity of Event Hubs Cluster Capacity Units contained in this cluster.
  /// [name] Name of this SKU.
  ClusterSkuResponse({
    this.capacity,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
    };
  }

  factory ClusterSkuResponse.fromMap(Map<String, dynamic> map) {
    return ClusterSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] as String,
    );
  }
}

