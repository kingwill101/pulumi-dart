// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_azure_monitor_profile_kube_state_metrics.dart';

/// Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
class ManagedClusterAzureMonitorProfileMetrics {
  /// Whether to enable or disable the Azure Managed Prometheus addon for Prometheus monitoring. See aka.ms/AzureManagedPrometheus-aks-enable for details on enabling and disabling.
  final bool enabled;
  /// Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
  final ManagedClusterAzureMonitorProfileKubeStateMetrics? kubeStateMetrics;

  /// Creates a new [ManagedClusterAzureMonitorProfileMetrics].
  /// [enabled] Whether to enable or disable the Azure Managed Prometheus addon for Prometheus monitoring. See aka.ms/AzureManagedPrometheus-aks-enable for details on enabling and disabling.
  /// [kubeStateMetrics] Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
  ManagedClusterAzureMonitorProfileMetrics({
    required this.enabled,
    this.kubeStateMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kubeStateMetrics': ?kubeStateMetrics == null ? null : kubeStateMetrics!.toMap(),
    };
  }

  factory ManagedClusterAzureMonitorProfileMetrics.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfileMetrics(
      enabled: map['enabled'] as bool,
      kubeStateMetrics: map['kubeStateMetrics'] == null ? null : ManagedClusterAzureMonitorProfileKubeStateMetrics.fromMap((map['kubeStateMetrics'] as Map).cast<String, dynamic>()),
    );
  }
}

