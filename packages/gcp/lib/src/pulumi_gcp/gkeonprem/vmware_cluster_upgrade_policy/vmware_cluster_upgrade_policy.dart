// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterUpgradePolicy {
  /// Controls whether the upgrade applies to the control plane only.
  final bool? controlPlaneOnly;

  VMwareClusterUpgradePolicy({
    this.controlPlaneOnly,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final controlPlaneOnlyValue = controlPlaneOnly;
    if (controlPlaneOnlyValue != null) {
      map['controlPlaneOnly'] = controlPlaneOnlyValue;
    }
    return map;
  }

  factory VMwareClusterUpgradePolicy.fromMap(Map<String, dynamic> map) {
    return VMwareClusterUpgradePolicy(
      controlPlaneOnly: map['controlPlaneOnly'] == null
          ? null
          : map['controlPlaneOnly'] as bool,
    );
  }
}
