// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'workflow_template_placement_managed_cluster_config_autoscaling_config.dart';
import 'workflow_template_placement_managed_cluster_config_encryption_config.dart';
import 'workflow_template_placement_managed_cluster_config_endpoint_config.dart';
import 'workflow_template_placement_managed_cluster_config_gce_cluster_config.dart';
import 'workflow_template_placement_managed_cluster_config_gke_cluster_config.dart';
import 'workflow_template_placement_managed_cluster_config_initialization_action.dart';
import 'workflow_template_placement_managed_cluster_config_lifecycle_config.dart';
import 'workflow_template_placement_managed_cluster_config_master_config.dart';
import 'workflow_template_placement_managed_cluster_config_metastore_config.dart';
import 'workflow_template_placement_managed_cluster_config_secondary_worker_config.dart';
import 'workflow_template_placement_managed_cluster_config_security_config.dart';
import 'workflow_template_placement_managed_cluster_config_software_config.dart';
import 'workflow_template_placement_managed_cluster_config_worker_config.dart';

class WorkflowTemplatePlacementManagedClusterConfig {
  /// Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig?
      autoscalingConfig;

  /// Encryption settings for the cluster.
  final WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig?
      encryptionConfig;

  /// Port/endpoint configuration for this cluster
  final WorkflowTemplatePlacementManagedClusterConfigEndpointConfig?
      endpointConfig;

  /// The shared Compute Engine config settings for all instances in a cluster.
  final WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig?
      gceClusterConfig;

  /// The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gce_cluster_config`, `master_config`, `worker_config`, `secondary_worker_config`, and `autoscaling_config`.
  final WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig?
      gkeClusterConfig;

  /// Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
  final List<WorkflowTemplatePlacementManagedClusterConfigInitializationAction>?
      initializationActions;

  /// Lifecycle setting for the cluster.
  final WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig?
      lifecycleConfig;

  /// The Compute Engine config settings for additional worker instances in a cluster.
  final WorkflowTemplatePlacementManagedClusterConfigMasterConfig? masterConfig;

  /// Metastore configuration.
  final WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig?
      metastoreConfig;

  /// The Compute Engine config settings for additional worker instances in a cluster.
  final WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig?
      secondaryWorkerConfig;

  /// Security settings for the cluster.
  final WorkflowTemplatePlacementManagedClusterConfigSecurityConfig?
      securityConfig;

  /// The config settings for software inside the cluster.
  final WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig?
      softwareConfig;

  /// A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  final String? stagingBucket;

  /// A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket.
  final String? tempBucket;

