// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networkmanager_customer_gateway_association_customer_gateway_association_args_doc}
/// The set of arguments for CustomerGatewayAssociation.
/// {@endtemplate}
/// {@macro pulumi_networkmanager_customer_gateway_association_customer_gateway_association_args_doc}
class CustomerGatewayAssociationArgs {
  /// ARN of the customer gateway.
  final pulumi.Input<String> customerGatewayArn;
  /// ID of the device.
  final pulumi.Input<String> deviceId;
  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> globalNetworkId;
  /// ID of the link.
  final pulumi.Input<String>? linkId;

  /// Creates a new [CustomerGatewayAssociationArgs].
  /// [customerGatewayArn] ARN of the customer gateway.
  /// [deviceId] ID of the device.
  /// [globalNetworkId] ID of the global network.
  /// [linkId] ID of the link.
  CustomerGatewayAssociationArgs({
    required this.customerGatewayArn,
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customerGatewayArn': customerGatewayArn,
      'deviceId': deviceId,
      'globalNetworkId': globalNetworkId,
      'linkId': ?linkId,
    };
  }

  factory CustomerGatewayAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayAssociationArgs(
      customerGatewayArn: (map['customerGatewayArn'] as String).input(),
      deviceId: (map['deviceId'] as String).input(),
      globalNetworkId: (map['globalNetworkId'] as String).input(),
      linkId: map['linkId'] == null ? null : ((map['linkId'] as String).input()).input(),
    );
  }
}

