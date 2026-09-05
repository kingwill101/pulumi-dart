// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledActionTargetActionResizeCluster {
  /// A boolean value indicating whether the resize operation is using the classic resize process. Default: `false`.
  final pulumi.Input<bool?>? classic;
  /// The unique identifier for the cluster to resize.
  final pulumi.Input<String> clusterIdentifier;
  /// The new cluster type for the specified cluster.
  final pulumi.Input<String?>? clusterType;
  /// The new node type for the nodes you are adding.
  final pulumi.Input<String?>? nodeType;
  /// The new number of nodes for the cluster.
  final pulumi.Input<int?>? numberOfNodes;

  /// Creates a new [ScheduledActionTargetActionResizeCluster].
  /// [classic] A boolean value indicating whether the resize operation is using the classic resize process. Default: `false`.
  /// [clusterIdentifier] The unique identifier for the cluster to resize.
  /// [clusterType] The new cluster type for the specified cluster.
  /// [nodeType] The new node type for the nodes you are adding.
  /// [numberOfNodes] The new number of nodes for the cluster.
  const ScheduledActionTargetActionResizeCluster({
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

  factory ScheduledActionTargetActionResizeCluster.fromMap(Map<String, dynamic> map) {
    return ScheduledActionTargetActionResizeCluster(
      classic: (() { final guardedValue = map['classic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
      clusterType: (() { final guardedValue = map['clusterType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nodeType: (() { final guardedValue = map['nodeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      numberOfNodes: (() { final guardedValue = map['numberOfNodes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
    );
  }
}
