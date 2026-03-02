// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing information related properties of a server.
class SingleServerSku {
  /// The scale up/out capacity, representing server's compute units.
  final pulumi.Input<int>? capacity;
  /// The family of hardware.
  final pulumi.Input<String>? family;
  /// The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  final pulumi.Input<String> name;
  /// The size code, to be interpreted by resource as appropriate.
  final pulumi.Input<String>? size;
  /// The tier of the particular SKU, e.g. Basic.
  final pulumi.Input<String>? tier;

  /// Creates a new [SingleServerSku].
  /// [capacity] The scale up/out capacity, representing server's compute units.
  /// [family] The family of hardware.
  /// [name] The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  /// [size] The size code, to be interpreted by resource as appropriate.
  /// [tier] The tier of the particular SKU, e.g. Basic.
  SingleServerSku({
    this.capacity,
    this.family,
    required this.name,
    this.size,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': ?capacity,
      'family': ?family,
      'name': name,
      'size': ?size,
      'tier': ?tier,
    };
  }

  factory SingleServerSku.fromMap(Map<String, dynamic> map) {
    return SingleServerSku(
      capacity: map['capacity'] == null ? null : (map['capacity'] as int).input(),
      family: map['family'] == null ? null : (map['family'] as String).input(),
      name: (map['name'] as String).input(),
      size: map['size'] == null ? null : (map['size'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

