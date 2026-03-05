// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The account SKU.
class Sku {
  /// Gets or sets the SKU capacity.
  final pulumi.Input<int>? capacity;
  /// Gets or sets the SKU family.
  final pulumi.Input<String>? family;
  /// Gets or sets the SKU name of the account.
  final pulumi.Input<String> name;

  /// Creates a new [Sku].
  /// [capacity] Gets or sets the SKU capacity.
  /// [family] Gets or sets the SKU family.
  /// [name] Gets or sets the SKU name of the account.
  Sku({
    this.capacity,
    this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: (() { final guardedValue = map['capacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}

