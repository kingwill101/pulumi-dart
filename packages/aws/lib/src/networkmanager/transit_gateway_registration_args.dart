// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_transit_gateway_registration_transit_gateway_registration_args_doc}
/// The set of arguments for TransitGatewayRegistration.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_transit_gateway_registration_transit_gateway_registration_args_doc}
class TransitGatewayRegistrationArgs {
  /// ID of the Global Network to register to.
  final pulumi.Input<String> globalNetworkId;
  /// ARN of the Transit Gateway to register.
  final pulumi.Input<String> transitGatewayArn;

  /// Creates a new [TransitGatewayRegistrationArgs].
  /// [globalNetworkId] ID of the Global Network to register to.
  /// [transitGatewayArn] ARN of the Transit Gateway to register.
  TransitGatewayRegistrationArgs({
    required String globalNetworkId,
    required String transitGatewayArn,
  }) :
      globalNetworkId = pulumi.Input.asInput<String>(globalNetworkId),
      transitGatewayArn = pulumi.Input.asInput<String>(transitGatewayArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': globalNetworkId,
      'transitGatewayArn': transitGatewayArn,
    };
  }

  factory TransitGatewayRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRegistrationArgs(
      globalNetworkId: map['globalNetworkId'] as String,
      transitGatewayArn: map['transitGatewayArn'] as String,
    );
  }
}

