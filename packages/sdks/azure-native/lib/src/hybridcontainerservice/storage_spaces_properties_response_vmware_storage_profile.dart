// ignore_for_file: unused_element, unnecessary_cast


class StorageSpacesPropertiesResponseVmwareStorageProfile {
  /// Name of the datacenter in VSphere
  final String? datacenter;
  /// Name of the datastore in VSphere
  final String? datastore;
  /// Name of the folder in VSphere
  final String? folder;
  /// Name of the resource pool in VSphere
  final String? resourcePool;

  /// Creates a new [StorageSpacesPropertiesResponseVmwareStorageProfile].
  /// [datacenter] Name of the datacenter in VSphere
  /// [datastore] Name of the datastore in VSphere
  /// [folder] Name of the folder in VSphere
  /// [resourcePool] Name of the resource pool in VSphere
  StorageSpacesPropertiesResponseVmwareStorageProfile({
    this.datacenter,
    this.datastore,
    this.folder,
    this.resourcePool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'datacenter': ?datacenter,
      'datastore': ?datastore,
      'folder': ?folder,
      'resourcePool': ?resourcePool,
    };
  }

  factory StorageSpacesPropertiesResponseVmwareStorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesResponseVmwareStorageProfile(
      datacenter: map['datacenter'] == null ? null : map['datacenter'] as String,
      datastore: map['datastore'] == null ? null : map['datastore'] as String,
      folder: map['folder'] == null ? null : map['folder'] as String,
      resourcePool: map['resourcePool'] == null ? null : map['resourcePool'] as String,
    );
  }
}

