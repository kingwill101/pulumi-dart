// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_cluster_azure_monitor_profile_metrics.dart';

/// Azure Monitor addon profiles for monitoring the managed cluster.
class ManagedClusterAzureMonitorProfile {
  /// Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
  final pulumi.Input<ManagedClusterAzureMonitorProfileMetrics>? metrics;

  /// Creates a new [ManagedClusterAzureMonitorProfile].
  /// [metrics] Metrics profile for the Azure Monitor managed service for Prometheus addon. Collect out-of-the-box Kubernetes infrastructure metrics to send to an Azure Monitor Workspace and configure additional scraping for custom targets. See aka.ms/AzureManagedPrometheus for an overview.
  ManagedClusterAzureMonitorProfile({this.metrics});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metrics':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedClusterAzureMonitorProfileMetrics,
            Map<String, dynamic>
          >(metrics, (value) => value.toMap()),
    };
  }

  factory ManagedClusterAzureMonitorProfile.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfile(
      metrics: (() {
        final guardedValue = map['metrics'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedClusterAzureMonitorProfileMetrics.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
