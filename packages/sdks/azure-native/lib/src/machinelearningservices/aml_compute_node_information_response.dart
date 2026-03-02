// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Compute node information related to a AmlCompute.
class AmlComputeNodeInformationResponse {
  /// ID of the compute node.
  final pulumi.Input<String> nodeId;
  /// State of the compute node. Values are idle, running, preparing, unusable, leaving and preempted.
  final pulumi.Input<String> nodeState;
  /// SSH port number of the node.
  final pulumi.Input<double> port;
  /// Private IP address of the compute node.
  final pulumi.Input<String> privateIpAddress;
  /// Public IP address of the compute node.
  final pulumi.Input<String> publicIpAddress;
  /// ID of the Experiment running on the node, if any else null.
  final pulumi.Input<String> runId;

  /// Creates a new [AmlComputeNodeInformationResponse].
  /// [nodeId] ID of the compute node.
  /// [nodeState] State of the compute node. Values are idle, running, preparing, unusable, leaving and preempted.
  /// [port] SSH port number of the node.
  /// [privateIpAddress] Private IP address of the compute node.
  /// [publicIpAddress] Public IP address of the compute node.
  /// [runId] ID of the Experiment running on the node, if any else null.
  AmlComputeNodeInformationResponse({
    required this.nodeId,
    required this.nodeState,
    required this.port,
    required this.privateIpAddress,
    required this.publicIpAddress,
    required this.runId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nodeId': nodeId,
      'nodeState': nodeState,
      'port': port,
      'privateIpAddress': privateIpAddress,
      'publicIpAddress': publicIpAddress,
      'runId': runId,
    };
  }

  factory AmlComputeNodeInformationResponse.fromMap(Map<String, dynamic> map) {
    return AmlComputeNodeInformationResponse(
      nodeId: (map['nodeId'] as String).input(),
      nodeState: (map['nodeState'] as String).input(),
      port: (map['port'] as double).input(),
      privateIpAddress: (map['privateIpAddress'] as String).input(),
      publicIpAddress: (map['publicIpAddress'] as String).input(),
      runId: (map['runId'] as String).input(),
    );
  }
}

