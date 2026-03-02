// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ComputeEnvironmentEksConfiguration {
  /// The Amazon Resource Name (ARN) of the Amazon EKS cluster.
  final pulumi.Input<String> eksClusterArn;
  /// The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  final pulumi.Input<String> kubernetesNamespace;

  /// Creates a new [ComputeEnvironmentEksConfiguration].
  /// [eksClusterArn] The Amazon Resource Name (ARN) of the Amazon EKS cluster.
  /// [kubernetesNamespace] The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  ComputeEnvironmentEksConfiguration({
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
      eksClusterArn: (map['eksClusterArn'] as String).input(),
      kubernetesNamespace: (map['kubernetesNamespace'] as String).input(),
    );
  }
}

