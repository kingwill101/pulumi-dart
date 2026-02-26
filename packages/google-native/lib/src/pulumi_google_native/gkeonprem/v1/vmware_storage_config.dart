// ignore_for_file: unused_element, unnecessary_cast

/// Specifies vSphere CSI components deployment config in the VMware user cluster.
class VmwareStorageConfig {
  /// Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  final bool? vsphereCsiDisabled;

  VmwareStorageConfig({
    this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final vsphereCsiDisabledValue = vsphereCsiDisabled;
    if (vsphereCsiDisabledValue != null) {
      map['vsphereCsiDisabled'] = vsphereCsiDisabledValue;
    }
    return map;
  }

  factory VmwareStorageConfig.fromMap(Map<String, dynamic> map) {
    return VmwareStorageConfig(
      vsphereCsiDisabled: map['vsphereCsiDisabled'] == null
          ? null
          : map['vsphereCsiDisabled'] as bool,
    );
  }
}
