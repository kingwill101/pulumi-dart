// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_directconnect_get_gateway_get_gateway_args_doc}
/// Arguments for getGateway.
/// {@endtemplate}
/// {@macro pulumi_directconnect_get_gateway_get_gateway_args_doc}
class GetGatewayArgs {
  /// Name of the gateway to retrieve.
  final pulumi.Input<String> name;
  /// A map of tags assigned to the gateway.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [GetGatewayArgs].
  /// [name] Name of the gateway to retrieve.
  /// [tags] A map of tags assigned to the gateway.
  GetGatewayArgs({
    required pulumi.Output<String> name,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      name = pulumi.Input.asInput<String>(name),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      name: pulumi.Output.create<String>(map['name'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

