// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents the SKU name and Azure pricing tier for Analysis Services resource.
class ResourceSku {
  /// The number of instances in the read only query pool.
  final pulumi.Input<int?>? capacity;
  /// Name of the SKU level.
  final pulumi.Input<String> name;
  /// The name of the Azure pricing tier to which the SKU applies.
  final pulumi.Input<dynamic>? tier;

  /// Creates a new [ResourceSku].
  /// [capacity] The number of instances in the read only query pool.
  /// [name] Name of the SKU level.
  /// [tier] The name of the Azure pricing tier to which the SKU applies.
  ResourceSku({
    pulumi.Input<int?>? capacity,
    required this.name,
    this.tier,
  }) : capacity = capacity ?? pulumi.Input.fromValue(1);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'name': name,
      'tier': ?tier,
    };
  }

  factory ResourceSku.fromMap(Map<String, dynamic> map) {
    return ResourceSku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
