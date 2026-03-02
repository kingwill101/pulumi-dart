// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A class that contains virtual network definition.
class VirtualNetworkConfiguration {
  /// Data management's service public IP address resource id.
  final pulumi.Input<String> dataManagementPublicIpId;
  /// Engine service's public IP address resource id.
  final pulumi.Input<String> enginePublicIpId;
  /// When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  final pulumi.Input<String>? state;
  /// The subnet resource id.
  final pulumi.Input<String> subnetId;

  /// Creates a new [VirtualNetworkConfiguration].
  /// [dataManagementPublicIpId] Data management's service public IP address resource id.
  /// [enginePublicIpId] Engine service's public IP address resource id.
  /// [state] When enabled, the cluster is deployed into the configured subnet, when disabled it will be removed from the subnet.
  /// [subnetId] The subnet resource id.
  VirtualNetworkConfiguration({
    required this.dataManagementPublicIpId,
    required this.enginePublicIpId,
    this.state,
    required this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataManagementPublicIpId': dataManagementPublicIpId,
      'enginePublicIpId': enginePublicIpId,
      'state': ?state,
      'subnetId': subnetId,
    };
  }

  factory VirtualNetworkConfiguration.fromMap(Map<String, dynamic> map) {
    return VirtualNetworkConfiguration(
      dataManagementPublicIpId: (map['dataManagementPublicIpId'] as String).input(),
      enginePublicIpId: (map['enginePublicIpId'] as String).input(),
      state: map['state'] == null ? null : (map['state']! as String).input(),
      subnetId: (map['subnetId'] as String).input(),
    );
  }
}

