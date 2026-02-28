// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'autoscaling_config_response_dataproc_v1beta2.dart';
import 'encryption_config_response_dataproc_v1beta2.dart';
import 'endpoint_config_response_dataproc_v1beta2.dart';
import 'gce_cluster_config_response_dataproc_v1beta2.dart';
import 'gke_cluster_config_response_dataproc_v1beta2.dart';
import 'instance_group_config_response_dataproc_v1beta2.dart';
import 'lifecycle_config_response_dataproc_v1beta2.dart';
import 'metastore_config_response_dataproc_v1beta2.dart';
import 'node_initialization_action_response_dataproc_v1beta2.dart';
import 'security_config_response_dataproc_v1beta2.dart';
import 'software_config_response_dataproc_v1beta2.dart';

/// The cluster config.
class ClusterConfigResponseDataprocV1beta2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final AutoscalingConfigResponseDataprocV1beta2 autoscalingConfig;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String configBucket;

  /// Optional. Encryption settings for the cluster.
  final EncryptionConfigResponseDataprocV1beta2 encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final EndpointConfigResponseDataprocV1beta2 endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final GceClusterConfigResponseDataprocV1beta2 gceClusterConfig;

  /// Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final GkeClusterConfigResponseDataprocV1beta2 gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final List<NodeInitializationActionResponseDataprocV1beta2>
      initializationActions;

  /// Optional. The config setting for auto delete cluster schedule.
  final LifecycleConfigResponseDataprocV1beta2 lifecycleConfig;

  /// Optional. The Compute Engine config settings for the master instance in a cluster.
  final InstanceGroupConfigResponseDataprocV1beta2 masterConfig;

  /// Optional. Metastore configuration.
  final MetastoreConfigResponseDataprocV1beta2 metastoreConfig;

  /// Optional. The Compute Engine config settings for additional worker instances in a cluster.
  final InstanceGroupConfigResponseDataprocV1beta2 secondaryWorkerConfig;

  /// Optional. Security related configuration.
  final SecurityConfigResponseDataprocV1beta2 securityConfig;

  /// Optional. The config settings for software inside the cluster.
  final SoftwareConfigResponseDataprocV1beta2 softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String tempBucket;

  /// Optional. The Compute Engine config settings for worker instances in a cluster.
  final InstanceGroupConfigResponseDataprocV1beta2 workerConfig;

  /// Creates a new [ClusterConfigResponseDataprocV1beta2].
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
  ClusterConfigResponseDataprocV1beta2({
    required this.autoscalingConfig,
    required this.configBucket,
    required this.encryptionConfig,
    required this.endpointConfig,
    required this.gceClusterConfig,
    required this.gkeClusterConfig,
    required this.initializationActions,
    required this.lifecycleConfig,
    required this.masterConfig,
    required this.metastoreConfig,
    required this.secondaryWorkerConfig,
    required this.securityConfig,
    required this.softwareConfig,
    required this.tempBucket,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoscalingConfig'] = autoscalingConfig.toMap();
    map['configBucket'] = configBucket;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['endpointConfig'] = endpointConfig.toMap();
    map['gceClusterConfig'] = gceClusterConfig.toMap();
    map['gkeClusterConfig'] = gkeClusterConfig.toMap();
    map['initializationActions'] = pulumi.Input.encodeList<
        NodeInitializationActionResponseDataprocV1beta2,
        Map<String, dynamic>>(initializationActions, (value) => value.toMap());
    map['lifecycleConfig'] = lifecycleConfig.toMap();
    map['masterConfig'] = masterConfig.toMap();
    map['metastoreConfig'] = metastoreConfig.toMap();
    map['secondaryWorkerConfig'] = secondaryWorkerConfig.toMap();
    map['securityConfig'] = securityConfig.toMap();
    map['softwareConfig'] = softwareConfig.toMap();
    map['tempBucket'] = tempBucket;
    map['workerConfig'] = workerConfig.toMap();
    return map;
  }

  factory ClusterConfigResponseDataprocV1beta2.fromMap(
      Map<String, dynamic> map) {
    return ClusterConfigResponseDataprocV1beta2(
      autoscalingConfig: AutoscalingConfigResponseDataprocV1beta2.fromMap(
          (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      configBucket: map['configBucket'] as String,
      encryptionConfig: EncryptionConfigResponseDataprocV1beta2.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: EndpointConfigResponseDataprocV1beta2.fromMap(
          (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: GceClusterConfigResponseDataprocV1beta2.fromMap(
          (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: GkeClusterConfigResponseDataprocV1beta2.fromMap(
          (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: pulumi.Input.decodeList<
              NodeInitializationActionResponseDataprocV1beta2>(
          map['initializationActions'],
          (value) => NodeInitializationActionResponseDataprocV1beta2.fromMap(
              (value as Map).cast<String, dynamic>())),
      lifecycleConfig: LifecycleConfigResponseDataprocV1beta2.fromMap(
          (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: MetastoreConfigResponseDataprocV1beta2.fromMap(
          (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: SecurityConfigResponseDataprocV1beta2.fromMap(
          (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: SoftwareConfigResponseDataprocV1beta2.fromMap(
          (map['softwareConfig'] as Map).cast<String, dynamic>()),
      tempBucket: map['tempBucket'] as String,
      workerConfig: InstanceGroupConfigResponseDataprocV1beta2.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
