// ignore_for_file: unused_element, unnecessary_cast


/// HyperVToAzStackHCI NIC properties.
class HyperVToAzStackHCIProtectedNicPropertiesResponse {
  /// Gets or sets the NIC mac address.
  final String macAddress;
  /// Gets or sets the network name.
  final String networkName;
  /// Gets or sets the NIC Id.
  final String nicId;
  /// Gets or sets the selection type of the NIC.
  final String selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final String targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final String testNetworkId;

  /// Creates a new [HyperVToAzStackHCIProtectedNicPropertiesResponse].
  /// [macAddress] Gets or sets the NIC mac address.
  /// [networkName] Gets or sets the network name.
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  HyperVToAzStackHCIProtectedNicPropertiesResponse({
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
      macAddress: map['macAddress'] as String,
      networkName: map['networkName'] as String,
      nicId: map['nicId'] as String,
      selectionTypeForFailover: map['selectionTypeForFailover'] as String,
      targetNetworkId: map['targetNetworkId'] as String,
      testNetworkId: map['testNetworkId'] as String,
    );
  }
}

