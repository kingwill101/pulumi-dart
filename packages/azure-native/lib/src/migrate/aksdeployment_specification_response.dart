// ignore_for_file: unused_element, unnecessary_cast


/// AKS Deployment Specification.
class AKSDeploymentSpecificationResponse {
  /// Gets or sets the Merged Deployment and service Yaml.
  final String? kubernetesObjectsYaml;
  /// Gets or sets the load balancer type.
  final String? loadBalancerType;
  /// Gets or sets the replica count to be created in AKS.
  final String? replicaCount;

  /// Creates a new [AKSDeploymentSpecificationResponse].
  /// [kubernetesObjectsYaml] Gets or sets the Merged Deployment and service Yaml.
  /// [loadBalancerType] Gets or sets the load balancer type.
  /// [replicaCount] Gets or sets the replica count to be created in AKS.
  AKSDeploymentSpecificationResponse({
    this.kubernetesObjectsYaml,
    this.loadBalancerType,
    this.replicaCount,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'kubernetesObjectsYaml': ?kubernetesObjectsYaml,
      'loadBalancerType': ?loadBalancerType,
      'replicaCount': ?replicaCount,
    };
  }

  factory AKSDeploymentSpecificationResponse.fromMap(Map<String, dynamic> map) {
    return AKSDeploymentSpecificationResponse(
      kubernetesObjectsYaml: map['kubernetesObjectsYaml'] == null ? null : map['kubernetesObjectsYaml'] as String,
      loadBalancerType: map['loadBalancerType'] == null ? null : map['loadBalancerType'] as String,
      replicaCount: map['replicaCount'] == null ? null : map['replicaCount'] as String,
    );
  }
}

