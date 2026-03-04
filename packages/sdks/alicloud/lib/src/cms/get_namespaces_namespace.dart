// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNamespacesNamespace {
  /// Create the timestamp of the indicator warehouse.
  final pulumi.Input<String> createTime;

  /// Description of indicator warehouse.
  final pulumi.Input<String> description;

  /// The ID of the Namespace.
  final pulumi.Input<String> id;

  /// The timestamp of the last modification indicator warehouse.
  final pulumi.Input<String> modifyTime;

  /// Indicator warehouse name.
  final pulumi.Input<String> namespace;

  /// The ID of the Namespace.
  final pulumi.Input<String> namespaceId;

  /// Data storage duration.
  final pulumi.Input<String> specification;

  /// Creates a new [GetNamespacesNamespace].
  /// [createTime] Create the timestamp of the indicator warehouse.
  /// [description] Description of indicator warehouse.
  /// [id] The ID of the Namespace.
  /// [modifyTime] The timestamp of the last modification indicator warehouse.
  /// [namespace] Indicator warehouse name.
  /// [namespaceId] The ID of the Namespace.
  /// [specification] Data storage duration.
  GetNamespacesNamespace({
    required this.createTime,
    required this.description,
    required this.id,
    required this.modifyTime,
    required this.namespace,
    required this.namespaceId,
    required this.specification,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'description': description,
      'id': id,
      'modifyTime': modifyTime,
      'namespace': namespace,
      'namespaceId': namespaceId,
      'specification': specification,
    };
  }

  factory GetNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetNamespacesNamespace(
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      modifyTime: pulumi.Input.fromValue(map['modifyTime'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
      specification: pulumi.Input.fromValue(map['specification'] as String),
    );
  }
}
