// ignore_for_file: unused_element, unnecessary_cast


/// SecretReference represents a Secret Reference. It has enough information to retrieve secret in any namespace
class SecretReference {
  /// name is unique within a namespace to reference a secret resource.
  final String? name;
  /// namespace defines the space within which the secret name must be unique.
  final String? namespace;

  /// Creates a new [SecretReference].
  /// [name] name is unique within a namespace to reference a secret resource.
  /// [namespace] namespace defines the space within which the secret name must be unique.
  SecretReference({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory SecretReference.fromMap(Map<String, dynamic> map) {
    return SecretReference(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

