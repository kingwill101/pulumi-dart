// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_virtual_node_get_virtual_node_args_doc}
/// Arguments for getVirtualNode.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_virtual_node_get_virtual_node_args_doc}
class GetVirtualNodeArgs {
  /// Name of the service mesh in which the virtual node exists.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;

  /// Name of the virtual node.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVirtualNodeArgs].
  /// [meshName] Name of the service mesh in which the virtual node exists.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the virtual node.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetVirtualNodeArgs({
    required String meshName,
    String? meshOwner,
    required String name,
    String? region,
    Map<String, String>? tags,
  })  : meshName = pulumi.Input.asInput<String>(meshName),
        meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
        name = pulumi.Input.asInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshName'] = meshName;
    final meshOwnerValue = meshOwner;
    if (meshOwnerValue != null) {
      map['meshOwner'] = meshOwnerValue;
    }
    map['name'] = name;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetVirtualNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeArgs(
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] == null ? null : map['meshOwner'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
