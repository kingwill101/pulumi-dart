// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents available Sku pricing tiers.
class NamespaceSku {
  /// Specifies the number of Throughput Units that defines the capacity for the namespace. The property default value is
  /// 1 which signifies 1 Throughput Unit = 1MB/s ingress and 2MB/s egress per namespace. Min capacity is 1 and
  /// max allowed capacity is 20.
  final pulumi.Input<int?>? capacity;
  /// The name of the SKU.
  final pulumi.Input<dynamic>? name;

  /// Creates a new [NamespaceSku].
  /// [capacity] Specifies the number of Throughput Units that defines the capacity for the namespace. The property default value is
  /// [name] The name of the SKU.
  const NamespaceSku({
    this.capacity,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': ?name,
    };
  }

  factory NamespaceSku.fromMap(Map<String, dynamic> map) {
    return NamespaceSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
