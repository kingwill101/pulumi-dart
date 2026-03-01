// ignore_for_file: unused_element, unnecessary_cast


/// Contains information used to connect to a Kubernetes cluster
class KubernetesConnectionDetailsResponse {
  /// Gets the Instance type.
  /// Expected value is 'Kubernetes'.
  final String instanceType;
  /// Gets the kubeconfig for the cluster.
  final String? kubeConfig;

  /// Creates a new [KubernetesConnectionDetailsResponse].
  /// [instanceType] Gets the Instance type.
  /// [kubeConfig] Gets the kubeconfig for the cluster.
  KubernetesConnectionDetailsResponse({
    required this.instanceType,
    this.kubeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'instanceType': instanceType,
      'kubeConfig': ?kubeConfig,
    };
  }

  factory KubernetesConnectionDetailsResponse.fromMap(Map<String, dynamic> map) {
    return KubernetesConnectionDetailsResponse(
      instanceType: map['instanceType'] as String,
      kubeConfig: map['kubeConfig'] == null ? null : map['kubeConfig'] as String,
    );
  }
}

