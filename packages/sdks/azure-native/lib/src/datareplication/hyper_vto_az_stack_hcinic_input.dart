// ignore_for_file: unused_element, unnecessary_cast


/// HyperVToAzStackHCI NIC properties.
class HyperVToAzStackHCINicInput {
  /// Gets or sets the NIC Id.
  final String nicId;
  /// Gets or sets the selection type of the NIC.
  final String selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final String targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final String testNetworkId;

  /// Creates a new [HyperVToAzStackHCINicInput].
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  HyperVToAzStackHCINicInput({
    required this.nicId,
    required this.selectionTypeForFailover,
    required this.targetNetworkId,
    required this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nicId': nicId,
      'selectionTypeForFailover': selectionTypeForFailover,
      'targetNetworkId': targetNetworkId,
      'testNetworkId': testNetworkId,
    };
  }

  factory HyperVToAzStackHCINicInput.fromMap(Map<String, dynamic> map) {
    return HyperVToAzStackHCINicInput(
      nicId: map['nicId'] as String,
      selectionTypeForFailover: map['selectionTypeForFailover'] as String,
      targetNetworkId: map['targetNetworkId'] as String,
      testNetworkId: map['testNetworkId'] as String,
    );
  }
}

