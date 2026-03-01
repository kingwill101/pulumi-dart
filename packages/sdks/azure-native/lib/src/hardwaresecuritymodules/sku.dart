// ignore_for_file: unused_element, unnecessary_cast


/// SKU of the dedicated HSM
class Sku {
  /// SKU of the dedicated HSM
  final String? name;

  /// Creates a new [Sku].
  /// [name] SKU of the dedicated HSM
  Sku({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

