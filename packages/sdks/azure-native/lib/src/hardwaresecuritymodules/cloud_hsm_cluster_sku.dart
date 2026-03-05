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
      'name': pulumi.Input.mapInputValue<CloudHsmClusterSkuName, String>(name, (value) => value.wireValue),
    };
  }

  factory CloudHsmClusterSku.fromMap(Map<String, dynamic> map) {
    return CloudHsmClusterSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: pulumi.Input.fromValue(map['family'] as String),
      name: pulumi.Input.fromValue(CloudHsmClusterSkuName.fromValue(map['name']! as String)),
    );
  }
}

