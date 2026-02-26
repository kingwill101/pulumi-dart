// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_selector2.dart';
import 'managed_cluster2.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacement2 {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final ClusterSelector2? clusterSelector;

  /// Optional. A cluster that is managed by the workflow.
  final ManagedCluster2? managedCluster;

  WorkflowTemplatePlacement2({
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

  factory WorkflowTemplatePlacement2.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacement2(
      clusterSelector: map['clusterSelector'] == null
          ? null
          : ClusterSelector2.fromMap(
              (map['clusterSelector'] as Map).cast<String, dynamic>()),
      managedCluster: map['managedCluster'] == null
          ? null
          : ManagedCluster2.fromMap(
              (map['managedCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
