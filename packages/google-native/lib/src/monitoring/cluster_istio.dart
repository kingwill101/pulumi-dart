// ignore_for_file: unused_element, unnecessary_cast


/// Istio service scoped to a single Kubernetes cluster. Learn more at https://istio.io. Clusters running OSS Istio will have their services ingested as this type.
class ClusterIstio {
  /// The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  final String? clusterName;
  /// The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  final String? location;
  /// The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  final String? serviceName;
  /// The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  final String? serviceNamespace;

  /// Creates a new [ClusterIstio].
  /// [clusterName] The name of the Kubernetes cluster in which this Istio service is defined. Corresponds to the cluster_name resource label in k8s_cluster resources.
  /// [location] The location of the Kubernetes cluster in which this Istio service is defined. Corresponds to the location resource label in k8s_cluster resources.
  /// [serviceName] The name of the Istio service underlying this service. Corresponds to the destination_service_name metric label in Istio metrics.
  /// [serviceNamespace] The namespace of the Istio service underlying this service. Corresponds to the destination_service_namespace metric label in Istio metrics.
  ClusterIstio({
    this.clusterName,
    this.location,
    this.serviceName,
    this.serviceNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterName': ?clusterName,
      'location': ?location,
      'serviceName': ?serviceName,
      'serviceNamespace': ?serviceNamespace,
    };
  }

  factory ClusterIstio.fromMap(Map<String, dynamic> map) {
    return ClusterIstio(
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      serviceName: map['serviceName'] == null ? null : map['serviceName'] as String,
      serviceNamespace: map['serviceNamespace'] == null ? null : map['serviceNamespace'] as String,
    );
  }
}

