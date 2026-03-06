// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEdgeKubernetesClustersClusterConnections {
  /// API Server Internet endpoint.
  final pulumi.Input<String> apiServerInternet;
  /// API Server Intranet endpoint.
  final pulumi.Input<String> apiServerIntranet;

  /// Creates a new [GetEdgeKubernetesClustersClusterConnections].
  /// [apiServerInternet] API Server Internet endpoint.
  /// [apiServerIntranet] API Server Intranet endpoint.
  const GetEdgeKubernetesClustersClusterConnections({
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
      apiServerInternet: pulumi.Input.fromValue(map['apiServerInternet'] as String),
      apiServerIntranet: pulumi.Input.fromValue(map['apiServerIntranet'] as String),
    );
  }
}

