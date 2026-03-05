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
    this.customerGatewayArn,
    this.deviceId,
    this.globalNetworkId,
    this.linkId,
  });

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
      customerGatewayArn: (() { final guardedValue = map['customerGatewayArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceId: (() { final guardedValue = map['deviceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      globalNetworkId: (() { final guardedValue = map['globalNetworkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkId: (() { final guardedValue = map['linkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

