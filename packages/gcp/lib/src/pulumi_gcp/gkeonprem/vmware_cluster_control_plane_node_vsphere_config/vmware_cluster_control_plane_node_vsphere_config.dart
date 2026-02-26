// ignore_for_file: unused_element, unnecessary_cast

class VMwareClusterControlPlaneNodeVsphereConfig {
  /// The Vsphere datastore used by the Control Plane Node.
  final String? datastore;

  /// The Vsphere storage policy used by the control plane Node.
  final String? storagePolicyName;

  VMwareClusterControlPlaneNodeVsphereConfig({
    this.datastore,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datastoreValue = datastore;
    if (datastoreValue != null) {
      map['datastore'] = datastoreValue;
    }
    final storagePolicyNameValue = storagePolicyName;
    if (storagePolicyNameValue != null) {
      map['storagePolicyName'] = storagePolicyNameValue;
    }
    return map;
  }

  factory VMwareClusterControlPlaneNodeVsphereConfig.fromMap(
      Map<String, dynamic> map) {
    return VMwareClusterControlPlaneNodeVsphereConfig(
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      storagePolicyName: map['storagePolicyName'] == null
          ? null
          : map['storagePolicyName'] as String,
    );
  }
}
