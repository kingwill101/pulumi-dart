// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A pod identity exception, which allows pods with certain labels to access the Azure Instance Metadata Service (IMDS) endpoint without being intercepted by the node-managed identity (NMI) server. See [disable AAD Pod Identity for a specific Pod/Application](https://azure.github.io/aad-pod-identity/docs/configure/application_exception/) for more details.
class ManagedClusterPodIdentityExceptionResponse {
  /// The name of the pod identity exception.
  final pulumi.Input<String> name;
  /// The namespace of the pod identity exception.
  final pulumi.Input<String> namespace;
  /// The pod labels to match.
  final pulumi.Input<Map<String, String>> podLabels;

  /// Creates a new [ManagedClusterPodIdentityExceptionResponse].
  /// [name] The name of the pod identity exception.
  /// [namespace] The namespace of the pod identity exception.
  /// [podLabels] The pod labels to match.
  const ManagedClusterPodIdentityExceptionResponse({
    required this.name,
    required this.namespace,
    required this.podLabels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
      'podLabels': podLabels,
    };
  }

  factory ManagedClusterPodIdentityExceptionResponse.fromMap(Map<String, dynamic> map) {
    return ManagedClusterPodIdentityExceptionResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      podLabels: pulumi.Input.fromValue((map['podLabels'] as Map).cast<String, String>()),
    );
  }
}
