// ignore_for_file: unused_element, unnecessary_cast

/// MonitoringConfig informs Fleet-based applications/services/UIs how the metrics for the underlying cluster is reported to cloud monitoring services. It can be set from empty to non-empty, but can't be mutated directly to prevent accidentally breaking the constinousty of metrics.
class MonitoringConfigResponse6 {
  /// Optional. Cluster name used to report metrics. For Anthos on VMWare/Baremetal/MultiCloud clusters, it would be in format {cluster_type}/{cluster_name}, e.g., "awsClusters/cluster_1".
  final String cluster;

  /// Optional. For GKE and Multicloud clusters, this is the UUID of the cluster resource. For VMWare and Baremetal clusters, this is the kube-system UID.
  final String clusterHash;

  /// Optional. Kubernetes system metrics, if available, are written to this prefix. This defaults to kubernetes.io for GKE, and kubernetes.io/anthos for Anthos eventually. Noted: Anthos MultiCloud will have kubernetes.io prefix today but will migration to be under kubernetes.io/anthos.
  final String kubernetesMetricsPrefix;

  /// Optional. Location used to report Metrics
  final String location;

  /// Optional. Project used to report Metrics
  final String project;

  MonitoringConfigResponse6({
    required this.cluster,
    required this.clusterHash,
    required this.kubernetesMetricsPrefix,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cluster'] = cluster;
    map['clusterHash'] = clusterHash;
    map['kubernetesMetricsPrefix'] = kubernetesMetricsPrefix;
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory MonitoringConfigResponse6.fromMap(Map<String, dynamic> map) {
    return MonitoringConfigResponse6(
      cluster: map['cluster'] as String,
      clusterHash: map['clusterHash'] as String,
      kubernetesMetricsPrefix: map['kubernetesMetricsPrefix'] as String,
      location: map['location'] as String,
      project: map['project'] as String,
    );
  }
}
