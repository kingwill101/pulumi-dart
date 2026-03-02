// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents available Sku pricing tiers.
class NamespaceSkuResponse {
  /// Specifies the number of Throughput Units that defines the capacity for the namespace. The property default value is
  /// 1 which signifies 1 Throughput Unit = 1MB/s ingress and 2MB/s egress per namespace. Min capacity is 1 and
  /// max allowed capacity is 20.
  final pulumi.Input<int>? capacity;
  /// The name of the SKU.
  final pulumi.Input<String>? name;

  /// Creates a new [NamespaceSkuResponse].
  /// [capacity] Specifies the number of Throughput Units that defines the capacity for the namespace. The property default value is
  /// [name] The name of the SKU.
  NamespaceSkuResponse({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory NamespaceSkuResponse.fromMap(Map<String, dynamic> map) {
    return NamespaceSkuResponse(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

