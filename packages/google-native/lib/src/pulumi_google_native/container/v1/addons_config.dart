// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config_container_v1.dart';
import 'config_connector_config.dart';
import 'dns_cache_config.dart';
import 'gce_persistent_disk_csi_driver_config.dart';
import 'gcp_filestore_csi_driver_config.dart';
import 'gcs_fuse_csi_driver_config.dart';
import 'gke_backup_agent_config.dart';
import 'horizontal_pod_autoscaling.dart';
import 'http_load_balancing.dart';
import 'kubernetes_dashboard.dart';
import 'network_policy_config.dart';

/// Configuration for the addons that can be automatically spun up in the cluster, enabling additional functionality.
class AddonsConfig {
  /// Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
  final CloudRunConfigContainerV1? cloudRunConfig;

  /// Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  final ConfigConnectorConfig? configConnectorConfig;

  /// Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  final DnsCacheConfig? dnsCacheConfig;

  /// Configuration for the Compute Engine Persistent Disk CSI driver.
  final GcePersistentDiskCsiDriverConfig? gcePersistentDiskCsiDriverConfig;

  /// Configuration for the GCP Filestore CSI driver.
  final GcpFilestoreCsiDriverConfig? gcpFilestoreCsiDriverConfig;

  /// Configuration for the Cloud Storage Fuse CSI driver.
  final GcsFuseCsiDriverConfig? gcsFuseCsiDriverConfig;

  /// Configuration for the Backup for GKE agent addon.
  final GkeBackupAgentConfig? gkeBackupAgentConfig;

  /// Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  final HorizontalPodAutoscaling? horizontalPodAutoscaling;

  /// Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  final HttpLoadBalancing? httpLoadBalancing;

  /// Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  final KubernetesDashboard? kubernetesDashboard;

  /// Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
  final NetworkPolicyConfig? networkPolicyConfig;

  AddonsConfig({
    this.cloudRunConfig,
    this.configConnectorConfig,
    this.dnsCacheConfig,
    this.gcePersistentDiskCsiDriverConfig,
    this.gcpFilestoreCsiDriverConfig,
    this.gcsFuseCsiDriverConfig,
    this.gkeBackupAgentConfig,
    this.horizontalPodAutoscaling,
    this.httpLoadBalancing,
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

  factory AddonsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfig(
      cloudRunConfig: map['cloudRunConfig'] == null
          ? null
          : CloudRunConfigContainerV1.fromMap(
              (map['cloudRunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig: map['configConnectorConfig'] == null
          ? null
          : ConfigConnectorConfig.fromMap(
              (map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: map['dnsCacheConfig'] == null
          ? null
          : DnsCacheConfig.fromMap(
              (map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig:
          map['gcePersistentDiskCsiDriverConfig'] == null
              ? null
              : GcePersistentDiskCsiDriverConfig.fromMap(
                  (map['gcePersistentDiskCsiDriverConfig'] as Map)
                      .cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null
          ? null
          : GcpFilestoreCsiDriverConfig.fromMap(
              (map['gcpFilestoreCsiDriverConfig'] as Map)
                  .cast<String, dynamic>()),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null
          ? null
          : GcsFuseCsiDriverConfig.fromMap(
              (map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null
          ? null
          : GkeBackupAgentConfig.fromMap(
              (map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null
          ? null
          : HorizontalPodAutoscaling.fromMap(
              (map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: map['httpLoadBalancing'] == null
          ? null
          : HttpLoadBalancing.fromMap(
              (map['httpLoadBalancing'] as Map).cast<String, dynamic>()),
      kubernetesDashboard: map['kubernetesDashboard'] == null
          ? null
          : KubernetesDashboard.fromMap(
              (map['kubernetesDashboard'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: map['networkPolicyConfig'] == null
          ? null
          : NetworkPolicyConfig.fromMap(
              (map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
