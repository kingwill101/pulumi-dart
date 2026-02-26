// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'autoscaling_config.dart';
import 'auxiliary_node_group.dart';
import 'dataproc_metric_config.dart';
import 'encryption_config8.dart';
import 'endpoint_config.dart';
import 'gce_cluster_config.dart';
import 'gke_cluster_config.dart';
import 'instance_group_config.dart';
import 'lifecycle_config.dart';
import 'metastore_config.dart';
import 'node_initialization_action.dart';
import 'security_config.dart';
import 'software_config3.dart';

/// The cluster config.
class ClusterConfig2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final AutoscalingConfig? autoscalingConfig;

  /// Optional. The node group settings.
  final List<AuxiliaryNodeGroup>? auxiliaryNodeGroups;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String? configBucket;

  /// Optional. The config for Dataproc metrics.
  final DataprocMetricConfig? dataprocMetricConfig;

  /// Optional. Encryption settings for the cluster.
  final EncryptionConfig8? encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final EndpointConfig? endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final GceClusterConfig? gceClusterConfig;

  /// Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final GkeClusterConfig? gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final List<NodeInitializationAction>? initializationActions;

  /// Optional. Lifecycle setting for the cluster.
  final LifecycleConfig? lifecycleConfig;

  /// Optional. The Compute Engine config settings for the cluster's master instance.
  final InstanceGroupConfig? masterConfig;

  /// Optional. Metastore configuration.
  final MetastoreConfig? metastoreConfig;

  /// Optional. The Compute Engine config settings for a cluster's secondary worker instances
  final InstanceGroupConfig? secondaryWorkerConfig;

  /// Optional. Security settings for the cluster.
  final SecurityConfig? securityConfig;

  /// Optional. The config settings for cluster software.
  final SoftwareConfig3? softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String? tempBucket;

  /// Optional. The Compute Engine config settings for the cluster's worker instances.
  final InstanceGroupConfig? workerConfig;

  ClusterConfig2({
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.configBucket,
    this.dataprocMetricConfig,
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
    this.tempBucket,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoscalingConfigValue = autoscalingConfig;
    if (autoscalingConfigValue != null) {
      map['autoscalingConfig'] = autoscalingConfigValue.toMap();
    }
    final auxiliaryNodeGroupsValue = auxiliaryNodeGroups;
    if (auxiliaryNodeGroupsValue != null) {
      map['auxiliaryNodeGroups'] =
          Input.encodeList<AuxiliaryNodeGroup, Map<String, dynamic>>(
              auxiliaryNodeGroupsValue, (value) => value.toMap());
    }
    final configBucketValue = configBucket;
    if (configBucketValue != null) {
      map['configBucket'] = configBucketValue;
    }
    final dataprocMetricConfigValue = dataprocMetricConfig;
    if (dataprocMetricConfigValue != null) {
      map['dataprocMetricConfig'] = dataprocMetricConfigValue.toMap();
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
      map['initializationActions'] =
          Input.encodeList<NodeInitializationAction, Map<String, dynamic>>(
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

  factory ClusterConfig2.fromMap(Map<String, dynamic> map) {
    return ClusterConfig2(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : AutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      auxiliaryNodeGroups: map['auxiliaryNodeGroups'] == null
          ? null
          : Input.decodeList<AuxiliaryNodeGroup>(
              map['auxiliaryNodeGroups'],
              (value) => AuxiliaryNodeGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      configBucket:
          map['configBucket'] == null ? null : map['configBucket'] as String,
      dataprocMetricConfig: map['dataprocMetricConfig'] == null
          ? null
          : DataprocMetricConfig.fromMap(
              (map['dataprocMetricConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig8.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: map['endpointConfig'] == null
          ? null
          : EndpointConfig.fromMap(
              (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: map['gceClusterConfig'] == null
          ? null
          : GceClusterConfig.fromMap(
              (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: map['gkeClusterConfig'] == null
          ? null
          : GkeClusterConfig.fromMap(
              (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: map['initializationActions'] == null
          ? null
          : Input.decodeList<NodeInitializationAction>(
              map['initializationActions'],
              (value) => NodeInitializationAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleConfig: map['lifecycleConfig'] == null
          ? null
          : LifecycleConfig.fromMap(
              (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: map['masterConfig'] == null
          ? null
          : InstanceGroupConfig.fromMap(
              (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : MetastoreConfig.fromMap(
              (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null
          ? null
          : InstanceGroupConfig.fromMap(
              (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : SecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : SoftwareConfig3.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      tempBucket:
          map['tempBucket'] == null ? null : map['tempBucket'] as String,
      workerConfig: map['workerConfig'] == null
          ? null
          : InstanceGroupConfig.fromMap(
              (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
