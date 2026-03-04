// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetManagedKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final pulumi.Input<String> apiServerInternet;

  /// API Server Intranet endpoint.
  final pulumi.Input<String> apiServerIntranet;

  /// Master node SSH IP address.
  final pulumi.Input<String> masterPublicIp;

  /// Service Access Domain.
  final pulumi.Input<String> serviceDomain;

  /// Creates a new [GetManagedKubernetesClustersClusterConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  /// [masterPublicIp] Master node SSH IP address.
  /// [serviceDomain] Service Access Domain.
  GetManagedKubernetesClustersClusterConnections({
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

  factory GetManagedKubernetesClustersClusterConnections.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetManagedKubernetesClustersClusterConnections(
      apiServerInternet: pulumi.Input.fromValue(
        map['apiServerInternet'] as String,
      ),
      apiServerIntranet: pulumi.Input.fromValue(
        map['apiServerIntranet'] as String,
      ),
      masterPublicIp: pulumi.Input.fromValue(map['masterPublicIp'] as String),
      serviceDomain: pulumi.Input.fromValue(map['serviceDomain'] as String),
    );
  }
}
