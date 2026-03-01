// ignore_for_file: unused_element, unnecessary_cast


/// The SKU to be applied for this resource
class Sku {
  /// Name of the SKU to be applied
  final String? name;

  /// Creates a new [Sku].
  /// [name] Name of the SKU to be applied
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

