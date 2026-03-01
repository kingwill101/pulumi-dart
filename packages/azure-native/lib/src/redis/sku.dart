// ignore_for_file: unused_element, unnecessary_cast


/// SKU parameters supplied to the create Redis operation.
class Sku {
  /// The size of the Redis cache to deploy. Valid values: for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium) family (1, 2, 3, 4).
  final int capacity;
  /// The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium).
  final String family;
  /// The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)
  final String name;

  /// Creates a new [Sku].
  /// [capacity] The size of the Redis cache to deploy. Valid values: for C (Basic/Standard) family (0, 1, 2, 3, 4, 5, 6), for P (Premium) family (1, 2, 3, 4).
  /// [family] The SKU family to use. Valid values: (C, P). (C = Basic/Standard, P = Premium).
  /// [name] The type of Redis cache to deploy. Valid values: (Basic, Standard, Premium)
  Sku({
    required this.capacity,
    required this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capacity': capacity,
      'family': family,
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      capacity: map['capacity'] as int,
      family: map['family'] as String,
      name: map['name'] as String,
    );
  }
}

