// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_container_v1beta1.dart';
import 'config_connector_config_container_v1beta1.dart';
import 'dns_cache_config_container_v1beta1.dart';
import 'gce_persistent_disk_csi_driver_config_container_v1beta1.dart';
import 'gcp_filestore_csi_driver_config_container_v1beta1.dart';
import 'gcs_fuse_csi_driver_config_container_v1beta1.dart';
import 'gke_backup_agent_config_container_v1beta1.dart';
import 'horizontal_pod_autoscaling_container_v1beta1.dart';
import 'http_load_balancing_container_v1beta1.dart';
import 'istio_config.dart';
import 'kalm_config.dart';
import 'kubernetes_dashboard_container_v1beta1.dart';
import 'network_policy_config_container_v1beta1.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfigContainerV1beta1 {
  /// Configuration for the Cloud Run addon. The `IstioConfig` addon must be enabled in order to enable Cloud Run addon. This option can only be enabled at cluster creation time.
  final CloudRunConfigContainerV1beta1? cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final ConfigConnectorConfigContainerV1beta1? configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final DnsCacheConfigContainerV1beta1? dnsCacheConfig;

  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final GcePersistentDiskCsiDriverConfigContainerV1beta1?
      gcePersistentDiskCsiDriverConfig;

  /// Configuration for the GCP Filestore CSI driver.
  final GcpFilestoreCsiDriverConfigContainerV1beta1?
      gcpFilestoreCsiDriverConfig;

  /// Configuration for the Cloud Storage Fuse CSI driver.
  final GcsFuseCsiDriverConfigContainerV1beta1? gcsFuseCsiDriverConfig;

  /// Configuration for the Backup for GKE agent addon.
  final GkeBackupAgentConfigContainerV1beta1? gkeBackupAgentConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final HorizontalPodAutoscalingContainerV1beta1? horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final HttpLoadBalancingContainerV1beta1? httpLoadBalancing;

  /// Configuration for Istio, an open platform to connect, manage, and secure microservices.
  final IstioConfig? istioConfig;

  /// Configuration for the KALM addon, which manages the lifecycle of k8s applications.
  final KalmConfig? kalmConfig;

  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final KubernetesDashboardContainerV1beta1? kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final NetworkPolicyConfigContainerV1beta1? networkPolicyConfig;

  AddonsConfigContainerV1beta1({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
    this.istioConfig,
    this.kalmConfig,
    this.kubernetesDashboard,
    this.networkPolicyConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudRunConfigValue = cloudRunConfig;
    if (cloudRunConfigValue != null) {
      map['cloudRunConfig'] = cloudRunConfigValue.toMap();
    }
    final configConnectorConfigValue = configConnectorConfig;
    if (configConnectorConfigValue != null) {
      map['configConnectorConfig'] = configConnectorConfigValue.toMap();
    }
    final dnsCacheConfigValue = dnsCacheConfig;
    if (dnsCacheConfigValue != null) {
      map['dnsCacheConfig'] = dnsCacheConfigValue.toMap();
    }
    final gcePersistentDiskCsiDriverConfigValue =
        gcePersistentDiskCsiDriverConfig;
    if (gcePersistentDiskCsiDriverConfigValue != null) {
      map['gcePersistentDiskCsiDriverConfig'] =
          gcePersistentDiskCsiDriverConfigValue.toMap();
    }
    final gcpFilestoreCsiDriverConfigValue = gcpFilestoreCsiDriverConfig;
    if (gcpFilestoreCsiDriverConfigValue != null) {
      map['gcpFilestoreCsiDriverConfig'] =
          gcpFilestoreCsiDriverConfigValue.toMap();
    }
    final gcsFuseCsiDriverConfigValue = gcsFuseCsiDriverConfig;
    if (gcsFuseCsiDriverConfigValue != null) {
      map['gcsFuseCsiDriverConfig'] = gcsFuseCsiDriverConfigValue.toMap();
    }
    final gkeBackupAgentConfigValue = gkeBackupAgentConfig;
    if (gkeBackupAgentConfigValue != null) {
      map['gkeBackupAgentConfig'] = gkeBackupAgentConfigValue.toMap();
    }
    final horizontalPodAutoscalingValue = horizontalPodAutoscaling;
    if (horizontalPodAutoscalingValue != null) {
      map['horizontalPodAutoscaling'] = horizontalPodAutoscalingValue.toMap();
    }
    final httpLoadBalancingValue = httpLoadBalancing;
    if (httpLoadBalancingValue != null) {
      map['httpLoadBalancing'] = httpLoadBalancingValue.toMap();
    }
    final istioConfigValue = istioConfig;
    if (istioConfigValue != null) {
      map['istioConfig'] = istioConfigValue.toMap();
    }
    final kalmConfigValue = kalmConfig;
    if (kalmConfigValue != null) {
      map['kalmConfig'] = kalmConfigValue.toMap();
    }
    final kubernetesDashboardValue = kubernetesDashboard;
    if (kubernetesDashboardValue != null) {
      map['kubernetesDashboard'] = kubernetesDashboardValue.toMap();
    }
    final networkPolicyConfigValue = networkPolicyConfig;
    if (networkPolicyConfigValue != null) {
      map['networkPolicyConfig'] = networkPolicyConfigValue.toMap();
    }
    return map;
  }

  factory AddonsConfigContainerV1beta1.fromMap(Map<String, dynamic> map) {
    return AddonsConfigContainerV1beta1(
      cloudRunConfig: map['cloudRunConfig'] == null
          ? null
          : CloudRunConfigContainerV1beta1.fromMap(
              (map['cloudRunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig: map['configConnectorConfig'] == null
          ? null
          : ConfigConnectorConfigContainerV1beta1.fromMap(
              (map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: map['dnsCacheConfig'] == null
          ? null
          : DnsCacheConfigContainerV1beta1.fromMap(
              (map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig:
          map['gcePersistentDiskCsiDriverConfig'] == null
              ? null
              : GcePersistentDiskCsiDriverConfigContainerV1beta1.fromMap(
                  (map['gcePersistentDiskCsiDriverConfig'] as Map)
                      .cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null
          ? null
          : GcpFilestoreCsiDriverConfigContainerV1beta1.fromMap(
              (map['gcpFilestoreCsiDriverConfig'] as Map)
                  .cast<String, dynamic>()),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null
          ? null
          : GcsFuseCsiDriverConfigContainerV1beta1.fromMap(
              (map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null
          ? null
          : GkeBackupAgentConfigContainerV1beta1.fromMap(
              (map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null
          ? null
          : HorizontalPodAutoscalingContainerV1beta1.fromMap(
              (map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: map['httpLoadBalancing'] == null
          ? null
          : HttpLoadBalancingContainerV1beta1.fromMap(
              (map['httpLoadBalancing'] as Map).cast<String, dynamic>()),
      istioConfig: map['istioConfig'] == null
          ? null
          : IstioConfig.fromMap(
              (map['istioConfig'] as Map).cast<String, dynamic>()),
      kalmConfig: map['kalmConfig'] == null
          ? null
          : KalmConfig.fromMap(
              (map['kalmConfig'] as Map).cast<String, dynamic>()),
      kubernetesDashboard: map['kubernetesDashboard'] == null
          ? null
          : KubernetesDashboardContainerV1beta1.fromMap(
              (map['kubernetesDashboard'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: map['networkPolicyConfig'] == null
          ? null
          : NetworkPolicyConfigContainerV1beta1.fromMap(
              (map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
