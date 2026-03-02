// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final pulumi.Input<String> apiServerInternet;
  /// API Server Intranet endpoint.
  final pulumi.Input<String> apiServerIntranet;
  /// Master node SSH IP address.
  final pulumi.Input<String> masterPublicIp;
  /// Service Access Domain.
  final pulumi.Input<String> serviceDomain;

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
      apiServerInternet: (map['apiServerInternet'] as String).input(),
      apiServerIntranet: (map['apiServerIntranet'] as String).input(),
      masterPublicIp: (map['masterPublicIp'] as String).input(),
      serviceDomain: (map['serviceDomain'] as String).input(),
    );
  }
}

