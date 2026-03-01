// ignore_for_file: unused_element, unnecessary_cast


/// Url and version of the KeyVault Secret
class KeyPropertiesResponse {
  /// The identifier of the key vault key used to encrypt data.
  final String? name;
  /// The version of the identity which will be used to access key vault.
  final String? version;

  /// Creates a new [KeyPropertiesResponse].
  /// [name] The identifier of the key vault key used to encrypt data.
  /// [version] The version of the identity which will be used to access key vault.
  KeyPropertiesResponse({
    this.name,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'version': ?version,
    };
  }

  factory KeyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyPropertiesResponse(
      name: map['name'] == null ? null : map['name'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

