// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_selector_dataproc_v1beta2.dart';
import 'managed_cluster_dataproc_v1beta2.dart';

/// Specifies workflow execution target.Either managed_cluster or cluster_selector is required.
class WorkflowTemplatePlacementDataprocV1beta2 {
  /// Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  final ClusterSelectorDataprocV1beta2? clusterSelector;

  /// Optional. A cluster that is managed by the workflow.
  final ManagedClusterDataprocV1beta2? managedCluster;

  /// Creates a new [WorkflowTemplatePlacementDataprocV1beta2].
  /// [clusterSelector] Optional. A selector that chooses target cluster for jobs based on metadata.The selector is evaluated at the time each job is submitted.
  /// [managedCluster] Optional. A cluster that is managed by the workflow.
  WorkflowTemplatePlacementDataprocV1beta2({
    this.clusterSelector,
    this.managedCluster,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterSelector': ?clusterSelector == null
          ? null
          : clusterSelector!.toMap(),
      'managedCluster': ?managedCluster == null
          ? null
          : managedCluster!.toMap(),
    };
  }

  factory WorkflowTemplatePlacementDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementDataprocV1beta2(
      clusterSelector: map['clusterSelector'] == null
          ? null
          : ClusterSelectorDataprocV1beta2.fromMap(
              (map['clusterSelector'] as Map).cast<String, dynamic>(),
            ),
      managedCluster: map['managedCluster'] == null
          ? null
          : ManagedClusterDataprocV1beta2.fromMap(
              (map['managedCluster'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
