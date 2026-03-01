// ignore_for_file: unused_element, unnecessary_cast


/// Compute information of a server.
class Sku {
  /// Name by which is known a given compute size assigned to a server.
  final String name;
  /// Tier of the compute assigned to a server.
  final String tier;

  /// Creates a new [Sku].
  /// [name] Name by which is known a given compute size assigned to a server.
  /// [tier] Tier of the compute assigned to a server.
  Sku({
    required this.name,
    required this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tier': tier,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] as String,
      tier: map['tier'] as String,
    );
  }
}

