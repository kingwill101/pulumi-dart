// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disk_restore_point_attributes.dart';
import 'managed_disk_parameters.dart';

/// Describes a data disk.
class RestorePointSourceVMDataDisk {
  /// Contains Disk Restore Point properties.
  final pulumi.Input<DiskRestorePointAttributes>? diskRestorePoint;

  /// Contains the managed disk details.
  final pulumi.Input<ManagedDiskParameters>? managedDisk;

  /// Creates a new [RestorePointSourceVMDataDisk].
  /// [diskRestorePoint] Contains Disk Restore Point properties.
  /// [managedDisk] Contains the managed disk details.
  RestorePointSourceVMDataDisk({this.diskRestorePoint, this.managedDisk});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskRestorePoint':
          ?pulumi.Input.mapOptionalInputValue<
            DiskRestorePointAttributes,
            Map<String, dynamic>
          >(diskRestorePoint, (value) => value.toMap()),
      'managedDisk':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedDiskParameters,
            Map<String, dynamic>
          >(managedDisk, (value) => value.toMap()),
    };
  }

  factory RestorePointSourceVMDataDisk.fromMap(Map<String, dynamic> map) {
    return RestorePointSourceVMDataDisk(
      diskRestorePoint: (() {
        final guardedValue = map['diskRestorePoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DiskRestorePointAttributes.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      managedDisk: (() {
        final guardedValue = map['managedDisk'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedDiskParameters.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
