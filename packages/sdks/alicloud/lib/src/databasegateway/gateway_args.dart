// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databasegateway_gateway_gateway_args_doc}
/// The set of arguments for Gateway.
/// {@endtemplate}
/// {@macro pulumi_databasegateway_gateway_gateway_args_doc}
class GatewayArgs {
  /// The description of Gateway.
  final pulumi.Input<String>? gatewayDesc;
  /// The name of the Gateway.
  final pulumi.Input<String> gatewayName;

  /// Creates a new [GatewayArgs].
  /// [gatewayDesc] The description of Gateway.
  /// [gatewayName] The name of the Gateway.
  GatewayArgs({
    this.gatewayDesc,
    required this.gatewayName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayDesc': ?gatewayDesc,
      'gatewayName': gatewayName,
    };
  }

  factory GatewayArgs.fromMap(Map<String, dynamic> map) {
    return GatewayArgs(
      gatewayDesc: (() { final guardedValue = map['gatewayDesc']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      gatewayName: pulumi.Input.fromValue(map['gatewayName'] as String),
    );
  }
}

