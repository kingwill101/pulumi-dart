// ignore_for_file: unused_element, unnecessary_cast


class GetEdgeKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final String apiServerInternet;
  /// API Server Intranet endpoint.
  final String apiServerIntranet;

  /// Creates a new [GetEdgeKubernetesClustersClusterConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  GetEdgeKubernetesClustersClusterConnections({
    required this.apiServerInternet,
    required this.apiServerIntranet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerInternet': apiServerInternet,
      'apiServerIntranet': apiServerIntranet,
    };
  }

  factory GetEdgeKubernetesClustersClusterConnections.fromMap(Map<String, dynamic> map) {
    return GetEdgeKubernetesClustersClusterConnections(
      apiServerInternet: map['apiServerInternet'] as String,
      apiServerIntranet: map['apiServerIntranet'] as String,
    );
  }
}

