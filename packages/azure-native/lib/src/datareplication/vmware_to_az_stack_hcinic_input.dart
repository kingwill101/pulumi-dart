// ignore_for_file: unused_element, unnecessary_cast


/// VMwareToAzStackHCI NIC properties.
class VMwareToAzStackHCINicInput {
  /// Gets or sets the NIC label.
  final String label;
  /// Gets or sets the NIC Id.
  final String nicId;
  /// Gets or sets the selection type of the NIC.
  final String selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final String targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final String testNetworkId;

  /// Creates a new [VMwareToAzStackHCINicInput].
  /// [label] Gets or sets the NIC label.
  /// [nicId] Gets or sets the NIC Id.
  /// [selectionTypeForFailover] Gets or sets the selection type of the NIC.
  /// [targetNetworkId] Gets or sets the target network Id within AzStackHCI Cluster.
  /// [testNetworkId] Gets or sets the target test network Id within AzStackHCI Cluster.
  VMwareToAzStackHCINicInput({
    required this.label,
    required this.nicId,
    required this.selectionTypeForFailover,
    required this.targetNetworkId,
    required this.testNetworkId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'label': label,
      'nicId': nicId,
      'selectionTypeForFailover': selectionTypeForFailover,
      'targetNetworkId': targetNetworkId,
      'testNetworkId': testNetworkId,
    };
  }

  factory VMwareToAzStackHCINicInput.fromMap(Map<String, dynamic> map) {
    return VMwareToAzStackHCINicInput(
      label: map['label'] as String,
      nicId: map['nicId'] as String,
      selectionTypeForFailover: map['selectionTypeForFailover'] as String,
      targetNetworkId: map['targetNetworkId'] as String,
      testNetworkId: map['testNetworkId'] as String,
    );
  }
}

