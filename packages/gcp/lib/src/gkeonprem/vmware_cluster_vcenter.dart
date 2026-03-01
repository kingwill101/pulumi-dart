// ignore_for_file: unused_element, unnecessary_cast


class VMwareClusterVcenter {
  /// (Output)
  /// The vCenter IP address.
  final String? address;
  /// Contains the vCenter CA certificate public key for SSL verification.
  final String? caCertData;
  /// The name of the vCenter cluster for the user cluster.
  final String? cluster;
  /// The name of the vCenter datacenter for the user cluster.
  final String? datacenter;
  /// The name of the vCenter datastore for the user cluster.
  final String? datastore;
  /// The name of the vCenter folder for the user cluster.
  final String? folder;
  /// The name of the vCenter resource pool for the user cluster.
  final String? resourcePool;
  /// The name of the vCenter storage policy for the user cluster.
  final String? storagePolicyName;

  /// Creates a new [VMwareClusterVcenter].
  /// [address] (Output)
  /// [caCertData] Contains the vCenter CA certificate public key for SSL verification.
  /// [cluster] The name of the vCenter cluster for the user cluster.
  /// [datacenter] The name of the vCenter datacenter for the user cluster.
  /// [datastore] The name of the vCenter datastore for the user cluster.
  /// [folder] The name of the vCenter folder for the user cluster.
  /// [resourcePool] The name of the vCenter resource pool for the user cluster.
  /// [storagePolicyName] The name of the vCenter storage policy for the user cluster.
  VMwareClusterVcenter({
    this.address,
    this.caCertData,
    this.cluster,
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
    this.storagePolicyName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': ?address,
      'caCertData': ?caCertData,
      'cluster': ?cluster,
      'datacenter': ?datacenter,
      'datastore': ?datastore,
      'folder': ?folder,
      'resourcePool': ?resourcePool,
      'storagePolicyName': ?storagePolicyName,
    };
  }

  factory VMwareClusterVcenter.fromMap(Map<String, dynamic> map) {
    return VMwareClusterVcenter(
      address: map['address'] == null ? null : map['address'] as String,
      caCertData: map['caCertData'] == null ? null : map['caCertData'] as String,
      cluster: map['cluster'] == null ? null : map['cluster'] as String,
      datacenter: map['datacenter'] == null ? null : map['datacenter'] as String,
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      resourcePool: map['resourcePool'] == null ? null : map['resourcePool'] as String,
      storagePolicyName: map['storagePolicyName'] == null ? null : map['storagePolicyName'] as String,
    );
  }
}

