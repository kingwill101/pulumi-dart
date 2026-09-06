// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class that contains virtual network definition.
class VirtualNetworkConfigurationResponse {
  /// Data management's service public IP address resource id.
  final pulumi.Input<String> dataManagementPublicIpId;
  /// Engine service's public IP address resource id.
  final pulumi.Input<String> enginePublicIpId;
  /// When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  final pulumi.Input<String?>? state;
  /// The subnet resource id.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualNetworkConfigurationResponse].
  /// [dataManagementPublicIpId] Data management's service public IP address resource id.
  /// [enginePublicIpId] Engine service's public IP address resource id.
  /// [state] When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  /// [subnetId] The subnet resource id.
  VirtualNetworkConfigurationResponse({
    required this.dataManagementPublicIpId,
    required this.enginePublicIpId,
    pulumi.Input<String?>? state,
    required this.subnetId,
  }) : state = state ?? pulumi.Input.fromValue('Enabled');

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagementPublicIpId': dataManagementPublicIpId,
      'enginePublicIpId': enginePublicIpId,
      'state': ?state,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkConfigurationResponse.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfigurationResponse(
      dataManagementPublicIpId: pulumi.Input.fromValue(map['dataManagementPublicIpId'] as String),
      enginePublicIpId: pulumi.Input.fromValue(map['enginePublicIpId'] as String),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetId: pulumi.Input.fromValue(map['subnetId'] as String),
    );
  }
}
