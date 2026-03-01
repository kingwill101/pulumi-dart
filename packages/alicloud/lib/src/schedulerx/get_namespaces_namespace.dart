// ignore_for_file: unused_element, unnecessary_cast


class GetNamespacesNamespace {
  /// The description of the resource.
  final String description;
  /// The ID of the resource.
  final String id;
  /// The ID of the Namespace.
  final String namespaceId;
  /// The name of the resource.
  final String namespaceName;

  /// Creates a new [GetNamespacesNamespace].
  /// [description] The description of the resource.
  /// [id] The ID of the resource.
  /// [namespaceId] The ID of the Namespace.
  /// [namespaceName] The name of the resource.
  GetNamespacesNamespace({
    required this.description,
    required this.id,
    required this.namespaceId,
    required this.namespaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'namespaceId': namespaceId,
      'namespaceName': namespaceName,
    };
  }

  factory GetNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetNamespacesNamespace(
      description: map['description'] as String,
      id: map['id'] as String,
      namespaceId: map['namespaceId'] as String,
      namespaceName: map['namespaceName'] as String,
    );
  }
}

