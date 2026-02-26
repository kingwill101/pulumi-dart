// ignore_for_file: unused_element, unnecessary_cast

/// VmwareClusterUpgradePolicy defines the cluster upgrade policy.
class VmwareClusterUpgradePolicyResponse {
  /// Controls whether the upgrade applies to the control plane only.
  final bool controlPlaneOnly;

  VmwareClusterUpgradePolicyResponse({
    required this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['controlPlaneOnly'] = controlPlaneOnly;
    return map;
  }

  factory VmwareClusterUpgradePolicyResponse.fromMap(Map<String, dynamic> map) {
    return VmwareClusterUpgradePolicyResponse(
      controlPlaneOnly: map['controlPlaneOnly'] as bool,
    );
  }
}
