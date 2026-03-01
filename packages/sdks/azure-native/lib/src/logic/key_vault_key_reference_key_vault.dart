// ignore_for_file: unused_element, unnecessary_cast


/// The key vault reference.
class KeyVaultKeyReferenceKeyVault {
  /// The resource id.
  final String? id;

  /// Creates a new [KeyVaultKeyReferenceKeyVault].
  /// [id] The resource id.
  KeyVaultKeyReferenceKeyVault({
    this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': ?id,
    };
  }

  factory KeyVaultKeyReferenceKeyVault.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceKeyVault(
      id: map['id'] == null ? null : map['id'] as String,
    );
  }
}

