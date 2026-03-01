// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the Maps Account.
class Sku {
  /// The name of the SKU, in standard format (such as G2).
  final String name;

  /// Creates a new [Sku].
  /// [name] The name of the SKU, in standard format (such as G2).
  Sku({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] as String,
    );
  }
}

