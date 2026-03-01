// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_router_spec.dart';

/// {@template pulumi_appmesh_virtual_router_virtual_router_args_doc}
/// The set of arguments for VirtualRouter.
/// {@endtemplate}
/// {@macro pulumi_appmesh_virtual_router_virtual_router_args_doc}
class VirtualRouterArgs {
  /// Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;

  /// Name to use for the virtual router. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Virtual router specification to apply.
  final pulumi.Input<VirtualRouterSpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualRouterArgs].
  /// [meshName] Name of the service mesh in which to create the virtual router. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the virtual router. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Virtual router specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VirtualRouterArgs({
    required String meshName,
    String? meshOwner,
    String? name,
    String? region,
    required VirtualRouterSpec spec,
    Map<String, String>? tags,
  }) : meshName = pulumi.Input.asInput<String>(meshName),
       meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
       name = pulumi.Input.asOptionalInput<String>(name),
       region = pulumi.Input.asOptionalInput<String>(region),
       spec = pulumi.Input.asInput<VirtualRouterSpec>(spec),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'spec':
          pulumi.Input.mapInputValue<VirtualRouterSpec, Map<String, dynamic>>(
            spec,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
    };
  }

  factory VirtualRouterArgs.fromMap(Map<String, dynamic> map) {
    return VirtualRouterArgs(
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] == null ? null : map['meshOwner'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      spec: VirtualRouterSpec.fromMap(
        (map['spec'] as Map).cast<String, dynamic>(),
      ),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
