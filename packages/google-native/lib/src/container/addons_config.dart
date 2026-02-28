// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_run_config.dart';
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
  final CloudRunConfig? cloudRunConfig;
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

  /// Creates a new [AddonsConfig].
  /// [cloudRunConfig] Configuration for the Cloud Run addon, which allows the user to use a managed Knative service.
  /// [configConnectorConfig] Configuration for the ConfigConnector add-on, a Kubernetes extension to manage hosted GCP services through the Kubernetes API
  /// [dnsCacheConfig] Configuration for NodeLocalDNS, a dns cache running on cluster nodes
  /// [gcePersistentDiskCsiDriverConfig] Configuration for the Compute Engine Persistent Disk CSI driver.
  /// [gcpFilestoreCsiDriverConfig] Configuration for the GCP Filestore CSI driver.
  /// [gcsFuseCsiDriverConfig] Configuration for the Cloud Storage Fuse CSI driver.
  /// [gkeBackupAgentConfig] Configuration for the Backup for GKE agent addon.
  /// [horizontalPodAutoscaling] Configuration for the horizontal pod autoscaling feature, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods.
  /// [httpLoadBalancing] Configuration for the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster.
  /// [kubernetesDashboard] Configuration for the Kubernetes Dashboard. This addon is deprecated, and will be disabled in 1.15. It is recommended to use the Cloud Console to manage and monitor your Kubernetes clusters, workloads and applications. For more information, see: https://cloud.google.com/kubernetes-engine/docs/concepts/dashboards
  /// [networkPolicyConfig] Configuration for NetworkPolicy. This only tracks whether the addon is enabled or not on the Master, it does not track whether network policy is enabled for the nodes.
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
    return <String, dynamic>{
      'cloudRunConfig': ?cloudRunConfig == null ? null : cloudRunConfig!.toMap(),
      'configConnectorConfig': ?configConnectorConfig == null ? null : configConnectorConfig!.toMap(),
      'dnsCacheConfig': ?dnsCacheConfig == null ? null : dnsCacheConfig!.toMap(),
      'gcePersistentDiskCsiDriverConfig': ?gcePersistentDiskCsiDriverConfig == null ? null : gcePersistentDiskCsiDriverConfig!.toMap(),
      'gcpFilestoreCsiDriverConfig': ?gcpFilestoreCsiDriverConfig == null ? null : gcpFilestoreCsiDriverConfig!.toMap(),
      'gcsFuseCsiDriverConfig': ?gcsFuseCsiDriverConfig == null ? null : gcsFuseCsiDriverConfig!.toMap(),
      'gkeBackupAgentConfig': ?gkeBackupAgentConfig == null ? null : gkeBackupAgentConfig!.toMap(),
      'horizontalPodAutoscaling': ?horizontalPodAutoscaling == null ? null : horizontalPodAutoscaling!.toMap(),
      'httpLoadBalancing': ?httpLoadBalancing == null ? null : httpLoadBalancing!.toMap(),
      'kubernetesDashboard': ?kubernetesDashboard == null ? null : kubernetesDashboard!.toMap(),
      'networkPolicyConfig': ?networkPolicyConfig == null ? null : networkPolicyConfig!.toMap(),
    };
  }

  factory AddonsConfig.fromMap(Map<String, dynamic> map) {
    return AddonsConfig(
      cloudRunConfig: map['cloudRunConfig'] == null ? null : CloudRunConfig.fromMap((map['cloudRunConfig'] as Map).cast<String, dynamic>()),
      configConnectorConfig: map['configConnectorConfig'] == null ? null : ConfigConnectorConfig.fromMap((map['configConnectorConfig'] as Map).cast<String, dynamic>()),
      dnsCacheConfig: map['dnsCacheConfig'] == null ? null : DnsCacheConfig.fromMap((map['dnsCacheConfig'] as Map).cast<String, dynamic>()),
      gcePersistentDiskCsiDriverConfig: map['gcePersistentDiskCsiDriverConfig'] == null ? null : GcePersistentDiskCsiDriverConfig.fromMap((map['gcePersistentDiskCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gcpFilestoreCsiDriverConfig: map['gcpFilestoreCsiDriverConfig'] == null ? null : GcpFilestoreCsiDriverConfig.fromMap((map['gcpFilestoreCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gcsFuseCsiDriverConfig: map['gcsFuseCsiDriverConfig'] == null ? null : GcsFuseCsiDriverConfig.fromMap((map['gcsFuseCsiDriverConfig'] as Map).cast<String, dynamic>()),
      gkeBackupAgentConfig: map['gkeBackupAgentConfig'] == null ? null : GkeBackupAgentConfig.fromMap((map['gkeBackupAgentConfig'] as Map).cast<String, dynamic>()),
      horizontalPodAutoscaling: map['horizontalPodAutoscaling'] == null ? null : HorizontalPodAutoscaling.fromMap((map['horizontalPodAutoscaling'] as Map).cast<String, dynamic>()),
      httpLoadBalancing: map['httpLoadBalancing'] == null ? null : HttpLoadBalancing.fromMap((map['httpLoadBalancing'] as Map).cast<String, dynamic>()),
      kubernetesDashboard: map['kubernetesDashboard'] == null ? null : KubernetesDashboard.fromMap((map['kubernetesDashboard'] as Map).cast<String, dynamic>()),
      networkPolicyConfig: map['networkPolicyConfig'] == null ? null : NetworkPolicyConfig.fromMap((map['networkPolicyConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

