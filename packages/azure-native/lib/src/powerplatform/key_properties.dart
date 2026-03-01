// ignore_for_file: unused_element, unnecessary_cast


/// Url and version of the KeyVault Secret
class KeyProperties {
  /// The identifier of the key vault key used to encrypt data.
  final String? name;
  /// The version of the identity which will be used to access key vault.
  final String? version;

  /// Creates a new [KeyProperties].
  /// [name] The identifier of the key vault key used to encrypt data.
  /// [version] The version of the identity which will be used to access key vault.
  KeyProperties({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory KeyProperties.fromMap(Map<String, dynamic> map) {
    return KeyProperties(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

