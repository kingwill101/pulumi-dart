// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for CustomerGatewayAssociation.
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
      customerGatewayArn:
          pulumi.Input.asInput<String>(map['customerGatewayArn']),
      deviceId: pulumi.Input.asInput<String>(map['deviceId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      linkId: pulumi.Input.asOptionalInput<String>(map['linkId']),
    );
  }
}
