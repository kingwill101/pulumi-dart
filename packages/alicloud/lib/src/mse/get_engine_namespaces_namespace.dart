// ignore_for_file: unused_element, unnecessary_cast


class GetEngineNamespacesNamespace {
  /// The Number of Configuration of the Namespace.
  final int configCount;
  /// The ID of the Engine Namespace. It is formatted to `<instance_id>:<namespace_id>`.
  final String id;
  /// The description of the Namespace.
  final String namespaceDesc;
  /// The id of Namespace.
  final String namespaceId;
  /// The name of the Namespace.
  final String namespaceShowName;
  /// The Quota of the Namespace.
  final int quota;
  /// The number of active services.
  final String serviceCount;
  /// The type of the Namespace, the value is as follows:
  /// - '0': Global Configuration.
  /// - '1': default namespace.
  /// - '2': Custom Namespace.
  final int type;

  /// Creates a new [GetEngineNamespacesNamespace].
  /// [configCount] The Number of Configuration of the Namespace.
  /// [id] The ID of the Engine Namespace. It is formatted to `<instance_id>:<namespace_id>`.
  /// [namespaceDesc] The description of the Namespace.
  /// [namespaceId] The id of Namespace.
  /// [namespaceShowName] The name of the Namespace.
  /// [quota] The Quota of the Namespace.
  /// [serviceCount] The number of active services.
  /// [type] The type of the Namespace, the value is as follows:
  GetEngineNamespacesNamespace({
    required this.configCount,
    required this.id,
    required this.namespaceDesc,
    required this.namespaceId,
    required this.namespaceShowName,
    required this.quota,
    required this.serviceCount,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configCount': configCount,
      'id': id,
      'namespaceDesc': namespaceDesc,
      'namespaceId': namespaceId,
      'namespaceShowName': namespaceShowName,
      'quota': quota,
      'serviceCount': serviceCount,
      'type': type,
    };
  }

  factory GetEngineNamespacesNamespace.fromMap(Map<String, dynamic> map) {
    return GetEngineNamespacesNamespace(
      configCount: map['configCount'] as int,
      id: map['id'] as String,
      namespaceDesc: map['namespaceDesc'] as String,
      namespaceId: map['namespaceId'] as String,
      namespaceShowName: map['namespaceShowName'] as String,
      quota: map['quota'] as int,
      serviceCount: map['serviceCount'] as String,
      type: map['type'] as int,
    );
  }
}

