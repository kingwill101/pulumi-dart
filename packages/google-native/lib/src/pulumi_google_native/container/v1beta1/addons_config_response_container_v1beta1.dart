// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_response_container_v1beta1.dart';
import 'config_connector_config_response_container_v1beta1.dart';
import 'dns_cache_config_response_container_v1beta1.dart';
import 'gce_persistent_disk_csi_driver_config_response_container_v1beta1.dart';
import 'gcp_filestore_csi_driver_config_response_container_v1beta1.dart';
import 'gcs_fuse_csi_driver_config_response_container_v1beta1.dart';
import 'gke_backup_agent_config_response_container_v1beta1.dart';
import 'horizontal_pod_autoscaling_response_container_v1beta1.dart';
import 'http_load_balancing_response_container_v1beta1.dart';
import 'istio_config_response.dart';
import 'kalm_config_response.dart';
import 'kubernetes_dashboard_response_container_v1beta1.dart';
import 'network_policy_config_response_container_v1beta1.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfigResponseContainerV1beta1 {
  /// Configuration for the Cloud Run addon. The `IstioConfig` addon must be enabled in order to enable Cloud Run addon. This option can only be enabled at cluster creation time.
  final CloudRunConfigResponseContainerV1beta1 cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final ConfigConnectorConfigResponseContainerV1beta1 configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final DnsCacheConfigResponseContainerV1beta1 dnsCacheConfig;

  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final GcePersistentDiskCsiDriverConfigResponseContainerV1beta1
      gcePersistentDiskCsiDriverConfig;

  /// Configuration for the GCP Filestore CSI driver.
  final GcpFilestoreCsiDriverConfigResponseContainerV1beta1
      gcpFilestoreCsiDriverConfig;

  /// Configuration for the Cloud Storage Fuse CSI driver.
  final GcsFuseCsiDriverConfigResponseContainerV1beta1 gcsFuseCsiDriverConfig;

  /// Configuration for the Backup for GKE agent addon.
  final GkeBackupAgentConfigResponseContainerV1beta1 gkeBackupAgentConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final HorizontalPodAutoscalingResponseContainerV1beta1
      horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final HttpLoadBalancingResponseContainerV1beta1 httpLoadBalancing;

  /// Configuration for Istio, an open platform to connect, manage, and secure microservices.
  final IstioConfigResponse istioConfig;

  /// Configuration for the KALM addon, which manages the lifecycle of k8s applications.
  final KalmConfigResponse kalmConfig;

  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final KubernetesDashboardResponseContainerV1beta1 kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final NetworkPolicyConfigResponseContainerV1beta1 networkPolicyConfig;

  AddonsConfigResponseContainerV1beta1({
    required this.cloudRunConfig,
    required this.configConnectorConfig,
    required this.dnsCacheConfig,
    required this.gcePersistentDiskCsiDriverConfig,
    required this.gcpFilestoreCsiDriverConfig,
    required this.gcsFuseCsiDriverConfig,
    required this.gkeBackupAgentConfig,
    required this.horizontalPodAutoscaling,
    required this.httpLoadBalancing,
    required this.istioConfig,
    required this.kalmConfig,
    required this.kubernetesDashboard,
    required this.networkPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudRunConfig'] = cloudRunConfig.toMap();
    map['configConnectorConfig'] = configConnectorConfig.toMap();
    map['dnsCacheConfig'] = dnsCacheConfig.toMap();
    map['gcePersistentDiskCsiDriverConfig'] =
        gcePersistentDiskCsiDriverConfig.toMap();
    map['gcpFilestoreCsiDriverConfig'] = gcpFilestoreCsiDriverConfig.toMap();
    map['gcsFuseCsiDriverConfig'] = gcsFuseCsiDriverConfig.toMap();
    map['gkeBackupAgentConfig'] = gkeBackupAgentConfig.toMap();
    map['horizontalPodAutoscaling'] = horizontalPodAutoscaling.toMap();
    map['httpLoadBalancing'] = httpLoadBalancing.toMap();
    map['istioConfig'] = istioConfig.toMap();
    map['kalmConfig'] = kalmConfig.toMap();
    map['kubernetesDashboard'] = kubernetesDashboard.toMap();
    map['networkPolicyConfig'] = networkPolicyConfig.toMap();
    return map;
  }

  factory AddonsConfigResponseContainerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return AddonsConfigResponseContainerV1beta1(
      cloudRunConfig: CloudRunConfigResponseContainerV1beta1.fromMap(
          (map['cloudRunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig:
          ConfigConnectorConfigResponseContainerV1beta1.fromMap(
              (map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: DnsCacheConfigResponseContainerV1beta1.fromMap(
          (map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig:
          GcePersistentDiskCsiDriverConfigResponseContainerV1beta1.fromMap(
              (map['gcePersistentDiskCsiDriverConfig'] as Map)
                  .cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig:
          GcpFilestoreCsiDriverConfigResponseContainerV1beta1.fromMap(
              (map['gcpFilestoreCsiDriverConfig'] as Map)
                  .cast<String, dynamic>()),
      gcsFuseCsiDriverConfig:
          GcsFuseCsiDriverConfigResponseContainerV1beta1.fromMap(
              (map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig:
          GkeBackupAgentConfigResponseContainerV1beta1.fromMap(
              (map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling:
          HorizontalPodAutoscalingResponseContainerV1beta1.fromMap(
              (map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: HttpLoadBalancingResponseContainerV1beta1.fromMap(
          (map['httpLoadBalancing'] as Map).cast<String, dynamic>()),
      istioConfig: IstioConfigResponse.fromMap(
          (map['istioConfig'] as Map).cast<String, dynamic>()),
      kalmConfig: KalmConfigResponse.fromMap(
          (map['kalmConfig'] as Map).cast<String, dynamic>()),
      kubernetesDashboard: KubernetesDashboardResponseContainerV1beta1.fromMap(
          (map['kubernetesDashboard'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: NetworkPolicyConfigResponseContainerV1beta1.fromMap(
          (map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
