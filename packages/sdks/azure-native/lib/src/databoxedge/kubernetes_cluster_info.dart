// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes cluster configuration
class KubernetesClusterInfo {
  /// Kubernetes cluster version
  final pulumi.Input<String> version;

  /// Creates a new [KubernetesClusterInfo].
  /// [version] Kubernetes cluster version
  const KubernetesClusterInfo({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory KubernetesClusterInfo.fromMap(Map<String, dynamic> map) {
    return KubernetesClusterInfo(
      version: pulumi.Input.fromValue(map['version'] as String),
    );
  }
}
