// ignore_for_file: unused_element, unnecessary_cast


class VMwareClusterControlPlaneNodeVsphereConfig {
  /// The Vsphere datastore used by the Control Plane Node.
  final String? datastore;
  /// The Vsphere storage policy used by the control plane Node.
  final String? storagePolicyName;

  /// Creates a new [VMwareClusterControlPlaneNodeVsphereConfig].
  /// [datastore] The Vsphere datastore used by the Control Plane Node.
  /// [storagePolicyName] The Vsphere storage policy used by the control plane Node.
  VMwareClusterControlPlaneNodeVsphereConfig({
    this.datastore,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datastore': ?datastore,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VMwareClusterControlPlaneNodeVsphereConfig.fromMap(Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeVsphereConfig(
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      storagePolicyName: map['storagePolicyName'] == null ? null : map['storagePolicyName'] as String,
    );
  }
}

