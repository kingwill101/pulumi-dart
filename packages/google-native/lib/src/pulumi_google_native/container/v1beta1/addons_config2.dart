// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config3.dart';
import 'config_connector_config2.dart';
import 'dns_cache_config2.dart';
import 'gce_persistent_disk_csi_driver_config2.dart';
import 'gcp_filestore_csi_driver_config2.dart';
import 'gcs_fuse_csi_driver_config2.dart';
import 'gke_backup_agent_config2.dart';
import 'horizontal_pod_autoscaling2.dart';
import 'http_load_balancing2.dart';
import 'istio_config.dart';
import 'kalm_config.dart';
import 'kubernetes_dashboard2.dart';
import 'network_policy_config2.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfig2 {
  /// Configuration for the Cloud Run addon. The `IstioConfig` addon must be enabled in order to enable Cloud Run addon. This option can only be enabled at cluster creation time.
  final CloudRunConfig3? cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final ConfigConnectorConfig2? configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final DnsCacheConfig2? dnsCacheConfig;

  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final GcePersistentDiskCsiDriverConfig2? gcePersistentDiskCsiDriverConfig;

  /// Configuration for the GCP Filestore CSI driver.
  final GcpFilestoreCsiDriverConfig2? gcpFilestoreCsiDriverConfig;

  /// Configuration for the Cloud Storage Fuse CSI driver.
  final GcsFuseCsiDriverConfig2? gcsFuseCsiDriverConfig;

  /// Configuration for the Backup for GKE agent addon.
  final GkeBackupAgentConfig2? gkeBackupAgentConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final HorizontalPodAutoscaling2? horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final HttpLoadBalancing2? httpLoadBalancing;

  /// Configuration for Istio, an open platform to connect, manage, and secure microservices.
  final IstioConfig? istioConfig;

  /// Configuration for the KALM addon, which manages the lifecycle of k8s applications.
  final KalmConfig? kalmConfig;

  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final KubernetesDashboard2? kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final NetworkPolicyConfig2? networkPolicyConfig;

  AddonsConfig2({
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

  factory AddonsConfig2.fromMap(Map<String, dynamic> map) {
    return AddonsConfig2(
      cloudRunConfig: map['cloudRunConfig'] == null
          ? null
          : CloudRunConfig3.fromMap(
              (map['cloudRunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig: map['configConnectorConfig'] == null
          ? null
          : ConfigConnectorConfig2.fromMap(
              (map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: map['dnsCacheConfig'] == null
          ? null
          : DnsCacheConfig2.fromMap(
              (map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig:
          map['gcePersistentDiskCsiDriverConfig'] == null
              ? null
              : GcePersistentDiskCsiDriverConfig2.fromMap(
                  (map['gcePersistentDiskCsiDriverConfig'] as Map)
                      .cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null
          ? null
          : GcpFilestoreCsiDriverConfig2.fromMap(
              (map['gcpFilestoreCsiDriverConfig'] as Map)
                  .cast<String, dynamic>()),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null
          ? null
          : GcsFuseCsiDriverConfig2.fromMap(
              (map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null
          ? null
          : GkeBackupAgentConfig2.fromMap(
              (map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null
          ? null
          : HorizontalPodAutoscaling2.fromMap(
              (map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: map['httpLoadBalancing'] == null
          ? null
          : HttpLoadBalancing2.fromMap(
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
          : KubernetesDashboard2.fromMap(
              (map['kubernetesDashboard'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: map['networkPolicyConfig'] == null
          ? null
          : NetworkPolicyConfig2.fromMap(
              (map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
