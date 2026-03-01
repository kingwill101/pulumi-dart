// ignore_for_file: unused_element, unnecessary_cast


/// The StorageAdapter physical nodes of a cluster.
class StorageAdapterIPInfoResponse {
  /// The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final String ipv4Address;
  /// storage adapter physical node name.
  final String physicalNode;
  /// The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  final String subnetMask;

  /// Creates a new [StorageAdapterIPInfoResponse].
  /// [ipv4Address] The IPv4 address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  /// [physicalNode] storage adapter physical node name.
  /// [subnetMask] The SubnetMask address assigned to each storage adapter physical node on your Azure Stack HCI cluster.
  StorageAdapterIPInfoResponse({
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

  factory StorageAdapterIPInfoResponse.fromMap(Map<String, dynamic> map) {
    return StorageAdapterIPInfoResponse(
      ipv4Address: map['ipv4Address'] as String,
      physicalNode: map['physicalNode'] as String,
      subnetMask: map['subnetMask'] as String,
    );
  }
}

