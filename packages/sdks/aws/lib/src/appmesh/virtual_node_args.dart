// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec.dart';

/// {@template pulumi_appmesh_virtual_node_virtual_node_args_doc}
/// The set of arguments for VirtualNode.
/// {@endtemplate}
/// {@macro pulumi_appmesh_virtual_node_virtual_node_args_doc}
class VirtualNodeArgs {
  /// Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> meshName;
  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;
  /// Name to use for the virtual node. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Virtual node specification to apply.
  final pulumi.Input<VirtualNodeSpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualNodeArgs].
  /// [meshName] Name of the service mesh in which to create the virtual node. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the virtual node. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Virtual node specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VirtualNodeArgs({
    required pulumi.Output<String> meshName,
    pulumi.Output<String>? meshOwner,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    required pulumi.Output<VirtualNodeSpec> spec,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      meshName = pulumi.Input.asInput<String>(meshName),
      meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      spec = pulumi.Input.asInput<VirtualNodeSpec>(spec),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'spec': pulumi.Input.mapInputValue<VirtualNodeSpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualNodeArgs.fromMap(Map<String, dynamic> map) {
    return VirtualNodeArgs(
      meshName: pulumi.Output.create<String>(map['meshName'] as String),
      meshOwner: map['meshOwner'] == null ? null : pulumi.Output.create<String>(map['meshOwner'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spec: pulumi.Output.create<VirtualNodeSpec>(VirtualNodeSpec.fromMap((map['spec'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

