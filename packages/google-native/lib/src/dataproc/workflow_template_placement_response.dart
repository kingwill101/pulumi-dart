// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_selector_response.dart';
import 'managed_cluster_response.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementResponse {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final ClusterSelectorResponse clusterSelector;
  /// A cluster that is managed by the workflow.
  final ManagedClusterResponse managedCluster;

  /// Creates a new [WorkflowTemplatePlacementResponse].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] A cluster that is managed by the workflow.
  WorkflowTemplatePlacementResponse({
    required this.clusterSelector,
    required this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': clusterSelector.toMap(),
      'managedCluster': managedCluster.toMap(),
    };
  }

  factory WorkflowTemplatePlacementResponse.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementResponse(
      clusterSelector: ClusterSelectorResponse.fromMap((map['clusterSelector'] as Map).cast<String, dynamic>()),
      managedCluster: ManagedClusterResponse.fromMap((map['managedCluster'] as Map).cast<String, dynamic>()),
    );
  }
}

