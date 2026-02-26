// ignore_for_file: unused_element, unnecessary_cast

class VmwareAdminClusterVcenter {
  /// The vCenter IP address.
  final String? address;

  /// Contains the vCenter CA certificate public key for SSL verification.
  final String? caCertData;

  /// The name of the vCenter cluster for the admin cluster.
  final String? cluster;

  /// The name of the virtual machine disk (VMDK) for the admin cluster.
  final String? dataDisk;

  /// The name of the vCenter datacenter for the admin cluster.
  final String? datacenter;

  /// The name of the vCenter datastore for the admin cluster.
  final String? datastore;

  /// The name of the vCenter folder for the admin cluster.
  final String? folder;

  /// The name of the vCenter resource pool for the admin cluster.
  final String? resourcePool;

  /// The name of the vCenter storage policy for the user cluster.
  final String? storagePolicyName;

  VmwareAdminClusterVcenter({
    this.address,
    this.caCertData,
    this.cluster,
    this.dataDisk,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final addressValue = address;
    if (addressValue != null) {
      map['address'] = addressValue;
    }
    final caCertDataValue = caCertData;
    if (caCertDataValue != null) {
      map['caCertData'] = caCertDataValue;
    }
    final clusterValue = cluster;
    if (clusterValue != null) {
      map['cluster'] = clusterValue;
    }
    final dataDiskValue = dataDisk;
    if (dataDiskValue != null) {
      map['dataDisk'] = dataDiskValue;
    }
    final datacenterValue = datacenter;
    if (datacenterValue != null) {
      map['datacenter'] = datacenterValue;
    }
    final datastoreValue = datastore;
    if (datastoreValue != null) {
      map['datastore'] = datastoreValue;
    }
    final folderValue = folder;
    if (folderValue != null) {
      map['folder'] = folderValue;
    }
    final resourcePoolValue = resourcePool;
    if (resourcePoolValue != null) {
      map['resourcePool'] = resourcePoolValue;
    }
    final storagePolicyNameValue = storagePolicyName;
    if (storagePolicyNameValue != null) {
      map['storagePolicyName'] = storagePolicyNameValue;
    }
    return map;
  }

  factory VmwareAdminClusterVcenter.fromMap(Map<String, dynamic> map) {
    return VmwareAdminClusterVcenter(
      address: map['address'] == null ? null : map['address'] as String,
      caCertData:
          map['caCertData'] == null ? null : map['caCertData'] as String,
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      dataDisk: map['dataDisk'] == null ? null : map['dataDisk'] as String,
      datacenter:
          map['datacenter'] == null ? null : map['datacenter'] as String,
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      resourcePool:
          map['resourcePool'] == null ? null : map['resourcePool'] as String,
      storagePolicyName: map['storagePolicyName'] == null
          ? null
          : map['storagePolicyName'] as String,
    );
  }
}
