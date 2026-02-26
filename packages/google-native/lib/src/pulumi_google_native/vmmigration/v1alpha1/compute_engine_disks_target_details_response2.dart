// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'disks_migration_vm_target_details_response2.dart';
import 'persistent_disk_response2.dart';

/// ComputeEngineDisksTargetDetails is a collection of created Persistent Disks details.
class ComputeEngineDisksTargetDetailsResponse2 {
  /// The details of each created Persistent Disk.
  final List<PersistentDiskResponse2> disks;

  /// Details of the disks-only migration target.
  final Map<String, dynamic> disksTargetDetails;

  /// Details for the VM the migrated data disks are attached to.
  final DisksMigrationVmTargetDetailsResponse2 vmTargetDetails;

  ComputeEngineDisksTargetDetailsResponse2({
    required this.disks,
    required this.disksTargetDetails,
    required this.vmTargetDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disks'] =
        Input.encodeList<PersistentDiskResponse2, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['disksTargetDetails'] = disksTargetDetails;
    map['vmTargetDetails'] = vmTargetDetails.toMap();
    return map;
  }

  factory ComputeEngineDisksTargetDetailsResponse2.fromMap(
      Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDetailsResponse2(
      disks: Input.decodeList<PersistentDiskResponse2>(
          map['disks'],
          (value) => PersistentDiskResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      disksTargetDetails:
          (map['disksTargetDetails'] as Map).cast<String, dynamic>(),
      vmTargetDetails: DisksMigrationVmTargetDetailsResponse2.fromMap(
          (map['vmTargetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
