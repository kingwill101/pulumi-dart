// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the cluster. This determines the size/capacity of the cluster. Required on PUT (CreateOrUpdate) requests.
class ClusterSku {
  /// Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  final int? capacity;
  /// Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
  final String? name;

  /// Creates a new [ClusterSku].
  /// [capacity] Denotes the number of streaming units the cluster can support. Valid values for this property are multiples of 36 with a minimum value of 36 and maximum value of 216. Required on PUT (CreateOrUpdate) requests.
  /// [name] Specifies the SKU name of the cluster. Required on PUT (CreateOrUpdate) requests.
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
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

