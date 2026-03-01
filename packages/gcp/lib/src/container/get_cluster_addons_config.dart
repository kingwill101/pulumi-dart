// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_addons_config_cloudrun_config.dart';
import 'get_cluster_addons_config_config_connector_config.dart';
import 'get_cluster_addons_config_dns_cache_config.dart';
import 'get_cluster_addons_config_gce_persistent_disk_csi_driver_config.dart';
import 'get_cluster_addons_config_gcp_filestore_csi_driver_config.dart';
import 'get_cluster_addons_config_gcs_fuse_csi_driver_config.dart';
import 'get_cluster_addons_config_gke_backup_agent_config.dart';
import 'get_cluster_addons_config_horizontal_pod_autoscaling.dart';
import 'get_cluster_addons_config_http_load_balancing.dart';
import 'get_cluster_addons_config_istio_config.dart';
import 'get_cluster_addons_config_kalm_config.dart';
import 'get_cluster_addons_config_lustre_csi_driver_config.dart';
import 'get_cluster_addons_config_network_policy_config.dart';
import 'get_cluster_addons_config_parallelstore_csi_driver_config.dart';
import 'get_cluster_addons_config_pod_snapshot_config.dart';
import 'get_cluster_addons_config_ray_operator_config.dart';
import 'get_cluster_addons_config_stateful_ha_config.dart';

class GetClusterAddonsConfig {
  /// The status of the CloudRun addon. It is disabled by default. Set disabled = false to enable.
  final List<GetClusterAddonsConfigCloudrunConfig> cloudrunConfigs;

  /// The of the Config Connector addon.
  final List<GetClusterAddonsConfigConfigConnectorConfig>
  configConnectorConfigs;

  /// The status of the NodeLocal DNSCache addon. It is disabled by default. Set enabled = true to enable.
  final List<GetClusterAddonsConfigDnsCacheConfig> dnsCacheConfigs;

  /// Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Set enabled = true to enable. The Compute Engine persistent disk CSI Driver is enabled by default on newly created clusters for the following versions: Linux clusters: GKE version 1.18.10-gke.2100 or later, or 1.19.3-gke.2100 or later.
  final List<GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig>
  gcePersistentDiskCsiDriverConfigs;

  /// The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes. Defaults to disabled for Standard clusters; set enabled = true to enable. It is enabled by default for Autopilot clusters; set enabled = true to enable it explicitly.
  final List<GetClusterAddonsConfigGcpFilestoreCsiDriverConfig>
  gcpFilestoreCsiDriverConfigs;

  /// The status of the GCS Fuse CSI driver addon, which allows the usage of gcs bucket as volumes. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigGcsFuseCsiDriverConfig>
  gcsFuseCsiDriverConfigs;

  /// The status of the Backup for GKE Agent addon. It is disabled by default. Set enabled = true to enable.
  final List<GetClusterAddonsConfigGkeBackupAgentConfig> gkeBackupAgentConfigs;

  /// The status of the Horizontal Pod Autoscaling addon, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service. It is enabled by default; set disabled = true to disable.
  final List<GetClusterAddonsConfigHorizontalPodAutoscaling>
  horizontalPodAutoscalings;

  /// The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default; set disabled = true to disable.
  final List<GetClusterAddonsConfigHttpLoadBalancing> httpLoadBalancings;

  /// The status of the Istio addon.
  final List<GetClusterAddonsConfigIstioConfig> istioConfigs;

  /// Configuration for the KALM addon, which manages the lifecycle of k8s. It is disabled by default; Set enabled = true to enable.
  final List<GetClusterAddonsConfigKalmConfig> kalmConfigs;

  /// Configuration for the Lustre CSI driver. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigLustreCsiDriverConfig>
  lustreCsiDriverConfigs;

  /// Whether we should enable the network policy addon for the master. This must be enabled in order to enable network policy for the nodes. To enable this, you must also define a network_policy block, otherwise nothing will happen. It can only be disabled if the nodes already do not have network policies enabled. Defaults to disabled; set disabled = false to enable.
  final List<GetClusterAddonsConfigNetworkPolicyConfig> networkPolicyConfigs;

  /// The status of the Parallelstore CSI driver addon, which allows the usage of Parallelstore instances as volumes. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigParallelstoreCsiDriverConfig>
  parallelstoreCsiDriverConfigs;

  /// Configuration for the Pod Snapshot feature.
  final List<GetClusterAddonsConfigPodSnapshotConfig> podSnapshotConfigs;

  /// The status of the Ray Operator addon, which enabled management of Ray AI/ML jobs on GKE. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigRayOperatorConfig> rayOperatorConfigs;

  /// The status of the Stateful HA addon, which provides automatic configurable failover for stateful applications. Defaults to disabled; set enabled = true to enable.
  final List<GetClusterAddonsConfigStatefulHaConfig> statefulHaConfigs;

