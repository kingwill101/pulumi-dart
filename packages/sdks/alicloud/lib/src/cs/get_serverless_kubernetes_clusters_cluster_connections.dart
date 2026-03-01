// ignore_for_file: unused_element, unnecessary_cast


class GetServerlessKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final String apiServerInternet;
  /// API Server Intranet endpoint.
  final String apiServerIntranet;
  /// Master node SSH IP address.
  final String masterPublicIp;

  /// Creates a new [GetServerlessKubernetesClustersClusterConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  /// [masterPublicIp] Master node SSH IP address.
  GetServerlessKubernetesClustersClusterConnections({
    required this.apiServerInternet,
    required this.apiServerIntranet,
    required this.masterPublicIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerInternet': apiServerInternet,
      'apiServerIntranet': apiServerIntranet,
      'masterPublicIp': masterPublicIp,
    };
  }

  factory GetServerlessKubernetesClustersClusterConnections.fromMap(Map<String, dynamic> map) {
    return GetServerlessKubernetesClustersClusterConnections(
      apiServerInternet: map['apiServerInternet'] as String,
      apiServerIntranet: map['apiServerIntranet'] as String,
      masterPublicIp: map['masterPublicIp'] as String,
    );
  }
}

