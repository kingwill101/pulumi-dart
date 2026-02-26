// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for TransitGatewayRegistration.
class TransitGatewayRegistrationArgs {
  /// ID of the Global Network to register to.
  final Input<String> globalNetworkId;

  /// ARN of the Transit Gateway to register.
  final Input<String> transitGatewayArn;

  TransitGatewayRegistrationArgs({
    required this.globalNetworkId,
    required this.transitGatewayArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['transitGatewayArn'] = transitGatewayArn;
    return map;
  }

  factory TransitGatewayRegistrationArgs.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRegistrationArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      transitGatewayArn: Input.asInput<String>(map['transitGatewayArn']),
    );
  }
}
