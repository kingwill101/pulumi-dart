// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Kubernetes role compute resource
class KubernetesRoleCompute {
  /// VM profile
  final pulumi.Input<String> vmProfile;

  /// Creates a new [KubernetesRoleCompute].
  /// [vmProfile] VM profile
  const KubernetesRoleCompute({
    required this.vmProfile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vmProfile': vmProfile,
    };
  }

  factory KubernetesRoleCompute.fromMap(Map<String, dynamic> map) {
    return KubernetesRoleCompute(
      vmProfile: pulumi.Input.fromValue(map['vmProfile'] as String),
    );
  }
}

