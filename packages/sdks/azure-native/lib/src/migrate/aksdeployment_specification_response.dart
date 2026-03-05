// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AKS Deployment Specification.
class AKSDeploymentSpecificationResponse {
  /// Gets or sets the Merged Deployment and service Yaml.
  final pulumi.Input<String>? kubernetesObjectsYaml;
  /// Gets or sets the load balancer type.
  final pulumi.Input<String>? loadBalancerType;
  /// Gets or sets the replica count to be created in AKS.
  final pulumi.Input<String>? replicaCount;

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
      kubernetesObjectsYaml: (() { final guardedValue = map['kubernetesObjectsYaml']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      loadBalancerType: (() { final guardedValue = map['loadBalancerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      replicaCount: (() { final guardedValue = map['replicaCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

