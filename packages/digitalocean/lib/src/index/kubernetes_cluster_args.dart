// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'kubernetes_cluster_control_plane_firewall.dart';
import 'kubernetes_cluster_maintenance_policy.dart';
import 'kubernetes_cluster_node_pool.dart';
import 'kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'kubernetes_cluster_routing_agent.dart';

/// {@template pulumi_index_kubernetes_cluster_kubernetes_cluster_args_doc}
/// The set of arguments for KubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_index_kubernetes_cluster_kubernetes_cluster_args_doc}
class KubernetesClusterArgs {
  /// Block containing options for the AMD GPU device metrics exporter component.
  final pulumi.Input<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  /// Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes.
  final pulumi.Input<KubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  /// A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  final pulumi.Input<bool>? autoUpgrade;
  /// Block containing options for cluster auto-scaling.
  final pulumi.Input<List<KubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  /// The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? clusterSubnet;
  /// A block representing the cluster's control plane firewall
  final pulumi.Input<KubernetesClusterControlPlaneFirewall>? controlPlaneFirewall;
  /// **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  final pulumi.Input<bool>? destroyAllAssociatedResources;
  /// Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: false
  final pulumi.Input<bool>? ha;
  /// The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect.
  final pulumi.Input<KubernetesClusterMaintenancePolicy>? maintenancePolicy;
  /// A name for the Kubernetes cluster.
  final pulumi.Input<String>? name;
  /// A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  final pulumi.Input<KubernetesClusterNodePool> nodePool;
  /// Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes.
  final pulumi.Input<KubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  final pulumi.Input<KubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  /// The slug identifier for the region where the Kubernetes cluster will be created.
  final pulumi.Input<String> region;
  /// Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  final pulumi.Input<bool>? registryIntegration;
  /// Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  final pulumi.Input<KubernetesClusterRoutingAgent>? routingAgent;
  /// The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  final pulumi.Input<String>? serviceSubnet;
  /// Enable/disable surge upgrades for a cluster. Default: true
  final pulumi.Input<bool>? surgeUpgrade;
  /// A list of tag names to be applied to the Kubernetes cluster.
  final pulumi.Input<List<String>>? tags;
  /// The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  final pulumi.Input<String> version;
  /// The ID of the VPC where the Kubernetes cluster will be located.
  final pulumi.Input<String>? vpcUuid;

