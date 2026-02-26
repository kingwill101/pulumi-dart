// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getVirtualNode.
class GetVirtualNodeArgs {
  /// Name of the service mesh in which the virtual node exists.
  final Input<String> meshName;

  /// AWS account ID of the service mesh's owner.
  final Input<String>? meshOwner;

  /// Name of the virtual node.
  final Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Map of tags.
  final Input<Map<String, String>>? tags;

  GetVirtualNodeArgs({
    required this.meshName,
    this.meshOwner,
    required this.name,
    this.region,
    this.tags,
  });

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
      meshName: Input.asInput<String>(map['meshName']),
      meshOwner: Input.asOptionalInput<String>(map['meshOwner']),
      name: Input.asInput<String>(map['name']),
      region: Input.asOptionalInput<String>(map['region']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
