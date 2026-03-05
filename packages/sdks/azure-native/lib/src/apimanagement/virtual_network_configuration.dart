// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration of a virtual network to which API Management service is deployed.
class VirtualNetworkConfiguration {
  /// The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  final pulumi.Input<String>? subnetResourceId;

  /// Creates a new [VirtualNetworkConfiguration].
  /// [subnetResourceId] The full resource ID of a subnet in a virtual network to deploy the API Management service in.
  VirtualNetworkConfiguration({
    this.subnetResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetResourceId': ?subnetResourceId,
    };
  }

  factory VirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfiguration(
      subnetResourceId: (() { final guardedValue = map['subnetResourceId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

