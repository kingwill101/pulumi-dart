// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperVToAzStackHCI NIC properties.
class HyperVToAzStackHCIProtectedNicPropertiesResponse {
  /// Gets or sets the NIC mac address.
  final pulumi.Input<String> macAddress;
  /// Gets or sets the network name.
  final pulumi.Input<String> networkName;
  /// Gets or sets the NIC Id.
  final pulumi.Input<String> nicId;
  /// Gets or sets the selection type of the NIC.
  final pulumi.Input<String> selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final pulumi.Input<String> targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final pulumi.Input<String> testNetworkId;

  /// Creates a new [HyperVToAzStackHCIProtectedNicPropertiesResponse].
  /// [macAddress] Gets or sets the NIC mac address.
  /// [networkName] Gets or sets the network name.
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  const HyperVToAzStackHCIProtectedNicPropertiesResponse({
    required this.macAddress,
    required this.networkName,
    required this.nicId,
    required this.selectionTypeForFailover,
    required this.targetNetworkId,
    required this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'macAddress': macAddress,
      'networkName': networkName,
      'nicId': nicId,
      'selectionTypeForFailover': selectionTypeForFailover,
      'targetNetworkId': targetNetworkId,
      'testNetworkId': testNetworkId,
    };
  }

  factory HyperVToAzStackHCIProtectedNicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCIProtectedNicPropertiesResponse(
      macAddress: pulumi.Input.fromValue(map['macAddress'] as String),
      networkName: pulumi.Input.fromValue(map['networkName'] as String),
      nicId: pulumi.Input.fromValue(map['nicId'] as String),
      selectionTypeForFailover: pulumi.Input.fromValue(map['selectionTypeForFailover'] as String),
      targetNetworkId: pulumi.Input.fromValue(map['targetNetworkId'] as String),
      testNetworkId: pulumi.Input.fromValue(map['testNetworkId'] as String),
    );
  }
}
