// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Infra network profile for the NetworkCloud platform
class VirtualNetworksPropertiesNetworkCloud {
  /// The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  final pulumi.Input<String>? networkId;

  /// Creates a new [VirtualNetworksPropertiesNetworkCloud].
  /// [networkId] The ARM ID of Network Cloud Network Resource to Associate with this VirtualNetwork
  VirtualNetworksPropertiesNetworkCloud({
    this.networkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkId': ?networkId,
    };
  }

  factory VirtualNetworksPropertiesNetworkCloud.fromMap(Map<String, dynamic> map) {
    return VirtualNetworksPropertiesNetworkCloud(
      networkId: (() { final guardedValue = map['networkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

