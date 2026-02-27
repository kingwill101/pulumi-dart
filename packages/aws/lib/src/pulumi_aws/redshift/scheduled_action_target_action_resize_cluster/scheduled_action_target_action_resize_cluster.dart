// ignore_for_file: unused_element, unnecessary_cast

class ScheduledActionTargetActionResizeCluster {
  /// A boolean value indicating whether the resize operation is using the classic resize process. Default: `false`.
  final bool? classic;

  /// The unique identifier for the cluster to resize.
  final String clusterIdentifier;

  /// The new cluster type for the specified cluster.
  final String? clusterType;

  /// The new node type for the nodes you are adding.
  final String? nodeType;

  /// The new number of nodes for the cluster.
  final int? numberOfNodes;

  ScheduledActionTargetActionResizeCluster({
    this.classic,
    required this.clusterIdentifier,
    this.clusterType,
    this.nodeType,
    this.numberOfNodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final classicValue = classic;
    if (classicValue != null) {
      map['classic'] = classicValue;
    }
    map['clusterIdentifier'] = clusterIdentifier;
    final clusterTypeValue = clusterType;
    if (clusterTypeValue != null) {
      map['clusterType'] = clusterTypeValue;
    }
    final nodeTypeValue = nodeType;
    if (nodeTypeValue != null) {
      map['nodeType'] = nodeTypeValue;
    }
    final numberOfNodesValue = numberOfNodes;
    if (numberOfNodesValue != null) {
      map['numberOfNodes'] = numberOfNodesValue;
    }
    return map;
  }

  factory ScheduledActionTargetActionResizeCluster.fromMap(
      Map<String, dynamic> map) {
    return ScheduledActionTargetActionResizeCluster(
      classic: map['classic'] == null ? null : map['classic'] as bool,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterType:
          map['clusterType'] == null ? null : map['clusterType'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      numberOfNodes:
          map['numberOfNodes'] == null ? null : map['numberOfNodes'] as int,
    );
  }
}
