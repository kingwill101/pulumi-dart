// ignore_for_file: unused_element, unnecessary_cast


/// The key vault reference.
class KeyVaultReference {
  /// The resource id.
  final String? id;
  /// The key vault name.
  final String? name;

  /// Creates a new [KeyVaultReference].
  /// [id] The resource id.
  /// [name] The key vault name.
  KeyVaultReference({
    this.id,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
      'name': ?name,
    };
  }

  factory KeyVaultReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultReference(
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

