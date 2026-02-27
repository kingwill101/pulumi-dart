// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'autoscaling_config_response.dart';
import 'auxiliary_node_group_response.dart';
import 'dataproc_metric_config_response.dart';
import 'encryption_config_response8.dart';
import 'endpoint_config_response.dart';
import 'gce_cluster_config_response.dart';
import 'gke_cluster_config_response.dart';
import 'instance_group_config_response.dart';
import 'lifecycle_config_response.dart';
import 'metastore_config_response.dart';
import 'node_initialization_action_response.dart';
import 'security_config_response.dart';
import 'software_config_response3.dart';

/// The cluster config.
class ClusterConfigResponse2 {
  /// Optional. Autoscaling config for the policy associated with the cluster. Cluster does not autoscale if this field is unset.
  final AutoscalingConfigResponse autoscalingConfig;

  /// Optional. The node group settings.
  final List<AuxiliaryNodeGroupResponse> auxiliaryNodeGroups;

  /// Optional. A Cloud Storage bucket used to stage job dependencies, config files, and job driver console output. If you do not specify a staging bucket, Cloud Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's staging bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String configBucket;

  /// Optional. The config for Dataproc metrics.
  final DataprocMetricConfigResponse dataprocMetricConfig;

  /// Optional. Encryption settings for the cluster.
  final EncryptionConfigResponse8 encryptionConfig;

  /// Optional. Port/endpoint configuration for this cluster
  final EndpointConfigResponse endpointConfig;

  /// Optional. The shared Compute Engine config settings for all instances in a cluster.
  final GceClusterConfigResponse gceClusterConfig;

  /// Optional. BETA. The Kubernetes Engine config for Dataproc clusters deployed to The Kubernetes Engine config for Dataproc clusters deployed to Kubernetes. These config settings are mutually exclusive with Compute Engine-based options, such as gce_cluster_config, master_config, worker_config, secondary_worker_config, and autoscaling_config.
  final GkeClusterConfigResponse gkeClusterConfig;

  /// Optional. Commands to execute on each node after config is completed. By default, executables are run on master and all worker nodes. You can test a node's role metadata to run an executable on a master or worker node, as shown below using curl (you can also use wget): ROLE=$(curl -H Metadata-Flavor:Google http://metadata/computeMetadata/v1/instance/attributes/dataproc-role) if [[ "${ROLE}" == 'Master' ]]; then ... master specific actions ... else ... worker specific actions ... fi
  final List<NodeInitializationActionResponse> initializationActions;

  /// Optional. Lifecycle setting for the cluster.
  final LifecycleConfigResponse lifecycleConfig;

  /// Optional. The Compute Engine config settings for the cluster's master instance.
  final InstanceGroupConfigResponse masterConfig;

  /// Optional. Metastore configuration.
  final MetastoreConfigResponse metastoreConfig;

  /// Optional. The Compute Engine config settings for a cluster's secondary worker instances
  final InstanceGroupConfigResponse secondaryWorkerConfig;

  /// Optional. Security settings for the cluster.
  final SecurityConfigResponse securityConfig;

  /// Optional. The config settings for cluster software.
  final SoftwareConfigResponse3 softwareConfig;

  /// Optional. A Cloud Storage bucket used to store ephemeral cluster and jobs data, such as Spark and MapReduce history files. If you do not specify a temp bucket, Dataproc will determine a Cloud Storage location (US, ASIA, or EU) for your cluster's temp bucket according to the Compute Engine zone where your cluster is deployed, and then create and manage this project-level, per-location bucket. The default bucket has a TTL of 90 days, but you can use any TTL (or none) if you specify a bucket (see Dataproc staging and temp buckets (https://cloud.google.com/dataproc/docs/concepts/configuring-clusters/staging-bucket)). This field requires a Cloud Storage bucket name, not a gs://... URI to a Cloud Storage bucket.
  final String tempBucket;

  /// Optional. The Compute Engine config settings for the cluster's worker instances.
  final InstanceGroupConfigResponse workerConfig;

  ClusterConfigResponse2({
    required this.autoscalingConfig,
    required this.auxiliaryNodeGroups,
    required this.configBucket,
    required this.dataprocMetricConfig,
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
    map['auxiliaryNodeGroups'] =
        Input.encodeList<AuxiliaryNodeGroupResponse, Map<String, dynamic>>(
            auxiliaryNodeGroups, (value) => value.toMap());
    map['configBucket'] = configBucket;
    map['dataprocMetricConfig'] = dataprocMetricConfig.toMap();
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['endpointConfig'] = endpointConfig.toMap();
    map['gceClusterConfig'] = gceClusterConfig.toMap();
    map['gkeClusterConfig'] = gkeClusterConfig.toMap();
    map['initializationActions'] = Input.encodeList<
        NodeInitializationActionResponse,
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

  factory ClusterConfigResponse2.fromMap(Map<String, dynamic> map) {
    return ClusterConfigResponse2(
      autoscalingConfig: AutoscalingConfigResponse.fromMap(
          (map['autoscalingConfig'] as Map).cast<String, dynamic>()),
      auxiliaryNodeGroups: Input.decodeList<AuxiliaryNodeGroupResponse>(
          map['auxiliaryNodeGroups'],
          (value) => AuxiliaryNodeGroupResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      configBucket: map['configBucket'] as String,
      dataprocMetricConfig: DataprocMetricConfigResponse.fromMap(
          (map['dataprocMetricConfig'] as Map).cast<String, dynamic>()),
      encryptionConfig: EncryptionConfigResponse8.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      endpointConfig: EndpointConfigResponse.fromMap(
          (map['endpointConfig'] as Map).cast<String, dynamic>()),
      gceClusterConfig: GceClusterConfigResponse.fromMap(
          (map['gceClusterConfig'] as Map).cast<String, dynamic>()),
      gkeClusterConfig: GkeClusterConfigResponse.fromMap(
          (map['gkeClusterConfig'] as Map).cast<String, dynamic>()),
      initializationActions: Input.decodeList<NodeInitializationActionResponse>(
          map['initializationActions'],
          (value) => NodeInitializationActionResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      lifecycleConfig: LifecycleConfigResponse.fromMap(
          (map['lifecycleConfig'] as Map).cast<String, dynamic>()),
      masterConfig: InstanceGroupConfigResponse.fromMap(
          (map['masterConfig'] as Map).cast<String, dynamic>()),
      metastoreConfig: MetastoreConfigResponse.fromMap(
          (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      secondaryWorkerConfig: InstanceGroupConfigResponse.fromMap(
          (map['secondaryWorkerConfig'] as Map).cast<String, dynamic>()),
      securityConfig: SecurityConfigResponse.fromMap(
          (map['securityConfig'] as Map).cast<String, dynamic>()),
      softwareConfig: SoftwareConfigResponse3.fromMap(
          (map['softwareConfig'] as Map).cast<String, dynamic>()),
      tempBucket: map['tempBucket'] as String,
      workerConfig: InstanceGroupConfigResponse.fromMap(
          (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
