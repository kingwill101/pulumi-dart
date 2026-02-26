// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterStorage {
  /// Whether or not to deploy vSphere CSI components in the VMware User Cluster.
  /// Enabled by default.
  final bool vsphereCsiDisabled;

  VMwareClusterStorage({
    required this.vsphereCsiDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['vsphereCsiDisabled'] = vsphereCsiDisabled;
    return map;
  }

  factory VMwareClusterStorage.fromMap(Map<String, dynamic> map) {
    return VMwareClusterStorage(
      vsphereCsiDisabled: map['vsphereCsiDisabled'] as bool,
    );
  }
}
