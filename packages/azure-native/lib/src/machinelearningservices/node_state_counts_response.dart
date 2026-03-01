// ignore_for_file: unused_element, unnecessary_cast


/// Counts of various compute node states on the amlCompute.
class NodeStateCountsResponse {
  /// Number of compute nodes in idle state.
  final int idleNodeCount;
  /// Number of compute nodes which are leaving the amlCompute.
  final int leavingNodeCount;
  /// Number of compute nodes which are in preempted state.
  final int preemptedNodeCount;
  /// Number of compute nodes which are being prepared.
  final int preparingNodeCount;
  /// Number of compute nodes which are running jobs.
  final int runningNodeCount;
  /// Number of compute nodes which are in unusable state.
  final int unusableNodeCount;

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
      idleNodeCount: map['idleNodeCount'] as int,
      leavingNodeCount: map['leavingNodeCount'] as int,
      preemptedNodeCount: map['preemptedNodeCount'] as int,
      preparingNodeCount: map['preparingNodeCount'] as int,
      runningNodeCount: map['runningNodeCount'] as int,
      unusableNodeCount: map['unusableNodeCount'] as int,
    );
  }
}

