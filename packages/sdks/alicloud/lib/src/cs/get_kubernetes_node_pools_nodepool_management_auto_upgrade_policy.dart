// ignore_for_file: unused_element, unnecessary_cast


class GetKubernetesNodePoolsNodepoolManagementAutoUpgradePolicy {
  /// Specifies whether  to automatically update the kubelet. Valid values: `true`: yes; `false`: no.
  final bool autoUpgradeKubelet;

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
      autoUpgradeKubelet: map['autoUpgradeKubelet'] as bool,
    );
  }
}

