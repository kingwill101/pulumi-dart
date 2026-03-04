// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VpcEndpointAssociationSubnetMapping {
  /// The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  final pulumi.Input<String>? ipAddressType;

  /// The unique identifier for the subnet.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VpcEndpointAssociationSubnetMapping].
  /// [ipAddressType] The subnet's IP address type. Valid values: `"DUALSTACK"`, `"IPV4"`.
  /// [subnetId] The unique identifier for the subnet.
  VpcEndpointAssociationSubnetMapping({
    this.ipAddressType,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipAddressType': ?ipAddressType,
      'subnetId': subnetId,
    };
  }

  factory VpcEndpointAssociationSubnetMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return VpcEndpointAssociationSubnetMapping(
      ipAddressType: (() {
        final guardedValue = map['ipAddressType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
