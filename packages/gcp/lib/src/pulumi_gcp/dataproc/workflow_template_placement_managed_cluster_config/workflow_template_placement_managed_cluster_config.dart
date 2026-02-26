// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workflow_template_placement_managed_cluster_config_autoscaling_config/workflow_template_placement_managed_cluster_config_autoscaling_config.dart';
import '../workflow_template_placement_managed_cluster_config_encryption_config/workflow_template_placement_managed_cluster_config_encryption_config.dart';
import '../workflow_template_placement_managed_cluster_config_endpoint_config/workflow_template_placement_managed_cluster_config_endpoint_config.dart';
import '../workflow_template_placement_managed_cluster_config_gce_cluster_config/workflow_template_placement_managed_cluster_config_gce_cluster_config.dart';
import '../workflow_template_placement_managed_cluster_config_gke_cluster_config/workflow_template_placement_managed_cluster_config_gke_cluster_config.dart';
import '../workflow_template_placement_managed_cluster_config_initialization_action/workflow_template_placement_managed_cluster_config_initialization_action.dart';
import '../workflow_template_placement_managed_cluster_config_lifecycle_config/workflow_template_placement_managed_cluster_config_lifecycle_config.dart';
import '../workflow_template_placement_managed_cluster_config_master_config/workflow_template_placement_managed_cluster_config_master_config.dart';
import '../workflow_template_placement_managed_cluster_config_metastore_config/workflow_template_placement_managed_cluster_config_metastore_config.dart';
import '../workflow_template_placement_managed_cluster_config_secondary_worker_config/workflow_template_placement_managed_cluster_config_secondary_worker_config.dart';
import '../workflow_template_placement_managed_cluster_config_security_config/workflow_template_placement_managed_cluster_config_security_config.dart';
import '../workflow_template_placement_managed_cluster_config_software_config/workflow_template_placement_managed_cluster_config_software_config.dart';
import '../workflow_template_placement_managed_cluster_config_worker_config/workflow_template_placement_managed_cluster_config_worker_config.dart';

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

  /// The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as <span pulumi-lang-nodejs="`gceClusterConfig`" pulumi-lang-dotnet="`GceClusterConfig`" pulumi-lang-go="`gceClusterConfig`" pulumi-lang-python="`gce_cluster_config`" pulumi-lang-yaml="`gceClusterConfig`" pulumi-lang-java="`gceClusterConfig`">`gce_cluster_config`</span>, <span pulumi-lang-nodejs="`masterConfig`" pulumi-lang-dotnet="`MasterConfig`" pulumi-lang-go="`masterConfig`" pulumi-lang-python="`master_config`" pulumi-lang-yaml="`masterConfig`" pulumi-lang-java="`masterConfig`">`master_config`</span>, <span pulumi-lang-nodejs="`workerConfig`" pulumi-lang-dotnet="`WorkerConfig`" pulumi-lang-go="`workerConfig`" pulumi-lang-python="`worker_config`" pulumi-lang-yaml="`workerConfig`" pulumi-lang-java="`workerConfig`">`worker_config`</span>, <span pulumi-lang-nodejs="`secondaryWorkerConfig`" pulumi-lang-dotnet="`SecondaryWorkerConfig`" pulumi-lang-go="`secondaryWorkerConfig`" pulumi-lang-python="`secondary_worker_config`" pulumi-lang-yaml="`secondaryWorkerConfig`" pulumi-lang-java="`secondaryWorkerConfig`">`secondary_worker_config`</span>, and <span pulumi-lang-nodejs="`autoscalingConfig`" pulumi-lang-dotnet="`AutoscalingConfig`" pulumi-lang-go="`autoscalingConfig`" pulumi-lang-python="`autoscaling_config`" pulumi-lang-yaml="`autoscalingConfig`" pulumi-lang-java="`autoscalingConfig`">`autoscaling_config`</span>.
  final WorkflowTemplatePlacementManagedClusterConfigGkeClusterConfig?
      gkeClusterConfig;

  /// Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's <span pulumi-lang-nodejs="`role`" pulumi-lang-dotnet="`Role`" pulumi-lang-go="`role`" pulumi-lang-python="`role`" pulumi-lang-yaml="`role`" pulumi-lang-java="`role`">`role`</span> metadata to run an executable on a master or worker node, as shown below using <span pulumi-lang-nodejs="`curl`" pulumi-lang-dotnet="`Curl`" pulumi-lang-go="`curl`" pulumi-lang-python="`curl`" pulumi-lang-yaml="`curl`" pulumi-lang-java="`curl`">`curl`</span> (you can also use <span pulumi-lang-nodejs="`wget`" pulumi-lang-dotnet="`Wget`" pulumi-lang-go="`wget`" pulumi-lang-python="`wget`" pulumi-lang-yaml="`wget`" pulumi-lang-java="`wget`">`wget`</span>): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if ; then ... master specific actions ... else ... worker specific actions ... fi
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
      map['initializationActions'] = Input.encodeList<
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
          : Input.decodeList<
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
