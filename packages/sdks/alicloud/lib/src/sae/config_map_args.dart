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
    required pulumi.Output<String> data,
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> namespaceId,
  }) :
      data = pulumi.Input.asInput<String>(data),
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      namespaceId = pulumi.Input.asInput<String>(namespaceId);

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
      data: pulumi.Output.create<String>(map['data'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      namespaceId: pulumi.Output.create<String>(map['namespaceId'] as String),
    );
  }
}

