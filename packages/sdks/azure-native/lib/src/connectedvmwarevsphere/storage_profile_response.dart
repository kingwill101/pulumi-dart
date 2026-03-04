// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_disk_response.dart';
import 'virtual_scsicontroller_response.dart';

/// Specifies the storage settings for the virtual machine disks.
class StorageProfileResponse {
  /// Gets or sets the list of virtual disks associated with the virtual machine.
  final pulumi.Input<List<VirtualDiskResponse>>? disks;

  /// Gets or sets the list of virtual SCSI controllers associated with the virtual machine.
  final pulumi.Input<List<VirtualSCSIControllerResponse>> scsiControllers;

  /// Creates a new [StorageProfileResponse].
  /// [disks] Gets or sets the list of virtual disks associated with the virtual machine.
  /// [scsiControllers] Gets or sets the list of virtual SCSI controllers associated with the virtual machine.
  StorageProfileResponse({this.disks, required this.scsiControllers});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks':
          ?pulumi.Input.mapOptionalInputValue<
            List<VirtualDiskResponse>,
            List<Map<String, dynamic>>
          >(
            disks,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualDiskResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'scsiControllers':
          pulumi.Input.mapInputValue<
            List<VirtualSCSIControllerResponse>,
            List<Map<String, dynamic>>
          >(
            scsiControllers,
            (value) =>
                pulumi.Input.encodeList<
                  VirtualSCSIControllerResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory StorageProfileResponse.fromMap(Map<String, dynamic> map) {
    return StorageProfileResponse(
      disks: (() {
        final guardedValue = map['disks'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<VirtualDiskResponse>(
            guardedValue,
            (value) => VirtualDiskResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      scsiControllers: pulumi.Input.fromValue(
        pulumi.Input.decodeList<VirtualSCSIControllerResponse>(
          map['scsiControllers']!,
          (value) => VirtualSCSIControllerResponse.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
