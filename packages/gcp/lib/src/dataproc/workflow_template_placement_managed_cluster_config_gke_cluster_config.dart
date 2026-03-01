// ignore_for_file: unused_element, unnecessary_cast

import 'workflow_template_placement_managed_cluster_config_gke_cluster_config_namespaced_gke_deployment_target.dart';

class WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig {
  /// A target for the deployment.
  final WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget? namespacedGkeDeploymentTarget;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig].
  /// [namespacedGkeDeploymentTarget] A target for the deployment.
  WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig({
    this.namespacedGkeDeploymentTarget,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespacedGkeDeploymentTarget': ?namespacedGkeDeploymentTarget == null ? null : namespacedGkeDeploymentTarget!.toMap(),
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig(
      namespacedGkeDeploymentTarget: map['namespacedGkeDeploymentTarget'] == null ? null : WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfigNamespacedGkeDeploymentTarget.fromMap((map['namespacedGkeDeploymentTarget'] as Map).cast<String, dynamic>()),
    );
  }
}

