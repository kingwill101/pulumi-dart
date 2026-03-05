// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// VMwareToAzStackHCI NIC properties.
class VMwareToAzStackHCINicInput {
  /// Gets or sets the NIC label.
  final pulumi.Input<String> label;
  /// Gets or sets the NIC Id.
  final pulumi.Input<String> nicId;
  /// Gets or sets the selection type of the NIC.
  final pulumi.Input<String> selectionTypeForFailover;
  /// Gets or sets the target network Id within AzStackHCI Cluster.
  final pulumi.Input<String> targetNetworkId;
  /// Gets or sets the target test network Id within AzStackHCI Cluster.
  final pulumi.Input<String> testNetworkId;

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
      label: pulumi.Input.fromValue(map['label'] as String),
      nicId: pulumi.Input.fromValue(map['nicId'] as String),
      selectionTypeForFailover: pulumi.Input.fromValue(map['selectionTypeForFailover'] as String),
      targetNetworkId: pulumi.Input.fromValue(map['targetNetworkId'] as String),
      testNetworkId: pulumi.Input.fromValue(map['testNetworkId'] as String),
    );
  }
}

