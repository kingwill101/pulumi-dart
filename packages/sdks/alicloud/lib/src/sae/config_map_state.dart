// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ConfigMap resources.
class ConfigMapState {
  /// ConfigMap instance data.
  final pulumi.Input<String>? data;
  /// The Description of ConfigMap.
  final pulumi.Input<String>? description;
  /// ConfigMap instance name.
  final pulumi.Input<String>? name;
  /// The NamespaceId of ConfigMap.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  final pulumi.Input<String>? namespaceId;

  /// Creates a new [ConfigMapState].
  /// [data] ConfigMap instance data.
  /// [description] The Description of ConfigMap.
  /// [name] ConfigMap instance name.
  /// [namespaceId] The NamespaceId of ConfigMap.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  ConfigMapState({
    this.data,
    this.description,
    this.name,
    this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'description': ?description,
      'name': ?name,
      'namespaceId': ?namespaceId,
    };
  }

  factory ConfigMapState.fromMap(Map<String, dynamic> map) {
    return ConfigMapState(
      data: map['data'] == null ? null : (map['data'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: map['namespaceId'] == null ? null : (map['namespaceId'] as String).input(),
    );
  }
}

