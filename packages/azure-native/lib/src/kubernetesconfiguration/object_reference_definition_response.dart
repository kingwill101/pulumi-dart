// ignore_for_file: unused_element, unnecessary_cast


/// Object reference to a Kubernetes object on a cluster
class ObjectReferenceDefinitionResponse {
  /// Name of the object
  final String? name;
  /// Namespace of the object
  final String? namespace;

  /// Creates a new [ObjectReferenceDefinitionResponse].
  /// [name] Name of the object
  /// [namespace] Namespace of the object
  ObjectReferenceDefinitionResponse({
    this.name,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'namespace': ?namespace,
    };
  }

  factory ObjectReferenceDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return ObjectReferenceDefinitionResponse(
      name: map['name'] == null ? null : map['name'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}

