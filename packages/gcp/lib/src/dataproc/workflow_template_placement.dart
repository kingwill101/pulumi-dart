// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_placement_cluster_selector.dart';
import 'workflow_template_placement_managed_cluster.dart';

class WorkflowTemplatePlacement {
  /// A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted.
  final WorkflowTemplatePlacementClusterSelector? clusterSelector;

  /// A cluster that is managed by the workflow.
  final WorkflowTemplatePlacementManagedCluster? managedCluster;

  /// Creates a new [WorkflowTemplatePlacement].
  /// [clusterSelector] A selector that chooses target cluster for jobs based on metadata. The selector is evaluated at the time each job is submitted.
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
          : WorkflowTemplatePlacementClusterSelector.fromMap(
              (map['clusterSelector'] as Map).cast<String, dynamic>()),
      managedCluster: map['managedCluster'] == null
          ? null
          : WorkflowTemplatePlacementManagedCluster.fromMap(
              (map['managedCluster'] as Map).cast<String, dynamic>()),
    );
  }
}
