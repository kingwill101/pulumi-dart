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
  TransitGatewayRegistrationState({
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<String>? transitGatewayArn,
  }) :
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      transitGatewayArn = pulumi.Input.asOptionalInput<String>(transitGatewayArn);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'globalNetworkId': ?globalNetworkId,
      'transitGatewayArn': ?transitGatewayArn,
    };
  }

  factory TransitGatewayRegistrationState.fromMap(Map<String, dynamic> map) {
    return TransitGatewayRegistrationState(
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      transitGatewayArn: map['transitGatewayArn'] == null ? null : pulumi.Output.create<String>(map['transitGatewayArn'] as String),
    );
  }
}

