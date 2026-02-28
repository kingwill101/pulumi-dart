// ignore_for_file: unused_element, unnecessary_cast


/// VmwareClusterUpgradePolicy defines the cluster upgrade policy.
class VmwareClusterUpgradePolicy {
  /// Controls whether the upgrade applies to the control plane only.
  final bool? controlPlaneOnly;

  /// Creates a new [VmwareClusterUpgradePolicy].
  /// [controlPlaneOnly] Controls whether the upgrade applies to the control plane only.
  VmwareClusterUpgradePolicy({
    this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controlPlaneOnly': ?controlPlaneOnly,
    };
  }

  factory VmwareClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return VmwareClusterUpgradePolicy(
      controlPlaneOnly: map['controlPlaneOnly'] == null ? null : map['controlPlaneOnly'] as bool,
    );
  }
}

