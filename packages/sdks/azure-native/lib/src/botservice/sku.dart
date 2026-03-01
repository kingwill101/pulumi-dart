// ignore_for_file: unused_element, unnecessary_cast


/// The SKU of the cognitive services account.
class Sku {
  /// The sku name
  final String name;

  /// Creates a new [Sku].
  /// [name] The sku name
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

