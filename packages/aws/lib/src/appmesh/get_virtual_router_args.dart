// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_virtual_router_get_virtual_router_args_doc}
/// Arguments for getVirtualRouter.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_virtual_router_get_virtual_router_args_doc}
class GetVirtualRouterArgs {
  /// Name of the mesh in which the virtual router exists
  final pulumi.Input<String> meshName;
  final pulumi.Input<String>? meshOwner;

  /// Name of the virtual router.
  final pulumi.Input<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVirtualRouterArgs].
  /// [meshName] Name of the mesh in which the virtual router exists
  /// [meshOwner] Optional.
  /// [name] Name of the virtual router.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetVirtualRouterArgs({
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

  factory GetVirtualRouterArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualRouterArgs(
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
