// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final String apiServerInternet;
  /// API Server Intranet endpoint.
  final String apiServerIntranet;
  /// Master node SSH IP address.
  final String masterPublicIp;
  /// Service Access Domain.
  final String serviceDomain;

  /// Creates a new [GetKubernetesClustersClusterConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  /// [masterPublicIp] Master node SSH IP address.
  /// [serviceDomain] Service Access Domain.
  GetKubernetesClustersClusterConnections({
    required this.apiServerInternet,
    required this.apiServerIntranet,
    required this.masterPublicIp,
    required this.serviceDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerInternet': apiServerInternet,
      'apiServerIntranet': apiServerIntranet,
      'masterPublicIp': masterPublicIp,
      'serviceDomain': serviceDomain,
    };
  }

  factory GetKubernetesClustersClusterConnections.fromMap(Map<String, dynamic> map) {
    return GetKubernetesClustersClusterConnections(
      apiServerInternet: map['apiServerInternet'] as String,
      apiServerIntranet: map['apiServerIntranet'] as String,
      masterPublicIp: map['masterPublicIp'] as String,
      serviceDomain: map['serviceDomain'] as String,
    );
  }
}

