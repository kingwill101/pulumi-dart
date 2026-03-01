// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_kubernetes_cluster_amd_gpu_device_metrics_exporter_plugin.dart';
import 'get_kubernetes_cluster_amd_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_cluster_autoscaler_configuration.dart';
import 'get_kubernetes_cluster_nvidia_gpu_device_plugin.dart';
import 'get_kubernetes_cluster_rdma_shared_device_plugin.dart';
import 'get_kubernetes_cluster_routing_agent.dart';

/// {@template pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
/// Arguments for getKubernetesCluster.
/// {@endtemplate}
/// {@macro pulumi_index_get_kubernetes_cluster_get_kubernetes_cluster_args_doc}
class GetKubernetesClusterArgs {
  final pulumi.Input<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin>? amdGpuDeviceMetricsExporterPlugin;
  final pulumi.Input<GetKubernetesClusterAmdGpuDevicePlugin>? amdGpuDevicePlugin;
  final pulumi.Input<List<GetKubernetesClusterClusterAutoscalerConfiguration>>? clusterAutoscalerConfigurations;
  final pulumi.Input<int>? kubeconfigExpireSeconds;
  /// The name of Kubernetes cluster.
  final pulumi.Input<String> name;
  final pulumi.Input<GetKubernetesClusterNvidiaGpuDevicePlugin>? nvidiaGpuDevicePlugin;
  final pulumi.Input<GetKubernetesClusterRdmaSharedDevicePlugin>? rdmaSharedDevicePlugin;
  final pulumi.Input<GetKubernetesClusterRoutingAgent>? routingAgent;
  /// A list of tag names applied to the node pool.
  final pulumi.Input<List<String>>? tags;

  /// Creates a new [GetKubernetesClusterArgs].
  /// [amdGpuDeviceMetricsExporterPlugin] Optional.
  /// [amdGpuDevicePlugin] Optional.
  /// [clusterAutoscalerConfigurations] Optional.
  /// [kubeconfigExpireSeconds] Optional.
  /// [name] The name of Kubernetes cluster.
  /// [nvidiaGpuDevicePlugin] Optional.
  /// [rdmaSharedDevicePlugin] Optional.
  /// [routingAgent] Optional.
  /// [tags] A list of tag names applied to the node pool.
  GetKubernetesClusterArgs({
    GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin? amdGpuDeviceMetricsExporterPlugin,
    GetKubernetesClusterAmdGpuDevicePlugin? amdGpuDevicePlugin,
    List<GetKubernetesClusterClusterAutoscalerConfiguration>? clusterAutoscalerConfigurations,
    int? kubeconfigExpireSeconds,
    required String name,
    GetKubernetesClusterNvidiaGpuDevicePlugin? nvidiaGpuDevicePlugin,
    GetKubernetesClusterRdmaSharedDevicePlugin? rdmaSharedDevicePlugin,
    GetKubernetesClusterRoutingAgent? routingAgent,
    List<String>? tags,
  }) :
      amdGpuDeviceMetricsExporterPlugin = pulumi.Input.asOptionalInput<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin>(amdGpuDeviceMetricsExporterPlugin),
      amdGpuDevicePlugin = pulumi.Input.asOptionalInput<GetKubernetesClusterAmdGpuDevicePlugin>(amdGpuDevicePlugin),
      clusterAutoscalerConfigurations = pulumi.Input.asOptionalInput<List<GetKubernetesClusterClusterAutoscalerConfiguration>>(clusterAutoscalerConfigurations),
      kubeconfigExpireSeconds = pulumi.Input.asOptionalInput<int>(kubeconfigExpireSeconds),
      name = pulumi.Input.asInput<String>(name),
      nvidiaGpuDevicePlugin = pulumi.Input.asOptionalInput<GetKubernetesClusterNvidiaGpuDevicePlugin>(nvidiaGpuDevicePlugin),
      rdmaSharedDevicePlugin = pulumi.Input.asOptionalInput<GetKubernetesClusterRdmaSharedDevicePlugin>(rdmaSharedDevicePlugin),
      routingAgent = pulumi.Input.asOptionalInput<GetKubernetesClusterRoutingAgent>(routingAgent),
      tags = pulumi.Input.asOptionalInput<List<String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amdGpuDeviceMetricsExporterPlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin, Map<String, dynamic>>(amdGpuDeviceMetricsExporterPlugin, (value) => value.toMap()),
      'amdGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterAmdGpuDevicePlugin, Map<String, dynamic>>(amdGpuDevicePlugin, (value) => value.toMap()),
      'clusterAutoscalerConfigurations': ?pulumi.Input.mapOptionalInputValue<List<GetKubernetesClusterClusterAutoscalerConfiguration>, List<Map<String, dynamic>>>(clusterAutoscalerConfigurations, (value) => pulumi.Input.encodeList<GetKubernetesClusterClusterAutoscalerConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'kubeconfigExpireSeconds': ?kubeconfigExpireSeconds,
      'name': name,
      'nvidiaGpuDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterNvidiaGpuDevicePlugin, Map<String, dynamic>>(nvidiaGpuDevicePlugin, (value) => value.toMap()),
      'rdmaSharedDevicePlugin': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRdmaSharedDevicePlugin, Map<String, dynamic>>(rdmaSharedDevicePlugin, (value) => value.toMap()),
      'routingAgent': ?pulumi.Input.mapOptionalInputValue<GetKubernetesClusterRoutingAgent, Map<String, dynamic>>(routingAgent, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory GetKubernetesClusterArgs.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClusterArgs(
      amdGpuDeviceMetricsExporterPlugin: map['amdGpuDeviceMetricsExporterPlugin'] == null ? null : GetKubernetesClusterAmdGpuDeviceMetricsExporterPlugin.fromMap((map['amdGpuDeviceMetricsExporterPlugin'] as Map).cast<String, dynamic>()),
      amdGpuDevicePlugin: map['amdGpuDevicePlugin'] == null ? null : GetKubernetesClusterAmdGpuDevicePlugin.fromMap((map['amdGpuDevicePlugin'] as Map).cast<String, dynamic>()),
      clusterAutoscalerConfigurations: map['clusterAutoscalerConfigurations'] == null ? null : pulumi.Input.decodeList<GetKubernetesClusterClusterAutoscalerConfiguration>(map['clusterAutoscalerConfigurations'], (value) => GetKubernetesClusterClusterAutoscalerConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      kubeconfigExpireSeconds: map['kubeconfigExpireSeconds'] == null ? null : map['kubeconfigExpireSeconds'] as int,
      name: map['name'] as String,
      nvidiaGpuDevicePlugin: map['nvidiaGpuDevicePlugin'] == null ? null : GetKubernetesClusterNvidiaGpuDevicePlugin.fromMap((map['nvidiaGpuDevicePlugin'] as Map).cast<String, dynamic>()),
      rdmaSharedDevicePlugin: map['rdmaSharedDevicePlugin'] == null ? null : GetKubernetesClusterRdmaSharedDevicePlugin.fromMap((map['rdmaSharedDevicePlugin'] as Map).cast<String, dynamic>()),
      routingAgent: map['routingAgent'] == null ? null : GetKubernetesClusterRoutingAgent.fromMap((map['routingAgent'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as List).cast<String>(),
    );
  }
}

