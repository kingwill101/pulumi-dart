// ignore_for_file: unused_element, unnecessary_cast


/// VMwareToAzStackHCI NIC properties.
class VMwareToAzStackHCINicInputResponse {
  /// Gets or sets the NIC label.
  final String label;
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

  /// Creates a new [VMwareToAzStackHCINicInputResponse].
  /// [label] Gets or sets the NIC label.
  /// [networkName] Gets or sets the network name.
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  VMwareToAzStackHCINicInputResponse({
    required this.label,
    required this.networkName,
    required this.nicId,
    required this.selectionTypeForFailover,
    required this.targetNetworkId,
    required this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'networkName': networkName,
      'nicId': nicId,
      'selectionTypeForFailover': selectionTypeForFailover,
      'targetNetworkId': targetNetworkId,
      'testNetworkId': testNetworkId,
    };
  }

  factory VMwareToAzStackHCINicInputResponse.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCINicInputResponse(
      label: map['label'] as String,
      networkName: map['networkName'] as String,
      nicId: map['nicId'] as String,
      selectionTypeForFailover: map['selectionTypeForFailover'] as String,
      targetNetworkId: map['targetNetworkId'] as String,
      testNetworkId: map['testNetworkId'] as String,
    );
  }
}

