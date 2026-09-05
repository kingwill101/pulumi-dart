// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_mesh_get_mesh_args_doc}
/// Arguments for getMesh.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_mesh_get_mesh_args_doc}
class GetMeshArgs {
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String?>? meshOwner;
  /// Name of the service mesh.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [GetMeshArgs].
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the service mesh.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  const GetMeshArgs({
    this.meshOwner,
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshOwner': ?meshOwner,
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetMeshArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs(
      meshOwner: (() { final guardedValue = map['meshOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
