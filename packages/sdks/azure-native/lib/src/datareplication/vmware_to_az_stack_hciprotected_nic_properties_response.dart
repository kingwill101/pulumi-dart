// ignore_for_file: unused_element, unnecessary_cast


/// VMwareToAzStackHCI NIC properties.
class VMwareToAzStackHCIProtectedNicPropertiesResponse {
  /// Gets or sets a value indicating whether this is the primary NIC.
  final bool? isPrimaryNic;
  /// Gets or sets the NIC label.
  final String label;
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
      isPrimaryNic: map['isPrimaryNic'] == null ? null : map['isPrimaryNic'] as bool,
      label: map['label'] as String,
      macAddress: map['macAddress'] as String,
      networkName: map['networkName'] as String,
      nicId: map['nicId'] as String,
      selectionTypeForFailover: map['selectionTypeForFailover'] as String,
      targetNetworkId: map['targetNetworkId'] as String,
      testNetworkId: map['testNetworkId'] as String,
    );
  }
}

