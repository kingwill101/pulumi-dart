// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'autoscaling_config_response2.dart';
import 'encryption_config_response9.dart';
import 'endpoint_config_response2.dart';
import 'gce_cluster_config_response2.dart';
import 'gke_cluster_config_response2.dart';
import 'instance_group_config_response2.dart';
import 'lifecycle_config_response2.dart';
import 'metastore_config_response2.dart';
import 'node_initialization_action_response2.dart';
import 'security_config_response2.dart';
import 'software_config_response4.dart';

/// The cluster config.
class ClusterConfigResponse3 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final AutoscalingConfigResponse2 autoscalingConfig;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging bucket (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String configBucket;

  /// Optional. Encryption settings for the cluster.
  final EncryptionConfigResponse9 encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final EndpointConfigResponse2 endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final GceClusterConfigResponse2 gceClusterConfig;

  /// Optional. The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. Setting this is considered mutually exclusive with Compute Engine-based options such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final GkeClusterConfigResponse2 gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1beta2/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final List<NodeInitializationActionResponse2> initializationActions;

  /// Optional. The config setting for auto delete cluster schedule.
  final LifecycleConfigResponse2 lifecycleConfig;

  /// Optional. The Compute Engine config settings for the master instance in a cluster.
  final InstanceGroupConfigResponse2 masterConfig;

  /// Optional. Metastore configuration.
  final MetastoreConfigResponse2 metastoreConfig;

  /// Optional. The Compute Engine config settings for additional worker instances in a cluster.
  final InstanceGroupConfigResponse2 secondaryWorkerConfig;

  /// Optional. Security related configuration.
  final SecurityConfigResponse2 securityConfig;

  /// Optional. The config settings for software inside the cluster.
  final SoftwareConfigResponse4 softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket. This field requires a Cloud Storage bucket name, not a URI to a Cloud Storage bucket.
  final String tempBucket;

  /// Optional. The Compute Engine config settings for worker instances in a cluster.
  final InstanceGroupConfigResponse2 workerConfig;

  ClusterConfigResponse3({
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
    map['initializationActions'] = Input.encodeList<
        NodeInitializationActionResponse2,
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

  factory ClusterConfigResponse3.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse3(
      autoscalingConfig: AutoscalingConfigResponse2.fromMap(
          (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      configBucket: map['configBucket'] as String,
      encryptionConfig: EncryptionConfigResponse9.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: EndpointConfigResponse2.fromMap(
          (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: GceClusterConfigResponse2.fromMap(
          (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: GkeClusterConfigResponse2.fromMap(
          (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions:
          Input.decodeList<NodeInitializationActionResponse2>(
              map['initializationActions'],
              (value) => NodeInitializationActionResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lifecycleConfig: LifecycleConfigResponse2.fromMap(
          (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: InstanceGroupConfigResponse2.fromMap(
          (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: MetastoreConfigResponse2.fromMap(
          (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: InstanceGroupConfigResponse2.fromMap(
          (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: SecurityConfigResponse2.fromMap(
          (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: SoftwareConfigResponse4.fromMap(
          (map['softwareConfig'] as Map).cast<String, dynamic>()),
      tempBucket: map['tempBucket'] as String,
      workerConfig: InstanceGroupConfigResponse2.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
