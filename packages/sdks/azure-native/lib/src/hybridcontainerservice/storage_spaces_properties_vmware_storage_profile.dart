// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesVmwareStorageProfile {
  /// Name of the datacenter in VSphere
  final pulumi.Input<String>? datacenter;
  /// Name of the datastore in VSphere
  final pulumi.Input<String>? datastore;
  /// Name of the folder in VSphere
  final pulumi.Input<String>? folder;
  /// Name of the resource pool in VSphere
  final pulumi.Input<String>? resourcePool;

  /// Creates a new [StorageSpacesPropertiesVmwareStorageProfile].
  /// [datacenter] Name of the datacenter in VSphere
  /// [datastore] Name of the datastore in VSphere
  /// [folder] Name of the folder in VSphere
  /// [resourcePool] Name of the resource pool in VSphere
  StorageSpacesPropertiesVmwareStorageProfile({
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

  factory StorageSpacesPropertiesVmwareStorageProfile.fromMap(Map<String, dynamic> map) {
    return StorageSpacesPropertiesVmwareStorageProfile(
      datacenter: map['datacenter'] == null ? null : (map['datacenter']! as String).input(),
      datastore: map['datastore'] == null ? null : (map['datastore']! as String).input(),
      folder: map['folder'] == null ? null : (map['folder']! as String).input(),
      resourcePool: map['resourcePool'] == null ? null : (map['resourcePool']! as String).input(),
    );
  }
}

