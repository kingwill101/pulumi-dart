// ignore_for_file: unused_element, unnecessary_cast


/// The account SKU.
class Sku {
  /// Gets or sets the SKU capacity.
  final int? capacity;
  /// Gets or sets the SKU family.
  final String? family;
  /// Gets or sets the SKU name of the account.
  final String name;

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
      capacity: map['capacity'] == null ? null : map['capacity'] as int,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
    );
  }
}

