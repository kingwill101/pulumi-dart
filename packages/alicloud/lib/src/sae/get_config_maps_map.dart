// ignore_for_file: unused_element, unnecessary_cast


class GetConfigMapsMap {
  /// The first ID of the resource.
  final String configMapId;
  /// The Creation Time of the ConfigMap.
  final String createTime;
  /// ConfigMap instance data. The value's format is a `json` string
  final String data;
  /// The Description of Config Map.
  final String description;
  /// The ID of the Config Map.
  final String id;
  /// ConfigMap instance name.
  final String name;
  /// The NamespaceId of Config Maps.
  final String namespaceId;

  /// Creates a new [GetConfigMapsMap].
  /// [configMapId] The first ID of the resource.
  /// [createTime] The Creation Time of the ConfigMap.
  /// [data] ConfigMap instance data. The value's format is a `json` string
  /// [description] The Description of Config Map.
  /// [id] The ID of the Config Map.
  /// [name] ConfigMap instance name.
  /// [namespaceId] The NamespaceId of Config Maps.
  GetConfigMapsMap({
    required this.configMapId,
    required this.createTime,
    required this.data,
    required this.description,
    required this.id,
    required this.name,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapId': configMapId,
      'createTime': createTime,
      'data': data,
      'description': description,
      'id': id,
      'name': name,
      'namespaceId': namespaceId,
    };
  }

  factory GetConfigMapsMap.fromMap(Map<String, dynamic> map) {
    return GetConfigMapsMap(
      configMapId: map['configMapId'] as String,
      createTime: map['createTime'] as String,
      data: map['data'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      namespaceId: map['namespaceId'] as String,
    );
  }
}

