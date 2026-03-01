// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering CustomerGatewayAssociation resources.
class CustomerGatewayAssociationState {
  /// ARN of the customer gateway.
  final pulumi.Input<String>? customerGatewayArn;
  /// ID of the device.
  final pulumi.Input<String>? deviceId;
  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String>? linkId;

  /// Creates a new [CustomerGatewayAssociationState].
  /// [customerGatewayArn] ARN of the customer gateway.
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  CustomerGatewayAssociationState({
    pulumi.Output<String>? customerGatewayArn,
    pulumi.Output<String>? deviceId,
    pulumi.Output<String>? globalNetworkId,
    pulumi.Output<String>? linkId,
  }) :
      customerGatewayArn = pulumi.Input.asOptionalInput<String>(customerGatewayArn),
      deviceId = pulumi.Input.asOptionalInput<String>(deviceId),
      globalNetworkId = pulumi.Input.asOptionalInput<String>(globalNetworkId),
      linkId = pulumi.Input.asOptionalInput<String>(linkId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayArn': ?customerGatewayArn,
      'deviceId': ?deviceId,
      'globalNetworkId': ?globalNetworkId,
      'linkId': ?linkId,
    };
  }

  factory CustomerGatewayAssociationState.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayAssociationState(
      customerGatewayArn: map['customerGatewayArn'] == null ? null : pulumi.Output.create<String>(map['customerGatewayArn'] as String),
      deviceId: map['deviceId'] == null ? null : pulumi.Output.create<String>(map['deviceId'] as String),
      globalNetworkId: map['globalNetworkId'] == null ? null : pulumi.Output.create<String>(map['globalNetworkId'] as String),
      linkId: map['linkId'] == null ? null : pulumi.Output.create<String>(map['linkId'] as String),
    );
  }
}

