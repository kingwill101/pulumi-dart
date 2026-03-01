// ignore_for_file: unused_element, unnecessary_cast


/// The StorageAdapter physical nodes of a cluster.
class StorageAdapterIPInfo {
  /// The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final String? ipv4Address;
  /// storage adapter physical node name.
  final String? physicalNode;
  /// The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final String? subnetMask;

  /// Creates a new [StorageAdapterIPInfo].
  /// [ipv4Address] The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  /// [physicalNode] storage adapter physical node name.
  /// [subnetMask] The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  StorageAdapterIPInfo({
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
      ipv4Address: map['ipv4Address'] == null ? null : map['ipv4Address'] as String,
      physicalNode: map['physicalNode'] == null ? null : map['physicalNode'] as String,
      subnetMask: map['subnetMask'] == null ? null : map['subnetMask'] as String,
    );
  }
}

