// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_cluster_config_autoscaling_config.dart';
import 'cluster_cluster_config_auxiliary_node_group.dart';
import 'cluster_cluster_config_dataproc_metric_config.dart';
import 'cluster_cluster_config_encryption_config.dart';
import 'cluster_cluster_config_endpoint_config.dart';
import 'cluster_cluster_config_gce_cluster_config.dart';
import 'cluster_cluster_config_initialization_action.dart';
import 'cluster_cluster_config_lifecycle_config.dart';
import 'cluster_cluster_config_master_config.dart';
import 'cluster_cluster_config_metastore_config.dart';
import 'cluster_cluster_config_preemptible_worker_config.dart';
import 'cluster_cluster_config_security_config.dart';
import 'cluster_cluster_config_software_config.dart';
import 'cluster_cluster_config_worker_config.dart';

class ClusterClusterConfig {
  /// The autoscaling policy config associated with the cluster.
  /// Note that once set, if `autoscaling_config` is the only field set in `cluster_config`, it can
  /// only be removed by setting `policy_uri = ""`, rather than removing the whole block.
  /// Structure defined below.
  final ClusterClusterConfigAutoscalingConfig? autoscalingConfig;

  /// A Dataproc NodeGroup resource is a group of Dataproc cluster nodes that execute an assigned role.
  /// Structure defined below.
  final List<ClusterClusterConfigAuxiliaryNodeGroup>? auxiliaryNodeGroups;

  /// The name of the cloud storage bucket ultimately used to house the staging data
  /// for the cluster. If `staging_bucket` is specified, it will contain this value, otherwise
  /// it will be the auto generated name.
  final String? bucket;

  /// The tier of the cluster.
  final String? clusterTier;

  /// The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  /// Structure defined below.
  final ClusterClusterConfigDataprocMetricConfig? dataprocMetricConfig;

  /// The Customer managed encryption keys settings for the cluster.
  /// Structure defined below.
  final ClusterClusterConfigEncryptionConfig? encryptionConfig;

  /// The config settings for port access on the cluster.
  /// Structure defined below.
  final ClusterClusterConfigEndpointConfig? endpointConfig;

  /// Common config settings for resources of Google Compute Engine cluster
  /// instances, applicable to all instances in the cluster. Structure defined below.
  final ClusterClusterConfigGceClusterConfig? gceClusterConfig;

  /// Commands to execute on each node after config is completed.
  /// You can specify multiple versions of these. Structure defined below.
  final List<ClusterClusterConfigInitializationAction>? initializationActions;

  /// The settings for auto deletion cluster schedule.
  /// Structure defined below.
  final ClusterClusterConfigLifecycleConfig? lifecycleConfig;

  /// The Google Compute Engine config settings for the master instances
  /// in a cluster. Structure defined below.
  final ClusterClusterConfigMasterConfig? masterConfig;

  /// The config setting for metastore service with the cluster.
  /// Structure defined below.
  /// - - -
  final ClusterClusterConfigMetastoreConfig? metastoreConfig;

  /// The Google Compute Engine config settings for the additional
  /// instances in a cluster. Structure defined below.
  /// * **NOTE** : `preemptible_worker_config` is
  /// an alias for the api's [secondaryWorkerConfig](https://cloud.google.com/dataproc/docs/reference/rest/v1/ClusterConfig#InstanceGroupConfig). The name doesn't necessarily mean it is preemptible and is named as
  /// such for legacy/compatibility reasons.
  final ClusterClusterConfigPreemptibleWorkerConfig? preemptibleWorkerConfig;

  /// Security related configuration. Structure defined below.
  final ClusterClusterConfigSecurityConfig? securityConfig;

  /// The config settings for software inside the cluster.
  /// Structure defined below.
  final ClusterClusterConfigSoftwareConfig? softwareConfig;

  /// The Cloud Storage staging bucket used to stage files,
  /// such as Hadoop jars, between client machines and the cluster.
  /// Note: If you don't explicitly specify a `staging_bucket`
  /// then GCP will auto create / assign one for you. However, you are not guaranteed
  /// an auto generated bucket which is solely dedicated to your cluster; it may be shared
  /// with other clusters in the same region/zone also choosing to use the auto generation
  /// option.
  final String? stagingBucket;

  /// The Cloud Storage temp bucket used to store ephemeral cluster
  /// and jobs data, such as Spark and MapReduce history files.
  /// Note: If you don't explicitly specify a `temp_bucket` then GCP will auto create / assign one for you.
  final String? tempBucket;

  /// The Google Compute Engine config settings for the worker instances
  /// in a cluster. Structure defined below.
  final ClusterClusterConfigWorkerConfig? workerConfig;

