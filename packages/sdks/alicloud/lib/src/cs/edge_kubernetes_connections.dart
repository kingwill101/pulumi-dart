// ignore_for_file: unused_element, unnecessary_cast


class EdgeKubernetesConnections {
  /// API Server Internet endpoint.
  final String? apiServerInternet;
  /// API Server Intranet endpoint.
  final String? apiServerIntranet;
  /// Master node SSH IP address.
  final String? masterPublicIp;
  /// Service Access Domain.
  final String? serviceDomain;

  /// Creates a new [EdgeKubernetesConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  /// [masterPublicIp] Master node SSH IP address.
  /// [serviceDomain] Service Access Domain.
  EdgeKubernetesConnections({
    this.apiServerInternet,
    this.apiServerIntranet,
    this.masterPublicIp,
    this.serviceDomain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiServerInternet': ?apiServerInternet,
      'apiServerIntranet': ?apiServerIntranet,
      'masterPublicIp': ?masterPublicIp,
      'serviceDomain': ?serviceDomain,
    };
  }

  factory EdgeKubernetesConnections.fromMap(Map<String, dynamic> map) {
    return EdgeKubernetesConnections(
      apiServerInternet: map['apiServerInternet'] == null ? null : map['apiServerInternet'] as String,
      apiServerIntranet: map['apiServerIntranet'] == null ? null : map['apiServerIntranet'] as String,
      masterPublicIp: map['masterPublicIp'] == null ? null : map['masterPublicIp'] as String,
      serviceDomain: map['serviceDomain'] == null ? null : map['serviceDomain'] as String,
    );
  }
}

