// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec.dart';

/// {@template pulumi_appmesh_virtual_gateway_virtual_gateway_args_doc}
/// The set of arguments for VirtualGateway.
/// {@endtemplate}
/// {@macro pulumi_appmesh_virtual_gateway_virtual_gateway_args_doc}
class VirtualGatewayArgs {
  /// Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length.
  final pulumi.Input<String> meshName;

  /// AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  final pulumi.Input<String>? meshOwner;

  /// Name to use for the virtual gateway. Must be between 1 and 255 characters in length.
  final pulumi.Input<String>? name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Virtual gateway specification to apply.
  final pulumi.Input<VirtualGatewaySpec> spec;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [VirtualGatewayArgs].
  /// [meshName] Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the virtual gateway. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Virtual gateway specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  VirtualGatewayArgs({
    required String meshName,
    String? meshOwner,
    String? name,
    String? region,
    required VirtualGatewaySpec spec,
    Map<String, String>? tags,
  })  : meshName = pulumi.Input.asInput<String>(meshName),
        meshOwner = pulumi.Input.asOptionalInput<String>(meshOwner),
        name = pulumi.Input.asOptionalInput<String>(name),
        region = pulumi.Input.asOptionalInput<String>(region),
        spec = pulumi.Input.asInput<VirtualGatewaySpec>(spec),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['meshName'] = meshName;
    final meshOwnerValue = meshOwner;
    if (meshOwnerValue != null) {
      map['meshOwner'] = meshOwnerValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['spec'] =
        pulumi.Input.mapInputValue<VirtualGatewaySpec, Map<String, dynamic>>(
            spec, (value) => value.toMap());
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory VirtualGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VirtualGatewayArgs(
      meshName: map['meshName'] as String,
      meshOwner: map['meshOwner'] == null ? null : map['meshOwner'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      spec: VirtualGatewaySpec.fromMap(
          (map['spec'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
