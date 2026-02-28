// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_dataproc_v1beta2.dart';
import 'encryption_config_dataproc_v1beta2.dart';
import 'endpoint_config_dataproc_v1beta2.dart';
import 'gce_cluster_config_dataproc_v1beta2.dart';
import 'gke_cluster_config_dataproc_v1beta2.dart';
import 'instance_group_config_dataproc_v1beta2.dart';
import 'lifecycle_config_dataproc_v1beta2.dart';
import 'metastore_config_dataproc_v1beta2.dart';
import 'node_initialization_action_dataproc_v1beta2.dart';
import 'security_config_dataproc_v1beta2.dart';
import 'software_config_dataproc_v1beta2.dart';

/// The cluster config.
class ClusterConfigDataprocV1beta2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final AutoscalingConfigDataprocV1beta2? autoscalingConfig;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String? configBucket;

  /// Optional. Encryption settings for the cluster.
  final EncryptionConfigDataprocV1beta2? encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final EndpointConfigDataprocV1beta2? endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final GceClusterConfigDataprocV1beta2? gceClusterConfig;

  /// Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final GkeClusterConfigDataprocV1beta2? gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final List<NodeInitializationActionDataprocV1beta2>? initializationActions;

  /// Optional. The config setting for auto delete cluster schedule.
  final LifecycleConfigDataprocV1beta2? lifecycleConfig;

  /// Optional. The Compute Engine config settings for the master instance in a cluster.
  final InstanceGroupConfigDataprocV1beta2? masterConfig;

  /// Optional. Metastore configuration.
  final MetastoreConfigDataprocV1beta2? metastoreConfig;

  /// Optional. The Compute Engine config settings for additional worker instances in a cluster.
  final InstanceGroupConfigDataprocV1beta2? secondaryWorkerConfig;

  /// Optional. Security related configuration.
  final SecurityConfigDataprocV1beta2? securityConfig;

  /// Optional. The config settings for software inside the cluster.
  final SoftwareConfigDataprocV1beta2? softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String? tempBucket;

  /// Optional. The Compute Engine config settings for worker instances in a cluster.
  final InstanceGroupConfigDataprocV1beta2? workerConfig;

  /// Creates a new [ClusterConfigDataprocV1beta2].
  /// [autoscalingConfig] Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  /// [configBucket] Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  /// [encryptionConfig] Optional. Encryption settings for the cluster.
  /// [endpointConfig] Optional. Port/endpoint configuration for this cluster
  /// [gceClusterConfig] Optional. The shared Compute Engine config settings for all instances in a cluster.
  /// [gkeClusterConfig] Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  /// [initializationActions] Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  /// [lifecycleConfig] Optional. The config setting for auto delete cluster schedule.
  /// [masterConfig] Optional. The Compute Engine config settings for the master instance in a cluster.
  /// [metastoreConfig] Optional. Metastore configuration.
  /// [secondaryWorkerConfig] Optional. The Compute Engine config settings for additional worker instances in a cluster.
  /// [securityConfig] Optional. Security related configuration.
  /// [softwareConfig] Optional. The config settings for software inside the cluster.
  /// [tempBucket] Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  /// [workerConfig] Optional. The Compute Engine config settings for worker instances in a cluster.
  ClusterConfigDataprocV1beta2({
    this.autoscalingConfig,
    this.configBucket,
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
    final configBucketValue = configBucket;
    if (configBucketValue != null) {
      map['configBucket'] = configBucketValue;
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
              NodeInitializationActionDataprocV1beta2, Map<String, dynamic>>(
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

  factory ClusterConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return ClusterConfigDataprocV1beta2(
      autoscalingConfig: map['autoscalingConfig'] == null
          ? null
          : AutoscalingConfigDataprocV1beta2.fromMap(
              (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      configBucket:
          map['configBucket'] == null ? null : map['configBucket'] as String,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfigDataprocV1beta2.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: map['endpointConfig'] == null
          ? null
          : EndpointConfigDataprocV1beta2.fromMap(
              (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: map['gceClusterConfig'] == null
          ? null
          : GceClusterConfigDataprocV1beta2.fromMap(
              (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: map['gkeClusterConfig'] == null
          ? null
          : GkeClusterConfigDataprocV1beta2.fromMap(
              (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: map['initializationActions'] == null
          ? null
          : pulumi.Input.decodeList<NodeInitializationActionDataprocV1beta2>(
              map['initializationActions'],
              (value) => NodeInitializationActionDataprocV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleConfig: map['lifecycleConfig'] == null
          ? null
          : LifecycleConfigDataprocV1beta2.fromMap(
              (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: map['masterConfig'] == null
          ? null
          : InstanceGroupConfigDataprocV1beta2.fromMap(
              (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : MetastoreConfigDataprocV1beta2.fromMap(
              (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: map['secondaryWorkerConfig'] == null
          ? null
          : InstanceGroupConfigDataprocV1beta2.fromMap(
              (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: map['securityConfig'] == null
          ? null
          : SecurityConfigDataprocV1beta2.fromMap(
              (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: map['softwareConfig'] == null
          ? null
          : SoftwareConfigDataprocV1beta2.fromMap(
              (map['softwareConfig'] as Map).cast<String, dynamic>()),
      tempBucket:
          map['tempBucket'] == null ? null : map['tempBucket'] as String,
      workerConfig: map['workerConfig'] == null
          ? null
          : InstanceGroupConfigDataprocV1beta2.fromMap(
              (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
