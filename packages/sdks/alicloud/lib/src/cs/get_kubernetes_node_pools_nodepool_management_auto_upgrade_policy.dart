// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy {
  /// Specifies whether  to automatically update the kubelet. Valid values: `true`: yes; `false`: no.
  final pulumi.Input<bool> autoUpgradeKubelet;

  /// Creates a new [GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy].
  /// [autoUpgradeKubelet] Specifies whether  to automatically update the kubelet. Valid values: `true`: yes; `false`: no.
  GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy({
    required this.autoUpgradeKubelet,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoUpgradeKubelet': autoUpgradeKubelet,
    };
  }

  factory GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy(
      autoUpgradeKubelet: pulumi.Input.fromValue(map['autoUpgradeKubelet'] as bool),
    );
  }
}