  /// Creates a new [GetClusterAddonsConfig].
  /// [cloudrunConfigs] The status of the CloudRun addon. It is disabled by default. Set disabled = false to enable.
  /// [configConnectorConfigs] The of the Config Connector addon.
  /// [dnsCacheConfigs] The status of the NodeLocal DNSCache addon. It is disabled by default. Set enabled = true to enable.
  /// [gcePersistentDiskCsiDriverConfigs] Whether this cluster should enable the Google Compute Engine Persistent Disk Container Storage Interface (CSI) Driver. Set enabled = true to enable. The Compute Engine persistent disk CSI Driver is enabled by default on newly created clusters for the following versions: Linux clusters: GKE version 1.18.10-gke.2100 or later, or 1.19.3-gke.2100 or later.
  /// [gcpFilestoreCsiDriverConfigs] The status of the Filestore CSI driver addon, which allows the usage of filestore instance as volumes. Defaults to disabled for Standard clusters; set enabled = true to enable. It is enabled by default for Autopilot clusters; set enabled = true to enable it explicitly.
  /// [gcsFuseCsiDriverConfigs] The status of the GCS Fuse CSI driver addon, which allows the usage of gcs bucket as volumes. Defaults to disabled; set enabled = true to enable.
  /// [gkeBackupAgentConfigs] The status of the Backup for GKE Agent addon. It is disabled by default. Set enabled = true to enable.
  /// [horizontalPodAutoscalings] The status of the Horizontal Pod Autoscaling addon, which increases or decreases the number of replica pods a replication controller has based on the resource usage of the existing pods. It ensures that a Heapster pod is running in the cluster, which is also used by the Cloud Monitoring service. It is enabled by default; set disabled = true to disable.
  /// [httpLoadBalancings] The status of the HTTP (L7) load balancing controller addon, which makes it easy to set up HTTP load balancers for services in a cluster. It is enabled by default; set disabled = true to disable.
  /// [istioConfigs] The status of the Istio addon.
  /// [kalmConfigs] Configuration for the KALM addon, which manages the lifecycle of k8s. It is disabled by default; Set enabled = true to enable.
  /// [lustreCsiDriverConfigs] Configuration for the Lustre CSI driver. Defaults to disabled; set enabled = true to enable.
  /// [networkPolicyConfigs] Whether we should enable the network policy addon for the master. This must be enabled in order to enable network policy for the nodes. To enable this, you must also define a network_policy block, otherwise nothing will happen. It can only be disabled if the nodes already do not have network policies enabled. Defaults to disabled; set disabled = false to enable.
  /// [parallelstoreCsiDriverConfigs] The status of the Parallelstore CSI driver addon, which allows the usage of Parallelstore instances as volumes. Defaults to disabled; set enabled = true to enable.
  /// [podSnapshotConfigs] Configuration for the Pod Snapshot feature.
  /// [rayOperatorConfigs] The status of the Ray Operator addon, which enabled management of Ray AI/ML jobs on GKE. Defaults to disabled; set enabled = true to enable.
  /// [statefulHaConfigs] The status of the Stateful HA addon, which provides automatic configurable failover for stateful applications. Defaults to disabled; set enabled = true to enable.
  GetClusterAddonsConfig({
    required this.cloudrunConfigs,
    required this.configConnectorConfigs,
    required this.dnsCacheConfigs,
    required this.gcePersistentDiskCsiDriverConfigs,
    required this.gcpFilestoreCsiDriverConfigs,
    required this.gcsFuseCsiDriverConfigs,
    required this.gkeBackupAgentConfigs,
    required this.horizontalPodAutoscalings,
    required this.httpLoadBalancings,
    required this.istioConfigs,
    required this.kalmConfigs,
    required this.lustreCsiDriverConfigs,
    required this.networkPolicyConfigs,
    required this.parallelstoreCsiDriverConfigs,
    required this.podSnapshotConfigs,
    required this.rayOperatorConfigs,
    required this.statefulHaConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudrunConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigCloudrunConfig,
            Map<String, dynamic>
          >(cloudrunConfigs, (value) => value.toMap()),
      'configConnectorConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigConfigConnectorConfig,
            Map<String, dynamic>
          >(configConnectorConfigs, (value) => value.toMap()),
      'dnsCacheConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigDnsCacheConfig,
            Map<String, dynamic>
          >(dnsCacheConfigs, (value) => value.toMap()),
      'gcePersistentDiskCsiDriverConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig,
            Map<String, dynamic>
          >(gcePersistentDiskCsiDriverConfigs, (value) => value.toMap()),
      'gcpFilestoreCsiDriverConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigGcpFilestoreCsiDriverConfig,
            Map<String, dynamic>
          >(gcpFilestoreCsiDriverConfigs, (value) => value.toMap()),
      'gcsFuseCsiDriverConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigGcsFuseCsiDriverConfig,
            Map<String, dynamic>
          >(gcsFuseCsiDriverConfigs, (value) => value.toMap()),
      'gkeBackupAgentConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigGkeBackupAgentConfig,
            Map<String, dynamic>
          >(gkeBackupAgentConfigs, (value) => value.toMap()),
      'horizontalPodAutoscalings':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigHorizontalPodAutoscaling,
            Map<String, dynamic>
          >(horizontalPodAutoscalings, (value) => value.toMap()),
      'httpLoadBalancings':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigHttpLoadBalancing,
            Map<String, dynamic>
          >(httpLoadBalancings, (value) => value.toMap()),
      'istioConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigIstioConfig,
            Map<String, dynamic>
          >(istioConfigs, (value) => value.toMap()),
      'kalmConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigKalmConfig,
            Map<String, dynamic>
          >(kalmConfigs, (value) => value.toMap()),
      'lustreCsiDriverConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigLustreCsiDriverConfig,
            Map<String, dynamic>
          >(lustreCsiDriverConfigs, (value) => value.toMap()),
      'networkPolicyConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigNetworkPolicyConfig,
            Map<String, dynamic>
          >(networkPolicyConfigs, (value) => value.toMap()),
      'parallelstoreCsiDriverConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigParallelstoreCsiDriverConfig,
            Map<String, dynamic>
          >(parallelstoreCsiDriverConfigs, (value) => value.toMap()),
      'podSnapshotConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigPodSnapshotConfig,
            Map<String, dynamic>
          >(podSnapshotConfigs, (value) => value.toMap()),
      'rayOperatorConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigRayOperatorConfig,
            Map<String, dynamic>
          >(rayOperatorConfigs, (value) => value.toMap()),
      'statefulHaConfigs':
          pulumi.Input.encodeList<
            GetClusterAddonsConfigStatefulHaConfig,
            Map<String, dynamic>
          >(statefulHaConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterAddonsConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterAddonsConfig(
      cloudrunConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigCloudrunConfig>(
            map['cloudrunConfigs'],
            (value) => GetClusterAddonsConfigCloudrunConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      configConnectorConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigConfigConnectorConfig>(
            map['configConnectorConfigs'],
            (value) => GetClusterAddonsConfigConfigConnectorConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      dnsCacheConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigDnsCacheConfig>(
            map['dnsCacheConfigs'],
            (value) => GetClusterAddonsConfigDnsCacheConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      gcePersistentDiskCsiDriverConfigs:
          pulumi.Input.decodeList<
            GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig
          >(
            map['gcePersistentDiskCsiDriverConfigs'],
            (value) =>
                GetClusterAddonsConfigGcePersistentDiskCsiDriverConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      gcpFilestoreCsiDriverConfigs:
          pulumi.Input.decodeList<
            GetClusterAddonsConfigGcpFilestoreCsiDriverConfig
          >(
            map['gcpFilestoreCsiDriverConfigs'],
            (value) =>
                GetClusterAddonsConfigGcpFilestoreCsiDriverConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      gcsFuseCsiDriverConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigGcsFuseCsiDriverConfig>(
            map['gcsFuseCsiDriverConfigs'],
            (value) => GetClusterAddonsConfigGcsFuseCsiDriverConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      gkeBackupAgentConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigGkeBackupAgentConfig>(
            map['gkeBackupAgentConfigs'],
            (value) => GetClusterAddonsConfigGkeBackupAgentConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      horizontalPodAutoscalings:
          pulumi
              .Input.decodeList<GetClusterAddonsConfigHorizontalPodAutoscaling>(
            map['horizontalPodAutoscalings'],
            (value) => GetClusterAddonsConfigHorizontalPodAutoscaling.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      httpLoadBalancings:
          pulumi.Input.decodeList<GetClusterAddonsConfigHttpLoadBalancing>(
            map['httpLoadBalancings'],
            (value) => GetClusterAddonsConfigHttpLoadBalancing.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      istioConfigs: pulumi.Input.decodeList<GetClusterAddonsConfigIstioConfig>(
        map['istioConfigs'],
        (value) => GetClusterAddonsConfigIstioConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      kalmConfigs: pulumi.Input.decodeList<GetClusterAddonsConfigKalmConfig>(
        map['kalmConfigs'],
        (value) => GetClusterAddonsConfigKalmConfig.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      lustreCsiDriverConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigLustreCsiDriverConfig>(
            map['lustreCsiDriverConfigs'],
            (value) => GetClusterAddonsConfigLustreCsiDriverConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      networkPolicyConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigNetworkPolicyConfig>(
            map['networkPolicyConfigs'],
            (value) => GetClusterAddonsConfigNetworkPolicyConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      parallelstoreCsiDriverConfigs:
          pulumi.Input.decodeList<
            GetClusterAddonsConfigParallelstoreCsiDriverConfig
          >(
            map['parallelstoreCsiDriverConfigs'],
            (value) =>
                GetClusterAddonsConfigParallelstoreCsiDriverConfig.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      podSnapshotConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigPodSnapshotConfig>(
            map['podSnapshotConfigs'],
            (value) => GetClusterAddonsConfigPodSnapshotConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      rayOperatorConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigRayOperatorConfig>(
            map['rayOperatorConfigs'],
            (value) => GetClusterAddonsConfigRayOperatorConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      statefulHaConfigs:
          pulumi.Input.decodeList<GetClusterAddonsConfigStatefulHaConfig>(
            map['statefulHaConfigs'],
            (value) => GetClusterAddonsConfigStatefulHaConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
