// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_selector.dart';
import 'managed_cluster.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacement {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final ClusterSelector? clusterSelector;

  /// A cluster that is managed by the workflow.
  final ManagedCluster? managedCluster;

  /// Creates a new [WorkflowTemplatePlacement].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] A cluster that is managed by the workflow.
  WorkflowTemplatePlacement({
    this.clusterSelector,
    this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clusterSelectorValue = clusterSelector;
    if (clusterSelectorValue != null) {
      map['clusterSelector'] = clusterSelectorValue.toMap();
    }
    final managedClusterValue = managedCluster;
    if (managedClusterValue != null) {
      map['managedCluster'] = managedClusterValue.toMap();
    }
    return map;
  }

  factory WorkflowTemplatePlacement.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacement(
      clusterSelector: map['clusterSelector'] == null
          ? null
          : ClusterSelector.fromMap(
              (map['clusterSelector'] as Map).cast<String, dynamic>()),
      managedCluster: map['managedCluster'] == null
          ? null
          : ManagedCluster.fromMap(
              (map['managedCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
