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

  /// Creates a new [ScheduledActionTargetActionResizeCluster].
  /// [classic] A boolean value indicating whether the resize operation is using the classic resize process. Default: `false`.
  /// [clusterIdentifier] The unique identifier for the cluster to resize.
  /// [clusterType] The new cluster type for the specified cluster.
  /// [nodeType] The new node type for the nodes you are adding.
  /// [numberOfNodes] The new number of nodes for the cluster.
  ScheduledActionTargetActionResizeCluster({
    this.classic,
    required this.clusterIdentifier,
    this.clusterType,
    this.nodeType,
    this.numberOfNodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'classic': ?classic,
      'clusterIdentifier': clusterIdentifier,
      'clusterType': ?clusterType,
      'nodeType': ?nodeType,
      'numberOfNodes': ?numberOfNodes,
    };
  }

  factory ScheduledActionTargetActionResizeCluster.fromMap(
    Map<String, dynamic> map,
  ) {
    return ScheduledActionTargetActionResizeCluster(
      classic: map['classic'] == null ? null : map['classic'] as bool,
      clusterIdentifier: map['clusterIdentifier'] as String,
      clusterType: map['clusterType'] == null
          ? null
          : map['clusterType'] as String,
      nodeType: map['nodeType'] == null ? null : map['nodeType'] as String,
      numberOfNodes: map['numberOfNodes'] == null
          ? null
          : map['numberOfNodes'] as int,
    );
  }
}
