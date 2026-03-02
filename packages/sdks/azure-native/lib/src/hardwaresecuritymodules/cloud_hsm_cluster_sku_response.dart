// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cloud Hsm Cluster SKU information
class CloudHsmClusterSkuResponse {
  /// Sku capacity
  final pulumi.Input<int>? capacity;
  /// Sku family of the Cloud HSM Cluster
  final pulumi.Input<String> family;
  /// Sku name of the Cloud HSM Cluster
  final pulumi.Input<String> name;

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
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: (map['family'] as String).input(),
      name: (map['name'] as String).input(),
    );
  }
}

