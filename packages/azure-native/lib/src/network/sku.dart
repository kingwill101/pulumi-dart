// ignore_for_file: unused_element, unnecessary_cast


/// The sku of this Bastion Host.
class Sku {
  /// The name of the sku of this Bastion Host.
  final String? name;

  /// Creates a new [Sku].
  /// [name] The name of the sku of this Bastion Host.
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

