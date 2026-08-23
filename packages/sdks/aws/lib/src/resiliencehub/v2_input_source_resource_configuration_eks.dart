// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2InputSourceResourceConfigurationEks {
  /// Cluster ARN.
  final pulumi.Input<String> clusterArn;
  /// List of Kubernetes namespaces within the EKS cluster.
  final pulumi.Input<List<String>> namespaces;

  /// Creates a new [V2InputSourceResourceConfigurationEks].
  /// [clusterArn] Cluster ARN.
  /// [namespaces] List of Kubernetes namespaces within the EKS cluster.
  const V2InputSourceResourceConfigurationEks({
    required this.clusterArn,
    required this.namespaces,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clusterArn': clusterArn,
      'namespaces': namespaces,
    };
  }

  factory V2InputSourceResourceConfigurationEks.fromMap(Map<String, dynamic> map) {
    return V2InputSourceResourceConfigurationEks(
      clusterArn: pulumi.Input.fromValue(map['clusterArn'] as String),
      namespaces: pulumi.Input.fromValue((map['namespaces'] as List).cast<String>()),
    );
  }
}