  /// Creates a new [KubernetesClusterArgs].
  /// [amdGpuDeviceMetricsExporterPlugin] Block containing options for the AMD GPU device metrics exporter component.
  /// [amdGpuDevicePlugin] Block containing options for the AMD GPU device plugin component. If not specified, the component will be enabled by default for clusters with AMD GPU nodes.
  /// [autoUpgrade] A boolean value indicating whether the cluster will be automatically upgraded to new patch releases during its maintenance window.
  /// [clusterAutoscalerConfigurations] Block containing options for cluster auto-scaling.
  /// [clusterSubnet] The range of IP addresses in the overlay network of the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [controlPlaneFirewall] A block representing the cluster's control plane firewall
  /// [destroyAllAssociatedResources] **Use with caution.** When set to true, all associated DigitalOcean resources created via the Kubernetes API (load balancers, volumes, and volume snapshots) will be destroyed along with the cluster when it is destroyed.
  /// [ha] Enable/disable the high availability control plane for a cluster. Once enabled for a cluster, high availability cannot be disabled. Default: false
  /// [kubeconfigExpireSeconds] The duration in seconds that the returned Kubernetes credentials will be valid. If not set or 0, the credentials will have a 7 day expiry.
  /// [maintenancePolicy] A block representing the cluster's maintenance window. Updates will be applied within this window. If not specified, a default maintenance window will be chosen. `auto_upgrade` must be set to `true` for this to have an effect.
  /// [name] A name for the Kubernetes cluster.
  /// [nodePool] A block representing the cluster's default node pool. Additional node pools may be added to the cluster using the `digitalocean.KubernetesNodePool` resource. The following arguments may be specified:
  /// [nvidiaGpuDevicePlugin] Block containing options for the NVIDIA GPU device plugin component. If not specified, the component will be enabled by default for clusters with NVIDIA GPU nodes.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [region] The slug identifier for the region where the Kubernetes cluster will be created.
  /// [registryIntegration] Enables or disables the DigitalOcean container registry integration for the cluster. This requires that a container registry has first been created for the account. Default: false
  /// [routingAgent] Block containing options for the routing-agent component. If not specified, the routing-agent component will not be installed in the cluster.
  /// [serviceSubnet] The range of assignable IP addresses for services running in the Kubernetes cluster. For more information, see [here](https://docs.digitalocean.com/products/kubernetes/how-to/create-clusters/#create-with-vpc-native).
  /// [surgeUpgrade] Enable/disable surge upgrades for a cluster. Default: true
  /// [tags] A list of tag names to be applied to the Kubernetes cluster.
  /// [version] The slug identifier for the version of Kubernetes used for the cluster. Use [doctl](https://github.com/digitalocean/doctl) to find the available versions `doctl kubernetes options versions`. (**Note:** A cluster may only be upgraded to newer versions in-place. If the version is decreased, a new resource will be created.)
  /// [vpcUuid] The ID of the VPC where the Kubernetes cluster will be located.
  KubernetesClusterArgs({
    KubernetesClusterAmdGpuDeviceMetricsExporterPlugin? amdGpuDeviceMetricsExporterPlugin,
    KubernetesClusterAmdGpuDevicePlugin? amdGpuDevicePlugin,
    bool? autoUpgrade,
    List<KubernetesClusterClusterAutoscalerConfiguration>? clusterAutoscalerConfigurations,
    String? clusterSubnet,
    KubernetesClusterControlPlaneFirewall? controlPlaneFirewall,
    bool? destroyAllAssociatedResources,
    bool? ha,
    int? kubeconfigExpireSeconds,
    KubernetesClusterMaintenancePolicy? maintenancePolicy,
    String? name,
    required KubernetesClusterNodePool nodePool,
    KubernetesClusterNvidiaGpuDevicePlugin? nvidiaGpuDevicePlugin,
    KubernetesClusterRdmaSharedDevicePlugin? rdmaSharedDevicePlugin,
    required String region,
    bool? registryIntegration,
    KubernetesClusterRoutingAgent? routingAgent,
    String? serviceSubnet,
    bool? surgeUpgrade,
    List<String>? tags,
    required String version,
    String? vpcUuid,
  }) :
      amdGpuDeviceMetricsExporterPlugin = pulumi.Input.asOptionalInput<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin>(amdGpuDeviceMetricsExporterPlugin),
      amdGpuDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterAmdGpuDevicePlugin>(amdGpuDevicePlugin),
      autoUpgrade = pulumi.Input.asOptionalInput<bool>(autoUpgrade),
      clusterAutoscalerConfigurations = pulumi.Input.asOptionalInput<List<KubernetesClusterClusterAutoscalerConfiguration>>(clusterAutoscalerConfigurations),
      clusterSubnet = pulumi.Input.asOptionalInput<String>(clusterSubnet),
      controlPlaneFirewall = pulumi.Input.asOptionalInput<KubernetesClusterControlPlaneFirewall>(controlPlaneFirewall),
      destroyAllAssociatedResources = pulumi.Input.asOptionalInput<bool>(destroyAllAssociatedResources),
      ha = pulumi.Input.asOptionalInput<bool>(ha),
      kubeconfigExpireSeconds = pulumi.Input.asOptionalInput<int>(kubeconfigExpireSeconds),
      maintenancePolicy = pulumi.Input.asOptionalInput<KubernetesClusterMaintenancePolicy>(maintenancePolicy),
      name = pulumi.Input.asOptionalInput<String>(name),
      nodePool = pulumi.Input.asInput<KubernetesClusterNodePool>(nodePool),
      nvidiaGpuDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterNvidiaGpuDevicePlugin>(nvidiaGpuDevicePlugin),
      rdmaSharedDevicePlugin = pulumi.Input.asOptionalInput<KubernetesClusterRdmaSharedDevicePlugin>(rdmaSharedDevicePlugin),
      region = pulumi.Input.asInput<String>(region),
      registryIntegration = pulumi.Input.asOptionalInput<bool>(registryIntegration),
      routingAgent = pulumi.Input.asOptionalInput<KubernetesClusterRoutingAgent>(routingAgent),
      serviceSubnet = pulumi.Input.asOptionalInput<String>(serviceSubnet),
      surgeUpgrade = pulumi.Input.asOptionalInput<bool>(surgeUpgrade),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags),
      version = pulumi.Input.asInput<String>(version),
      vpcUuid = pulumi.Input.asOptionalInput<String>(vpcUuid);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'autoUpgrade': ?autoUpgrade,
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<KubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<KubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'clusterSubnet': ?clusterSubnet,
      'controlPlaneFirewall': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterControlPlaneFirewall, Map<String, dynamic>>(controlPlaneFirewall, (value) => value.toMap()),
      'destroyAllAssociatedResources': ?destroyAllAssociatedResources,
      'ha': ?ha,
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'maintenancePolicy': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterMaintenancePolicy, Map<String, dynamic>>(maintenancePolicy, (value) => value.toMap()),
      'name': ?name,
      'nodePool': pulumi.Input.mapInputValue<KubernetesClusterNodePool, Map<String, dynamic>>(nodePool, (value) => value.toMap()),
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'region': region,
      'registryIntegration': ?registryIntegration,
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<KubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'serviceSubnet': ?serviceSubnet,
      'surgeUpgrade': ?surgeUpgrade,
      'tags': ?tags,
      'version': version,
      'vpcUuid': ?vpcUuid,
    };
  }

  factory KubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterArgs(
      amdGpuDeviceMetricsExporterPlugin: map['amdGpuDeviceMetricsExporterPlugin'] == null ? null : KubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((map['amdGpuDeviceMetricsExporterPlugin'] as Map).cast<String, dynamic>()),
      amdGpuDevicePlugin: map['amdGpuDevicePlugin'] == null ? null : KubernetesClusterAmdGpuDevicePlugin.fromMap((map['amdGpuDevicePlugin'] as Map).cast<String, dynamic>()),
      autoUpgrade: map['autoUpgrade'] == null ? null : map['autoUpgrade'] as bool,
      clusterAutoscalerConfigurations: map['clusterAutoscalerConfigurations'] == null ? null : pulumi.Input.decodeList<KubernetesClusterClusterAutoscalerConfiguration>(map['clusterAutoscalerConfigurations'], (value) => KubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      clusterSubnet: map['clusterSubnet'] == null ? null : map['clusterSubnet'] as String,
      controlPlaneFirewall: map['controlPlaneFirewall'] == null ? null : KubernetesClusterControlPlaneFirewall.fromMap((map['controlPlaneFirewall'] as Map).cast<String, dynamic>()),
      destroyAllAssociatedResources: map['destroyAllAssociatedResources'] == null ? null : map['destroyAllAssociatedResources'] as bool,
      ha: map['ha'] == null ? null : map['ha'] as bool,
      kubeconfigExpireSeconds: map['kubeconfigExpireSeconds'] == null ? null : map['kubeconfigExpireSeconds'] as int,
      maintenancePolicy: map['maintenancePolicy'] == null ? null : KubernetesClusterMaintenancePolicy.fromMap((map['maintenancePolicy'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      nodePool: KubernetesClusterNodePool.fromMap((map['nodePool'] as Map).cast<String, dynamic>()),
      nvidiaGpuDevicePlugin: map['nvidiaGpuDevicePlugin'] == null ? null : KubernetesClusterNvidiaGpuDevicePlugin.fromMap((map['nvidiaGpuDevicePlugin'] as Map).cast<String, dynamic>()),
      rdmaSharedDevicePlugin: map['rdmaSharedDevicePlugin'] == null ? null : KubernetesClusterRdmaSharedDevicePlugin.fromMap((map['rdmaSharedDevicePlugin'] as Map).cast<String, dynamic>()),
      region: map['region'] as String,
      registryIntegration: map['registryIntegration'] == null ? null : map['registryIntegration'] as bool,
      routingAgent: map['routingAgent'] == null ? null : KubernetesClusterRoutingAgent.fromMap((map['routingAgent'] as Map).cast<String, dynamic>()),
      serviceSubnet: map['serviceSubnet'] == null ? null : map['serviceSubnet'] as String,
      surgeUpgrade: map['surgeUpgrade'] == null ? null : map['surgeUpgrade'] as bool,
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
      version: map['version'] as String,
      vpcUuid: map['vpcUuid'] == null ? null : map['vpcUuid'] as String,
    );
  }
}

