// ignore_for_file: unused_element, unnecessary_cast


class GetNamespacesNamespace {
  /// The ID of the Namespace.
  final String id;
  /// The Description of Namespace.
  final String namespaceDescription;
  /// The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  final String namespaceId;
  /// The Name of Namespace.
  final String namespaceName;

  /// Creates a new [GetNamespacesNamespace].
  /// [id] The ID of the Namespace.
  /// [namespaceDescription] The Description of Namespace.
  /// [namespaceId] The Id of Namespace.It can contain 2 to 32 characters.The value is in format {RegionId}:{namespace}.
  /// [namespaceName] The Name of Namespace.
  GetNamespacesNamespace({
    required this.id,
    required this.namespaceDescription,
    required this.namespaceId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespaceDescription': namespaceDescription,
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
    };
  }

  factory GetNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetNamespacesNamespace(
      id: map['id'] as String,
      namespaceDescription: map['namespaceDescription'] as String,
      namespaceId: map['namespaceId'] as String,
      namespaceName: map['namespaceName'] as String,
    );
  }
}

