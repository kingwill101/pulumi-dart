// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a virtual network to which API Management service is deployed.
class VirtualNetworkConfigurationResponse {
  /// The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  final pulumi.Input<String>? subnetResourceId;

  /// The name of the subnet.
  final pulumi.Input<String> subnetname;

  /// The virtual network ID. This is typically a GUID. Expect a null GUID by default.
  final pulumi.Input<String> vnetid;

  /// Creates a new [VirtualNetworkConfigurationResponse].
  /// [subnetResourceId] The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  /// [subnetname] The name of the subnet.
  /// [vnetid] The virtual network ID. This is typically a GUID. Expect a null GUID by default.
  VirtualNetworkConfigurationResponse({
    this.subnetResourceId,
    required this.subnetname,
    required this.vnetid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetResourceId': ?subnetResourceId,
      'subnetname': subnetname,
      'vnetid': vnetid,
    };
  }

  factory VirtualNetworkConfigurationResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNetworkConfigurationResponse(
      subnetResourceId: (() {
        final guardedValue = map['subnetResourceId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      subnetname: pulumi.Input.fromValue(map['subnetname'] as String),
      vnetid: pulumi.Input.fromValue(map['vnetid'] as String),
    );
  }
}
