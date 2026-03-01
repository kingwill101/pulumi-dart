// ignore_for_file: unused_element, unnecessary_cast


/// KeyVault secret object properties
class KeyVaultSecretObject {
  /// KeyVault secret name.
  final String name;
  /// KeyVault secret version.
  final String? version;

  /// Creates a new [KeyVaultSecretObject].
  /// [name] KeyVault secret name.
  /// [version] KeyVault secret version.
  KeyVaultSecretObject({
    required this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'version': ?version,
    };
  }

  factory KeyVaultSecretObject.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretObject(
      name: map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

