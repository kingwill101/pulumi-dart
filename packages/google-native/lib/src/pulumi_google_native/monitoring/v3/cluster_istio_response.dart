// ignore_for_file: unused_element, unnecessary_cast

/// Istio service scoped to a single Kubernetes cluster. Learn more at https://istio.io. Clusters running OSS Istio will have their services ingested as this type.
class ClusterIstioResponse {
  /// The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  final String clusterName;

  /// The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  final String location;

  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final String serviceName;

  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final String serviceNamespace;

  ClusterIstioResponse({
    required this.clusterName,
    required this.location,
    required this.serviceName,
    required this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clusterName'] = clusterName;
    map['location'] = location;
    map['serviceName'] = serviceName;
    map['serviceNamespace'] = serviceNamespace;
    return map;
  }

  factory ClusterIstioResponse.fromMap(Map<String, dynamic> map) {
    return ClusterIstioResponse(
      clusterName: map['clusterName'] as String,
      location: map['location'] as String,
      serviceName: map['serviceName'] as String,
      serviceNamespace: map['serviceNamespace'] as String,
    );
  }
}
