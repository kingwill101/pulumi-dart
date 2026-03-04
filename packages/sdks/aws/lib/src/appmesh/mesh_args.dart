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
  MeshArgs({this.name, this.region, this.spec, this.tags});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'region': ?region,
      'spec':
          ?pulumi.Input.mapOptionalInputValue<MeshSpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
    };
  }

  factory MeshArgs.fromMap(Map<String, dynamic> map) {
    return MeshArgs(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      spec: (() {
        final guardedValue = map['spec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MeshSpec.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
