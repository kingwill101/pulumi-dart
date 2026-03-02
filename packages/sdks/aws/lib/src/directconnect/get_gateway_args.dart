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
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'tags': ?tags,
    };
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      name: (map['name'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

