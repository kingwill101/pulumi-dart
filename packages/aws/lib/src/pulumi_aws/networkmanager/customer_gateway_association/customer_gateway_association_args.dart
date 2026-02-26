// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for CustomerGatewayAssociation.
class CustomerGatewayAssociationArgs {
  /// ARN of the customer gateway.
  final Input<String> customerGatewayArn;

  /// ID of the device.
  final Input<String> deviceId;

  /// ID of the global network.
  ///
  /// The following arguments are optional:
  final Input<String> globalNetworkId;

  /// ID of the link.
  final Input<String>? linkId;

  CustomerGatewayAssociationArgs({
    required this.customerGatewayArn,
    required this.deviceId,
    required this.globalNetworkId,
    this.linkId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customerGatewayArn'] = customerGatewayArn;
    map['deviceId'] = deviceId;
    map['globalNetworkId'] = globalNetworkId;
    final linkIdValue = linkId;
    if (linkIdValue != null) {
      map['linkId'] = linkIdValue;
    }
    return map;
  }

  factory CustomerGatewayAssociationArgs.fromMap(Map<String, dynamic> map) {
    return CustomerGatewayAssociationArgs(
      customerGatewayArn: Input.asInput<String>(map['customerGatewayArn']),
      deviceId: Input.asInput<String>(map['deviceId']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      linkId: Input.asOptionalInput<String>(map['linkId']),
    );
  }
}
