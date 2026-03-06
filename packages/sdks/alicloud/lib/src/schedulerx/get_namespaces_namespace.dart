// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNamespacesNamespace {
  /// The description of the resource.
  final pulumi.Input<String> description;
  /// The ID of the resource.
  final pulumi.Input<String> id;
  /// The ID of the Namespace.
  final pulumi.Input<String> namespaceId;
  /// The name of the resource.
  final pulumi.Input<String> namespaceName;

  /// Creates a new [GetNamespacesNamespace].
  /// [description] The description of the resource.
  /// [id] The ID of the resource.
  /// [namespaceId] The ID of the Namespace.
  /// [namespaceName] The name of the resource.
  const GetNamespacesNamespace({
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
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      namespaceName: pulumi.Input.fromValue(map['namespaceName'] as String),
    );
  }
}

