// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_azure_monitor_profile_kube_state_metrics_response.dart';

/// Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
class ManagedClusterAzureMonitorProfileMetricsResponse {
  /// Whether to enable or disable the Azure Managed Prometheus addon for Prometheus monitoring. See aka.ms/AzureManagedPrometheus-aks-enable for details on enabling and disabling.
  final pulumi.Input<bool> enabled;
  /// Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
  final pulumi.Input<ManagedClusterAzureMonitorProfileKubeStateMetricsResponse>? kubeStateMetrics;

  /// Creates a new [ManagedClusterAzureMonitorProfileMetricsResponse].
  /// [enabled] Whether to enable or disable the Azure Managed Prometheus addon for Prometheus monitoring. See aka.ms/AzureManagedPrometheus-aks-enable for details on enabling and disabling.
  /// [kubeStateMetrics] Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
  ManagedClusterAzureMonitorProfileMetricsResponse({
    required this.enabled,
    this.kubeStateMetrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'kubeStateMetrics': ?pulumi.Input.mapOptionalInputValue<ManagedClusterAzureMonitorProfileKubeStateMetricsResponse, Map<String, dynamic>>(kubeStateMetrics, (value) => value.toMap()),
    };
  }

  factory ManagedClusterAzureMonitorProfileMetricsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfileMetricsResponse(
      enabled: (map['enabled'] as bool).input(),
      kubeStateMetrics: map['kubeStateMetrics'] == null ? null : (ManagedClusterAzureMonitorProfileKubeStateMetricsResponse.fromMap((map['kubeStateMetrics']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

