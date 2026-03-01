// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_disk_response.dart';

/// Defines the resource properties.
class StorageProfileResponse {
  /// Gets or sets the list of virtual disks associated with the virtual machine.
  final List<VirtualDiskResponse>? disks;

  /// Creates a new [StorageProfileResponse].
  /// [disks] Gets or sets the list of virtual disks associated with the virtual machine.
  StorageProfileResponse({
    this.disks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<VirtualDiskResponse>(map['disks'], (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

