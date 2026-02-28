// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'mesh_spec.dart';

/// {@template pulumi_appmesh_mesh_mesh_args_doc}
/// The set of arguments for Mesh.
/// {@endtemplate}
/// {@macro pulumi_appmesh_mesh_mesh_args_doc}
class MeshArgs {
  /// Name to use for the service mesh. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Service mesh specification to apply.
  final pulumi.Input<MeshSpec>? spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [MeshArgs].
  /// [name] Name to use for the service mesh. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Service mesh specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  MeshArgs({
    String? name,
    String? region,
    MeshSpec? spec,
    Map<String, String>? tags,
  })  : name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        spec = pulumi.Input.asOptionalInput<MeshSpec>(spec),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final specValue = spec;
    if (specValue != null) {
      map['spec'] =
          pulumi.Input.mapOptionalInputValue<MeshSpec, Map<String, dynamic>>(
              specValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      spec: map['spec'] == null
          ? null
          : MeshSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
