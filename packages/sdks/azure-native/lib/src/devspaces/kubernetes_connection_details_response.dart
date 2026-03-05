// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Contains information used to connect to a Kubernetes cluster
class KubernetesConnectionDetailsResponse {
  /// Gets the Instance type.
  /// Expected value is 'Kubernetes'.
  final pulumi.Input<String> instanceType;
  /// Gets the kubeconfig for the cluster.
  final pulumi.Input<String>? kubeConfig;

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
      instanceType: pulumi.Input.fromValue(map['instanceType'] as String),
      kubeConfig: (() { final guardedValue = map['kubeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