  /// The Compute Engine config settings for additional worker instances in a cluster.
  ///
  /// - - -
  final WorkflowTemplatePlacementManagedClusterConfigWorkerConfig? workerConfig;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfig].
  /// [autoscalingConfig] Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  /// [encryptionConfig] Encryption settings for the cluster.
  /// [endpointConfig] Port/endpoint configuration for this cluster
  /// [gceClusterConfig] The shared Compute Engine config settings for all instances in a cluster.
  /// [gkeClusterConfig] The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as `gce_cluster_config`, `master_config`, `worker_config`, `secondary_worker_config`, and `autoscaling_config`.
  /// [initializationActions] Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's `role` metadata to run an executable on a master or worker node, as shown below using `curl` (you can also use `wget`): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Lifecycle setting for the cluster.
  /// [masterConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [metastoreConfig] Metastore configuration.
  /// [secondaryWorkerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  /// [securityConfig] Security settings for the cluster.
  /// [softwareConfig] The config settings for software inside the cluster.
  /// [stagingBucket] A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see [Dataproc staging and temp buckets](https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)).
  /// [tempBucket] A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket.
  /// [workerConfig] The Compute Engine config settings for additional worker instances in a cluster.
  WorkflowTemplatePlacementManagedClusterConfig({
    this.autoscalingConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.gkeClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.secondaryWorkerConfig,
    this.securityConfig,
    this.softwareConfig,
    this.stagingBucket,
    this.tempBucket,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = autoscalingConfigValue.toMap();
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    final endpointConfigValue = endpointConfig;
    if (endpointConfigValue != null) {
      map['endpointConfig'] = endpointConfigValue.toMap();
    }
    final gceClusterConfigValue = gceClusterConfig;
    if (gceClusterConfigValue != null) {
      map['gceClusterConfig'] = gceClusterConfigValue.toMap();
    }
    final gkeClusterConfigValue = gkeClusterConfig;
    if (gkeClusterConfigValue != null) {
      map['gkeClusterConfig'] = gkeClusterConfigValue.toMap();
    }
    final initializationActionsValue = initializationActions;
    if (initializationActionsValue != null) {
      map['initializationActions'] = pulumi.Input.encodeList<
              WorkflowTemplatePlacementManagedClusterConfigInitializationAction,
              Map<String, dynamic>>(
          initializationActionsValue, (value) => value.toMap());
    }
    final lifecycleConfigValue = lifecycleConfig;
    if (lifecycleConfigValue != null) {
      map['lifecycleConfig'] = lifecycleConfigValue.toMap();
    }
    final masterConfigValue = masterConfig;
    if (masterConfigValue != null) {
      map['masterConfig'] = masterConfigValue.toMap();
    }
    final metastoreConfigValue = metastoreConfig;
    if (metastoreConfigValue != null) {
      map['metastoreConfig'] = metastoreConfigValue.toMap();
    }
    final secondaryWorkerConfigValue = secondaryWorkerConfig;
    if (secondaryWorkerConfigValue != null) {
      map['secondaryWorkerConfig'] = secondaryWorkerConfigValue.toMap();
    }
    final securityConfigValue = securityConfig;
    if (securityConfigValue != null) {
      map['securityConfig'] = securityConfigValue.toMap();
    }
    final softwareConfigValue = softwareConfig;
    if (softwareConfigValue != null) {
      map['softwareConfig'] = softwareConfigValue.toMap();
    }
    final stagingBucketValue = stagingBucket;
    if (stagingBucketValue != null) {
      map['stagingBucket'] = stagingBucketValue;
    }
    final tempBucketValue = tempBucket;
    if (tempBucketValue != null) {
      map['tempBucket'] = tempBucketValue;
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = workerConfigValue.toMap();
    }
    return map;
  }

  factory WorkflowTemplatePlacementManagedClusterConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplatePlacementManagedClusterConfig(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigAutoscalingConfig
              .fromMap(
                  (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigEncryptionConfig
              .fromMap(
                  (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: map['endpointConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigEndpointConfig.fromMap(
              (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: map['gceClusterConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigGceClusterConfig
              .fromMap(
                  (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: map['gkeClusterConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig
              .fromMap(
                  (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: map['initializationActions'] == null
          ? null
          : pulumi.Input.decodeList<
                  WorkflowTemplatePlacementManagedClusterConfigInitializationAction>(
              map['initializationActions'],
              (value) =>
                  WorkflowTemplatePlacementManagedClusterConfigInitializationAction
                      .fromMap((value as Map).cast<String, dynamic>())),
      lifecycleConfig: map['lifecycleConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigLifecycleConfig
              .fromMap((map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: map['masterConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigMasterConfig.fromMap(
              (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigMetastoreConfig
              .fromMap((map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigSecondaryWorkerConfig
              .fromMap((map['secondaryWorkerConfig'] as Map)
                  .cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigSecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigSoftwareConfig.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      stagingBucket:
          map['stagingBucket'] == null ? null : map['stagingBucket'] as String,
      tempBucket:
          map['tempBucket'] == null ? null : map['tempBucket'] as String,
      workerConfig: map['workerConfig'] == null
          ? null
          : WorkflowTemplatePlacementManagedClusterConfigWorkerConfig.fromMap(
              (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
