// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConfigMapsMap {
  /// The first ID of the resource.
  final pulumi.Input<String> configMapId;
  /// The Creation Time of the ConfigMap.
  final pulumi.Input<String> createTime;
  /// ConfigMap instance data. The value's format is a `json` string
  final pulumi.Input<String> data;
  /// The Description of Config Map.
  final pulumi.Input<String> description;
  /// The ID of the Config Map.
  final pulumi.Input<String> id;
  /// ConfigMap instance name.
  final pulumi.Input<String> name;
  /// The NamespaceId of Config Maps.
  final pulumi.Input<String> namespaceId;

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
      configMapId: pulumi.Input.fromValue(map['configMapId'] as String),
      createTime: pulumi.Input.fromValue(map['createTime'] as String),
      data: pulumi.Input.fromValue(map['data'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      namespaceId: pulumi.Input.fromValue(map['namespaceId'] as String),
    );
  }
}

