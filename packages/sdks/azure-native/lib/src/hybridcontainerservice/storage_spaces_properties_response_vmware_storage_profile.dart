// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StorageSpacesPropertiesResponseVmwareStorageProfile {
  /// Name of the datacenter in VSphere
  final pulumi.Input<String>? datacenter;
  /// Name of the datastore in VSphere
  final pulumi.Input<String>? datastore;
  /// Name of the folder in VSphere
  final pulumi.Input<String>? folder;
  /// Name of the resource pool in VSphere
  final pulumi.Input<String>? resourcePool;

  /// Creates a new [StorageSpacesPropertiesResponseVmwareStorageProfile].
  /// [datacenter] Name of the datacenter in VSphere
  /// [datastore] Name of the datastore in VSphere
  /// [folder] Name of the folder in VSphere
  /// [resourcePool] Name of the resource pool in VSphere
  const StorageSpacesPropertiesResponseVmwareStorageProfile({
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
      datacenter: (() { final guardedValue = map['datacenter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      datastore: (() { final guardedValue = map['datastore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      folder: (() { final guardedValue = map['folder']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourcePool: (() { final guardedValue = map['resourcePool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

