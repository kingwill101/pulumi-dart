// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Counts of various compute node states on the amlCompute.
class NodeStateCountsResponse {
  /// Number of compute nodes in idle state.
  final pulumi.Input<int> idleNodeCount;

  /// Number of compute nodes which are leaving the amlCompute.
  final pulumi.Input<int> leavingNodeCount;

  /// Number of compute nodes which are in preempted state.
  final pulumi.Input<int> preemptedNodeCount;

  /// Number of compute nodes which are being prepared.
  final pulumi.Input<int> preparingNodeCount;

  /// Number of compute nodes which are running jobs.
  final pulumi.Input<int> runningNodeCount;

  /// Number of compute nodes which are in unusable state.
  final pulumi.Input<int> unusableNodeCount;

  /// Creates a new [NodeStateCountsResponse].
  /// [idleNodeCount] Number of compute nodes in idle state.
  /// [leavingNodeCount] Number of compute nodes which are leaving the amlCompute.
  /// [preemptedNodeCount] Number of compute nodes which are in preempted state.
  /// [preparingNodeCount] Number of compute nodes which are being prepared.
  /// [runningNodeCount] Number of compute nodes which are running jobs.
  /// [unusableNodeCount] Number of compute nodes which are in unusable state.
  NodeStateCountsResponse({
    required this.idleNodeCount,
    required this.leavingNodeCount,
    required this.preemptedNodeCount,
    required this.preparingNodeCount,
    required this.runningNodeCount,
    required this.unusableNodeCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'idleNodeCount': idleNodeCount,
      'leavingNodeCount': leavingNodeCount,
      'preemptedNodeCount': preemptedNodeCount,
      'preparingNodeCount': preparingNodeCount,
      'runningNodeCount': runningNodeCount,
      'unusableNodeCount': unusableNodeCount,
    };
  }

  factory NodeStateCountsResponse.fromMap(Map<String, dynamic> map) {
    return NodeStateCountsResponse(
      idleNodeCount: pulumi.Input.fromValue(map['idleNodeCount'] as int),
      leavingNodeCount: pulumi.Input.fromValue(map['leavingNodeCount'] as int),
      preemptedNodeCount: pulumi.Input.fromValue(
        map['preemptedNodeCount'] as int,
      ),
      preparingNodeCount: pulumi.Input.fromValue(
        map['preparingNodeCount'] as int,
      ),
      runningNodeCount: pulumi.Input.fromValue(map['runningNodeCount'] as int),
      unusableNodeCount: pulumi.Input.fromValue(
        map['unusableNodeCount'] as int,
      ),
    );
  }
}
