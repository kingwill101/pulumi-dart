// ignore_for_file: unused_element, unnecessary_cast


class GetNamespacesNamespace {
  /// Create the timestamp of the indicator warehouse.
  final String createTime;
  /// Description of indicator warehouse.
  final String description;
  /// The ID of the Namespace.
  final String id;
  /// The timestamp of the last modification indicator warehouse.
  final String modifyTime;
  /// Indicator warehouse name.
  final String namespace;
  /// The ID of the Namespace.
  final String namespaceId;
  /// Data storage duration.
  final String specification;

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
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      modifyTime: map['modifyTime'] as String,
      namespace: map['namespace'] as String,
      namespaceId: map['namespaceId'] as String,
      specification: map['specification'] as String,
    );
  }
}

