// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_hsm_cluster_sku_name.dart';

/// Cloud Hsm Cluster SKU information
class CloudHsmClusterSku {
  /// Sku capacity
  final pulumi.Input<int?>? capacity;
  /// Sku family of the Cloud HSM Cluster
  final pulumi.Input<dynamic> family;
  /// Sku name of the Cloud HSM Cluster
  final pulumi.Input<CloudHsmClusterSkuName> name;

  /// Creates a new [CloudHsmClusterSku].
  /// [capacity] Sku capacity
  /// [family] Sku family of the Cloud HSM Cluster
  /// [name] Sku name of the Cloud HSM Cluster
  const CloudHsmClusterSku({
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
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      family: pulumi.Input.fromValue(map['family']),
      name: pulumi.Input.fromValue(CloudHsmClusterSkuName.fromValue(map['name']! as String)),
    );
  }
}
