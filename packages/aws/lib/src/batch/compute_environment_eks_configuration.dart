// ignore_for_file: unused_element, unnecessary_cast

class ComputeEnvironmentEksConfiguration {
  /// The Amazon Resource Name (ARN) of the Amazon EKS cluster.
  final String eksClusterArn;

  /// The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  final String kubernetesNamespace;

  /// Creates a new [ComputeEnvironmentEksConfiguration].
  /// [eksClusterArn] The Amazon Resource Name (ARN) of the Amazon EKS cluster.
  /// [kubernetesNamespace] The namespace of the Amazon EKS cluster. AWS Batch manages pods in this namespace.
  ComputeEnvironmentEksConfiguration({
    required this.eksClusterArn,
    required this.kubernetesNamespace,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eksClusterArn'] = eksClusterArn;
    map['kubernetesNamespace'] = kubernetesNamespace;
    return map;
  }

  factory ComputeEnvironmentEksConfiguration.fromMap(Map<String, dynamic> map) {
    return ComputeEnvironmentEksConfiguration(
      eksClusterArn: map['eksClusterArn'] as String,
      kubernetesNamespace: map['kubernetesNamespace'] as String,
    );
  }
}
