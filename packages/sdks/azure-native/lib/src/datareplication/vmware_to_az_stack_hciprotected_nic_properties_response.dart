// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareToAzStackHCI NIC properties.
class VMwareToAzStackHCIProtectedNicPropertiesResponse {
  /// Gets or sets a value indicating whether this is the primary NIC.
  final pulumi.Input<bool>? isPrimaryNic;
  /// Gets or sets the NIC label.
  final pulumi.Input<String> label;
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

  /// Creates a new [VMwareToAzStackHCIProtectedNicPropertiesResponse].
  /// [isPrimaryNic] Gets or sets a value indicating whether this is the primary NIC.
  /// [label] Gets or sets the NIC label.
  /// [macAddress] Gets or sets the NIC mac address.
  /// [networkName] Gets or sets the network name.
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  VMwareToAzStackHCIProtectedNicPropertiesResponse({
    this.isPrimaryNic,
    required this.label,
    required this.macAddress,
    required this.networkName,
    required this.nicId,
    required this.selectionTypeForFailover,
    required this.targetNetworkId,
    required this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimaryNic': ?isPrimaryNic,
      'label': label,
      'macAddress': macAddress,
      'networkName': networkName,
      'nicId': nicId,
      'selectionTypeForFailover': selectionTypeForFailover,
      'targetNetworkId': targetNetworkId,
      'testNetworkId': testNetworkId,
    };
  }

  factory VMwareToAzStackHCIProtectedNicPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCIProtectedNicPropertiesResponse(
      isPrimaryNic: map['isPrimaryNic'] == null ? null : (map['isPrimaryNic'] as bool).input(),
      label: (map['label'] as String).input(),
      macAddress: (map['macAddress'] as String).input(),
      networkName: (map['networkName'] as String).input(),
      nicId: (map['nicId'] as String).input(),
      selectionTypeForFailover: (map['selectionTypeForFailover'] as String).input(),
      targetNetworkId: (map['targetNetworkId'] as String).input(),
      testNetworkId: (map['testNetworkId'] as String).input(),
    );
  }
}

