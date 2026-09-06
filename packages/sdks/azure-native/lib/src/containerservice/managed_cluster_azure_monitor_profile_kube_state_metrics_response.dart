// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
class ManagedClusterAzureMonitorProfileKubeStateMetricsResponse {
  /// Comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric (Example: 'namespaces=[kubernetes.io/team,...],pods=[kubernetes.io/team],...'). By default the metric contains only resource name and namespace labels.
  final pulumi.Input<String?>? metricAnnotationsAllowList;
  /// Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric (Example: 'namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...'). By default the metric contains only resource name and namespace labels.
  final pulumi.Input<String?>? metricLabelsAllowlist;

  /// Creates a new [ManagedClusterAzureMonitorProfileKubeStateMetricsResponse].
  /// [metricAnnotationsAllowList] Comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric (Example: 'namespaces=[kubernetes.io/team,...],pods=[kubernetes.io/team],...'). By default the metric contains only resource name and namespace labels.
  /// [metricLabelsAllowlist] Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric (Example: 'namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...'). By default the metric contains only resource name and namespace labels.
  const ManagedClusterAzureMonitorProfileKubeStateMetricsResponse({
    this.metricAnnotationsAllowList,
    this.metricLabelsAllowlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricAnnotationsAllowList': ?metricAnnotationsAllowList,
      'metricLabelsAllowlist': ?metricLabelsAllowlist,
    };
  }

  factory ManagedClusterAzureMonitorProfileKubeStateMetricsResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfileKubeStateMetricsResponse(
      metricAnnotationsAllowList: (() { final guardedValue = map['metricAnnotationsAllowList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      metricLabelsAllowlist: (() { final guardedValue = map['metricLabelsAllowlist']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
