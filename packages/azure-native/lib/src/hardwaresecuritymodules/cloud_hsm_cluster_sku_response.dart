// ignore_for_file: unused_element, unnecessary_cast


/// Cloud Hsm Cluster SKU information
class CloudHsmClusterSkuResponse {
  /// Sku capacity
  final int? capacity;
  /// Sku family of the Cloud HSM Cluster
  final String family;
  /// Sku name of the Cloud HSM Cluster
  final String name;

  /// Creates a new [CloudHsmClusterSkuResponse].
  /// [capacity] Sku capacity
  /// [family] Sku family of the Cloud HSM Cluster
  /// [name] Sku name of the Cloud HSM Cluster
  CloudHsmClusterSkuResponse({
    this.capacity,
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': family,
      'name': name,
    };
  }

  factory CloudHsmClusterSkuResponse.fromMap(Map<String, dynamic> map) {
    return CloudHsmClusterSkuResponse(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] as String,
      name: map['name'] as String,
    );
  }
}

