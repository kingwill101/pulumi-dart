// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The StorageAdapter physical nodes of a cluster.
class StorageAdapterIPInfoHciEdgeDeviceResponse {
  /// The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final pulumi.Input<String> ipv4Address;
  /// storage adapter physical node name.
  final pulumi.Input<String> physicalNode;
  /// The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final pulumi.Input<String> subnetMask;

  /// Creates a new [StorageAdapterIPInfoHciEdgeDeviceResponse].
  /// [ipv4Address] The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  /// [physicalNode] storage adapter physical node name.
  /// [subnetMask] The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  const StorageAdapterIPInfoHciEdgeDeviceResponse({
    required this.ipv4Address,
    required this.physicalNode,
    required this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Address': ipv4Address,
      'physicalNode': physicalNode,
      'subnetMask': subnetMask,
    };
  }

  factory StorageAdapterIPInfoHciEdgeDeviceResponse.fromMap(Map<String, dynamic> map) {
    return StorageAdapterIPInfoHciEdgeDeviceResponse(
      ipv4Address: pulumi.Input.fromValue(map['ipv4Address'] as String),
      physicalNode: pulumi.Input.fromValue(map['physicalNode'] as String),
      subnetMask: pulumi.Input.fromValue(map['subnetMask'] as String),
    );
  }
}
