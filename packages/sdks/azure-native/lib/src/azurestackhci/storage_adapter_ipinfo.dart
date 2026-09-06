// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The StorageAdapter physical nodes of a cluster.
class StorageAdapterIPInfo {
  /// The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final pulumi.Input<String?>? ipv4Address;
  /// storage adapter physical node name.
  final pulumi.Input<String?>? physicalNode;
  /// The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final pulumi.Input<String?>? subnetMask;

  /// Creates a new [StorageAdapterIPInfo].
  /// [ipv4Address] The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  /// [physicalNode] storage adapter physical node name.
  /// [subnetMask] The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  const StorageAdapterIPInfo({
    this.ipv4Address,
    this.physicalNode,
    this.subnetMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipv4Address': ?ipv4Address,
      'physicalNode': ?physicalNode,
      'subnetMask': ?subnetMask,
    };
  }

  factory StorageAdapterIPInfo.fromMap(Map<String, dynamic> map) {
    return StorageAdapterIPInfo(
      ipv4Address: (() { final guardedValue = map['ipv4Address']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      physicalNode: (() { final guardedValue = map['physicalNode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetMask: (() { final guardedValue = map['subnetMask']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
