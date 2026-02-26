// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_selector_response2.dart';
import 'managed_cluster_response2.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementResponse2 {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final ClusterSelectorResponse2 clusterSelector;

  /// Optional. A cluster that is managed by the workflow.
  final ManagedClusterResponse2 managedCluster;

  WorkflowTemplatePlacementResponse2({
    required this.clusterSelector,
    required this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterSelector'] = clusterSelector.toMap();
    map['managedCluster'] = managedCluster.toMap();
    return map;
  }

  factory WorkflowTemplatePlacementResponse2.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementResponse2(
      clusterSelector: ClusterSelectorResponse2.fromMap(
          (map['clusterSelector'] as Map).cast<String, dynamic>()),
      managedCluster: ManagedClusterResponse2.fromMap(
          (map['managedCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
