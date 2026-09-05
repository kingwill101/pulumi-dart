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
  final pulumi.Input<String?>? meshOwner;
  /// Name to use for the virtual gateway. Must be between 1 and 255 characters in length.
  final pulumi.Input<String?>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Virtual gateway specification to apply.
  final pulumi.Input<VirtualGatewaySpec> spec;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [VirtualGatewayArgs].
  /// [meshName] Name of the service mesh in which to create the virtual gateway. Must be between 1 and 255 characters in length.
  /// [meshOwner] AWS account ID of the service mesh's owner. Defaults to the account ID the AWS provider is currently connected to.
  /// [name] Name to use for the virtual gateway. Must be between 1 and 255 characters in length.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spec] Virtual gateway specification to apply.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const VirtualGatewayArgs({
    required this.meshName,
    this.meshOwner,
    this.name,
    this.region,
    required this.spec,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'meshOwner': ?meshOwner,
      'name': ?name,
      'region': ?region,
      'spec': pulumi.Input.mapInputValue<VirtualGatewaySpec, Map<String, dynamic>>(spec, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory VirtualGatewayArgs.fromMap(Map<String, dynamic> map) {
    return VirtualGatewayArgs(
      meshName: pulumi.Input.fromValue(map['meshName'] as String),
      meshOwner: (() { final guardedValue = map['meshOwner']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      spec: pulumi.Input.fromValue(VirtualGatewaySpec.fromMap((map['spec']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
