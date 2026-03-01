// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_mesh_get_mesh_args_doc}
/// Arguments for getMesh.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_mesh_get_mesh_args_doc}
class GetMeshArgs {
  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;
  /// Name of the service mesh.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetMeshArgs].
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the service mesh.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetMeshArgs({
    pulumi.Output<String>? meshOwner,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

