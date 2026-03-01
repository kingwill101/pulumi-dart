// ignore_for_file: unused_element, unnecessary_cast


/// Billing information related properties of a server.
class Sku {
  /// The scale up/out capacity, representing server's compute units.
  final int? capacity;
  /// The family of hardware.
  final String? family;
  /// The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  final String name;
  /// The size code, to be interpreted by resource as appropriate.
  final String? size;
  /// The tier of the particular SKU, e.g. Basic.
  final String? tier;

  /// Creates a new [Sku].
  /// [capacity] The scale up/out capacity, representing server's compute units.
  /// [family] The family of hardware.
  /// [name] The name of the sku, typically, tier + family + cores, e.g. B_Gen4_1, GP_Gen5_8.
  /// [size] The size code, to be interpreted by resource as appropriate.
  /// [tier] The tier of the particular SKU, e.g. Basic.
  Sku({
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

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
      size: map['size'] == null ? null : map['size'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

