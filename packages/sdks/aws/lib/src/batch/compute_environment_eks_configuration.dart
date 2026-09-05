// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeEnvironmentEksConfiguration {
  /// ARN of the Amazon EKS cluster.
  final pulumi.Input<String> eksClusterArn;
  /// The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  final pulumi.Input<String> kubernetesNamespace;

  /// Creates a new [ComputeEnvironmentEksConfiguration].
  /// [eksClusterArn] ARN of the Amazon EKS cluster.
  /// [kubernetesNamespace] The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  const ComputeEnvironmentEksConfiguration({
    required this.eksClusterArn,
    required this.kubernetesNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eksClusterArn': eksClusterArn,
      'kubernetesNamespace': kubernetesNamespace,
    };
  }

  factory ComputeEnvironmentEksConfiguration.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentEksConfiguration(
      eksClusterArn: pulumi.Input.fromValue(map['eksClusterArn'] as String),
      kubernetesNamespace: pulumi.Input.fromValue(map['kubernetesNamespace'] as String),
    );
  }
}
