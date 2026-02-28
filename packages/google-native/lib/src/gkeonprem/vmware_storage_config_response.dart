// ignore_for_file: unused_element, unnecessary_cast

/// Specifies vSphere CSI components deployment config in the VMware user cluster.
class VmwareStorageConfigResponse {
  /// Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  final bool vsphereCsiDisabled;

  /// Creates a new [VmwareStorageConfigResponse].
  /// [vsphereCsiDisabled] Whether or not to deploy vSphere CSI components in the VMware user cluster. Enabled by default.
  VmwareStorageConfigResponse({
    required this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vsphereCsiDisabled'] = vsphereCsiDisabled;
    return map;
  }

  factory VmwareStorageConfigResponse.fromMap(Map<String, dynamic> map) {
    return VmwareStorageConfigResponse(
      vsphereCsiDisabled: map['vsphereCsiDisabled'] as bool,
    );
  }
}
