// ignore_for_file: unused_element, unnecessary_cast


/// Kube State Metrics profile for the Azure Managed Prometheus addon. These optional settings are for the kube-state-metrics pod that is deployed with the addon. See aka.ms/AzureManagedPrometheus-optional-parameters for details.
class ManagedClusterAzureMonitorProfileKubeStateMetrics {
  /// Comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric (Example: 'namespaces=[kubernetes.io/team,...],pods=[kubernetes.io/team],...'). By default the metric contains only resource name and namespace labels.
  final String? metricAnnotationsAllowList;
  /// Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric (Example: 'namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...'). By default the metric contains only resource name and namespace labels.
  final String? metricLabelsAllowlist;

  /// Creates a new [ManagedClusterAzureMonitorProfileKubeStateMetrics].
  /// [metricAnnotationsAllowList] Comma-separated list of Kubernetes annotation keys that will be used in the resource's labels metric (Example: 'namespaces=[kubernetes.io/team,...],pods=[kubernetes.io/team],...'). By default the metric contains only resource name and namespace labels.
  /// [metricLabelsAllowlist] Comma-separated list of additional Kubernetes label keys that will be used in the resource's labels metric (Example: 'namespaces=[k8s-label-1,k8s-label-n,...],pods=[app],...'). By default the metric contains only resource name and namespace labels.
  ManagedClusterAzureMonitorProfileKubeStateMetrics({
    this.metricAnnotationsAllowList,
    this.metricLabelsAllowlist,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metricAnnotationsAllowList': ?metricAnnotationsAllowList,
      'metricLabelsAllowlist': ?metricLabelsAllowlist,
    };
  }

  factory ManagedClusterAzureMonitorProfileKubeStateMetrics.fromMap(Map<String, dynamic> map) {
    return ManagedClusterAzureMonitorProfileKubeStateMetrics(
      metricAnnotationsAllowList: map['metricAnnotationsAllowList'] == null ? null : map['metricAnnotationsAllowList'] as String,
      metricLabelsAllowlist: map['metricLabelsAllowlist'] == null ? null : map['metricLabelsAllowlist'] as String,
    );
  }
}

