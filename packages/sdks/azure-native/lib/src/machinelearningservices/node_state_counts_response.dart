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
  const NodeStateCountsResponse({
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
      idleNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['idleNodeCount'])),
      leavingNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['leavingNodeCount'])),
      preemptedNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['preemptedNodeCount'])),
      preparingNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['preparingNodeCount'])),
      runningNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['runningNodeCount'])),
      unusableNodeCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['unusableNodeCount'])),
    );
  }
}
