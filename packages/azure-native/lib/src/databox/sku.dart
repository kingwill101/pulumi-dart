// ignore_for_file: unused_element, unnecessary_cast


/// The Sku.
class Sku {
  /// The display name of the sku.
  final String? displayName;
  /// The sku family.
  final String? family;
  /// The sku name.
  final String name;

  /// Creates a new [Sku].
  /// [displayName] The display name of the sku.
  /// [family] The sku family.
  /// [name] The sku name.
  Sku({
    this.displayName,
    this.family,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'family': ?family,
      'name': name,
    };
  }

  factory Sku.fromMap(Map<String, dynamic> map) {
    return Sku(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      family: map['family'] == null ? null : map['family'] as String,
      name: map['name'] as String,
    );
  }
}