  /// Creates a new [ClusterClusterConfig].
  /// [autoscalingConfig] The autoscaling policy config associated with the cluster.
  /// [auxiliaryNodeGroups] A Dataproc NodeGroup resource is a group of Dataproc cluster nodes that execute an assigned role.
  /// [bucket] The name of the cloud storage bucket ultimately used to house the staging data
  /// [clusterTier] The tier of the cluster.
  /// [dataprocMetricConfig] The Compute Engine accelerator (GPU) configuration for these instances. Can be specified multiple times.
  /// [encryptionConfig] The Customer managed encryption keys settings for the cluster.
  /// [endpointConfig] The config settings for port access on the cluster.
  /// [gceClusterConfig] Common config settings for resources of Google Compute Engine cluster
  /// [initializationActions] Commands to execute on each node after config is completed.
  /// [lifecycleConfig] The settings for auto deletion cluster schedule.
  /// [masterConfig] The Google Compute Engine config settings for the master instances
  /// [metastoreConfig] The config setting for metastore service with the cluster.
  /// [preemptibleWorkerConfig] The Google Compute Engine config settings for the additional
  /// [securityConfig] Security related configuration. Structure defined below.
  /// [softwareConfig] The config settings for software inside the cluster.
  /// [stagingBucket] The Cloud Storage staging bucket used to stage files,
  /// [tempBucket] The Cloud Storage temp bucket used to store ephemeral cluster
  /// [workerConfig] The Google Compute Engine config settings for the worker instances
  ClusterClusterConfig({
    this.autoscalingConfig,
    this.auxiliaryNodeGroups,
    this.bucket,
    this.clusterTier,
    this.dataprocMetricConfig,
    this.encryptionConfig,
    this.endpointConfig,
    this.gceClusterConfig,
    this.initializationActions,
    this.lifecycleConfig,
    this.masterConfig,
    this.metastoreConfig,
    this.preemptibleWorkerConfig,
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
    final auxiliaryNodeGroupsValue = auxiliaryNodeGroups;
    if (auxiliaryNodeGroupsValue != null) {
      map['auxiliaryNodeGroups'] = pulumi.Input.encodeList<
              ClusterClusterConfigAuxiliaryNodeGroup, Map<String, dynamic>>(
          auxiliaryNodeGroupsValue, (value) => value.toMap());
    }
    final bucketValue = bucket;
    if (bucketValue != null) {
      map['bucket'] = bucketValue;
    }
    final clusterTierValue = clusterTier;
    if (clusterTierValue != null) {
      map['clusterTier'] = clusterTierValue;
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
    final initializationActionsValue = initializationActions;
    if (initializationActionsValue != null) {
      map['initializationActions'] = pulumi.Input.encodeList<
              ClusterClusterConfigInitializationAction, Map<String, dynamic>>(
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
    final preemptibleWorkerConfigValue = preemptibleWorkerConfig;
    if (preemptibleWorkerConfigValue != null) {
      map['preemptibleWorkerConfig'] = preemptibleWorkerConfigValue.toMap();
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

  factory ClusterClusterConfig.fromMap(Map<String, dynamic> map) {
    return ClusterClusterConfig(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : ClusterClusterConfigAutoscalingConfig.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      auxiliaryNodeGroups: map['auxiliaryNodeGroups'] == null
          ? null
          : pulumi.Input.decodeList<ClusterClusterConfigAuxiliaryNodeGroup>(
              map['auxiliaryNodeGroups'],
              (value) => ClusterClusterConfigAuxiliaryNodeGroup.fromMap(
                  (value as Map).cast<String, dynamic>())),
      bucket: map['bucket'] == null ? null : map['bucket'] as String,
      clusterTier:
          map['clusterTier'] == null ? null : map['clusterTier'] as String,
      dataprocMetricConfig: map['dataprocMetricConfig'] == null
          ? null
          : ClusterClusterConfigDataprocMetricConfig.fromMap(
              (map['dataprocMetricConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : ClusterClusterConfigEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: map['endpointConfig'] == null
          ? null
          : ClusterClusterConfigEndpointConfig.fromMap(
              (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: map['gceClusterConfig'] == null
          ? null
          : ClusterClusterConfigGceClusterConfig.fromMap(
              (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: map['initializationActions'] == null
          ? null
          : pulumi.Input.decodeList<ClusterClusterConfigInitializationAction>(
              map['initializationActions'],
              (value) => ClusterClusterConfigInitializationAction.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleConfig: map['lifecycleConfig'] == null
          ? null
          : ClusterClusterConfigLifecycleConfig.fromMap(
              (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: map['masterConfig'] == null
          ? null
          : ClusterClusterConfigMasterConfig.fromMap(
              (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : ClusterClusterConfigMetastoreConfig.fromMap(
              (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      preemptibleWorkerConfig: map['preemptibleWorkerConfig'] == null
          ? null
          : ClusterClusterConfigPreemptibleWorkerConfig.fromMap(
              (map['preemptibleWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : ClusterClusterConfigSecurityConfig.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : ClusterClusterConfigSoftwareConfig.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      stagingBucket:
          map['stagingBucket'] == null ? null : map['stagingBucket'] as String,
      tempBucket:
          map['tempBucket'] == null ? null : map['tempBucket'] as String,
      workerConfig: map['workerConfig'] == null
          ? null
          : ClusterClusterConfigWorkerConfig.fromMap(
              (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
