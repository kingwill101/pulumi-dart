// ignore_for_file: unused_element, unnecessary_cast

import 'managed_cluster_azure_monitor_profile_metrics_response.dart';

/// Azure Monitor addon profiles for monitoring the managed cluster.
class ManagedClusterAzureMonitorProfileResponse {
  /// Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
  final ManagedClusterAzureMonitorProfileMetricsResponse? metrics;

  /// Creates a new [ManagedClusterAzureMonitorProfileResponse].
  /// [metrics] Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
  ManagedClusterAzureMonitorProfileResponse({
    this.metrics,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics': ?metrics == null ? null : metrics!.toMap(),
    };
  }

  factory ManagedClusterAzureMonitorProfileResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfileResponse(
      metrics: map['metrics'] == null ? null : ManagedClusterAzureMonitorProfileMetricsResponse.fromMap((map['metrics'] as Map).cast<String, dynamic>()),
    );
  }
}

