// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../mesh_spec/mesh_spec.dart';

/// The set of arguments for Mesh.
class MeshArgs {
  /// Name to use for the service mesh. Must be between 1 and 255 characters in length.
  final Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Service mesh specification to apply.
  final Input<MeshSpec>? spec;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  MeshArgs({
    this.name,
    this.region,
    this.spec,
    this.tags,
  });

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
      map['spec'] = Input.mapOptionalInputValue<MeshSpec, Map<String, dynamic>>(
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
      name: Input.asOptionalInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      spec: Input.asOptionalInput<MeshSpec>(map['spec']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
