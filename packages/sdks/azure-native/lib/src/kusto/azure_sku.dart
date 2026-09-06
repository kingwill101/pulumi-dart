// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Azure SKU definition.
class AzureSku {
  /// The number of instances of the cluster.
  final pulumi.Input<int?>? capacity;
  /// SKU name.
  final pulumi.Input<dynamic> name;
  /// SKU tier.
  final pulumi.Input<dynamic> tier;

  /// Creates a new [AzureSku].
  /// [capacity] The number of instances of the cluster.
  /// [name] SKU name.
  /// [tier] SKU tier.
  const AzureSku({
    this.capacity,
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': tier,
    };
  }

  factory AzureSku.fromMap(Map<String, dynamic> map) {
    return AzureSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name']),
      tier: pulumi.Input.fromValue(map['tier']),
    );
  }
}
