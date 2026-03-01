// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_disk_response.dart';
import 'virtual_scsicontroller_response.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfileResponse {
  /// Gets or sets the list of virtual disks associated with the virtual machine.
  final List<VirtualDiskResponse>? disks;
  /// Gets or sets the list of virtual SCSI controllers associated with the virtual machine.
  final List<VirtualSCSIControllerResponse> scsiControllers;

  /// Creates a new [StorageProfileResponse].
  /// [disks] Gets or sets the list of virtual disks associated with the virtual machine.
  /// [scsiControllers] Gets or sets the list of virtual SCSI controllers associated with the virtual machine.
  StorageProfileResponse({
    this.disks,
    required this.scsiControllers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<VirtualDiskResponse, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'scsiControllers': pulumi.Input.encodeList<VirtualSCSIControllerResponse, Map<String, dynamic>>(scsiControllers, (value) => value.toMap()),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<VirtualDiskResponse>(map['disks'], (value) => VirtualDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      scsiControllers: pulumi.Input.decodeList<VirtualSCSIControllerResponse>(map['scsiControllers'], (value) => VirtualSCSIControllerResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

