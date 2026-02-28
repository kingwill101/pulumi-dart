// ignore_for_file: unused_element, unnecessary_cast

/// Specifies control plane node config.
class VmwareControlPlaneVsphereConfigResponse {
  /// The Vsphere datastore used by the control plane Node.
  final String datastore;

  /// The Vsphere storage policy used by the control plane Node.
  final String storagePolicyName;

  /// Creates a new [VmwareControlPlaneVsphereConfigResponse].
  /// [datastore] The Vsphere datastore used by the control plane Node.
  /// [storagePolicyName] The Vsphere storage policy used by the control plane Node.
  VmwareControlPlaneVsphereConfigResponse({
    required this.datastore,
    required this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['datastore'] = datastore;
    map['storagePolicyName'] = storagePolicyName;
    return map;
  }

  factory VmwareControlPlaneVsphereConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return VmwareControlPlaneVsphereConfigResponse(
      datastore: map['datastore'] as String,
      storagePolicyName: map['storagePolicyName'] as String,
    );
  }
}
