// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getMesh.
class GetMeshArgs {
  /// AWS account ID of the service mesh's owner.
  final Input<String>? meshOwner;

  /// Name of the service mesh.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags.
  final Input<Map<String, String>>? tags;

  GetMeshArgs({
    this.meshOwner,
    required this.name,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory GetMeshArgs.fromMap(Map<String, dynamic> map) {
    return GetMeshArgs(
      meshOwner: Input.asOptionalInput<String>(map['meshOwner']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
