// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_virtual_service_get_virtual_service_args_doc}
/// Arguments for getVirtualService.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_virtual_service_get_virtual_service_args_doc}
class GetVirtualServiceArgs {
  /// Name of the service mesh in which the virtual service exists.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner.
  final pulumi.Input<String>? meshOwner;

  /// Name of the virtual service.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVirtualServiceArgs].
  /// [meshName] Name of the service mesh in which the virtual service exists.
  /// [meshOwner] AWS account ID of the service mesh's owner.
  /// [name] Name of the virtual service.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetVirtualServiceArgs({
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

  factory GetVirtualServiceArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualServiceArgs(
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
