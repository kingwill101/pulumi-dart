// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// HyperVToAzStackHCI NIC properties.
class HyperVToAzStackHCINicInput {
  /// Gets or sets the NIC Id.
  final pulumi.Input<String> nicId;
  /// Gets or sets the selection type of the NIC.
  final pulumi.Input<String> selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final pulumi.Input<String> targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final pulumi.Input<String> testNetworkId;

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
      nicId: (map['nicId'] as String).input(),
      selectionTypeForFailover: (map['selectionTypeForFailover'] as String).input(),
      targetNetworkId: (map['targetNetworkId'] as String).input(),
      testNetworkId: (map['testNetworkId'] as String).input(),
    );
  }
}

