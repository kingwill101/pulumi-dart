// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sae_config_map_config_map_args_doc}
/// The set of arguments for ConfigMap.
/// {@endtemplate}
/// {@macro pulumi_sae_config_map_config_map_args_doc}
class ConfigMapArgs {
  /// ConfigMap instance data.
  final pulumi.Input<String> data;
  /// The Description of ConfigMap.
  final pulumi.Input<String>? description;
  /// ConfigMap instance name.
  final pulumi.Input<String>? name;
  /// The NamespaceId of ConfigMap.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  final pulumi.Input<String> namespaceId;

  /// Creates a new [ConfigMapArgs].
  /// [data] ConfigMap instance data.
  /// [description] The Description of ConfigMap.
  /// [name] ConfigMap instance name.
  /// [namespaceId] The NamespaceId of ConfigMap.It can contain 2 to 32 lowercase characters.The value is in format `{RegionId}:{namespace}`
  ConfigMapArgs({
    required this.data,
    this.description,
    this.name,
    required this.namespaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': data,
      'description': ?description,
      'name': ?name,
      'namespaceId': namespaceId,
    };
  }

  factory ConfigMapArgs.fromMap(Map<String, dynamic> map) {
    return ConfigMapArgs(
      data: (map['data'] as String).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      namespaceId: (map['namespaceId'] as String).input(),
    );
  }
}

