// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_hsm_cluster_sku_name.dart';

/// Cloud Hsm Cluster SKU information
class CloudHsmClusterSku {
  /// Sku capacity
  final pulumi.Input<int>? capacity;
  /// Sku family of the Cloud HSM Cluster
  final pulumi.Input<String> family;
  /// Sku name of the Cloud HSM Cluster
  final pulumi.Input<CloudHsmClusterSkuName> name;

  /// Creates a new [CloudHsmClusterSku].
  /// [capacity] Sku capacity
  /// [family] Sku family of the Cloud HSM Cluster
  /// [name] Sku name of the Cloud HSM Cluster
  CloudHsmClusterSku({
    this.capacity,
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': family,
      'name': pulumi.Input.mapInputValue<CloudHsmClusterSkuName, String>(name, (value) => value.value),
    };
  }

  factory CloudHsmClusterSku.fromMap(Map<String, dynamic> map) {
    return CloudHsmClusterSku(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: (map['family'] as String).input(),
      name: (CloudHsmClusterSkuName.fromValue(map['name'] as String)).input(),
    );
  }
}

