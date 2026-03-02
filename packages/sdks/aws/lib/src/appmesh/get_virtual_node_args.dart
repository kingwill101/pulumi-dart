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
    required this.meshName,
    this.meshOwner,
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVirtualNodeArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeArgs(
      meshName: (map['meshName'] as String).input(),
      meshOwner: map['meshOwner'] == null ? null : ((map['meshOwner'] as String).input()).input(),
      name: (map['name'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

