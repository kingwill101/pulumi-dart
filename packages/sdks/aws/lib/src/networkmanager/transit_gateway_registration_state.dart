// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitGatewayRegistration resources.
class TransitGatewayRegistrationState {
  /// ID of the Global Network to register to.
  final pulumi.Input<String>? globalNetworkId;
  /// ARN of the Transit Gateway to register.
  final pulumi.Input<String>? transitGatewayArn;

  /// Creates a new [TransitGatewayRegistrationState].
  /// [globalNetworkId] ID of the Global Network to register to.
  /// [transitGatewayArn] ARN of the Transit Gateway to register.
  const TransitGatewayRegistrationState({
    this.globalNetworkId,
    this.transitGatewayArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': ?globalNetworkId,
      'transitGatewayArn': ?transitGatewayArn,
    };
  }

  factory TransitGatewayRegistrationState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRegistrationState(
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitGatewayArn: (() { final guardedValue = map['transitGatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

