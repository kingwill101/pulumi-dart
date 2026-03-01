// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appmesh_get_virtual_gateway_get_virtual_gateway_args_doc}
/// Arguments for getVirtualGateway.
/// {@endtemplate}
/// {@macro pulumi_appmesh_get_virtual_gateway_get_virtual_gateway_args_doc}
class GetVirtualGatewayArgs {
  /// Name of the service mesh in which the virtual gateway exists.
  final pulumi.Input<String> meshName;
  /// Name of the virtual gateway.
  final pulumi.Input<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Map of tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetVirtualGatewayArgs].
  /// [meshName] Name of the service mesh in which the virtual gateway exists.
  /// [name] Name of the virtual gateway.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags.
  GetVirtualGatewayArgs({
    required pulumi.Output<String> meshName,
    required pulumi.Output<String> name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      meshName = pulumi.Input.asInput<String>(meshName),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'meshName': meshName,
      'name': name,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory GetVirtualGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewayArgs(
      meshName: pulumi.Output.create<String>(map['meshName'] as String),
      name: pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

