// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'disks_migration_vm_target_details_response.dart';
import 'persistent_disk_response.dart';

/// ComputeEngineDisksTargetDetails is a collection of created Persistent Disks details.
class ComputeEngineDisksTargetDetailsResponse {
  /// The details of each created Persistent Disk.
  final List<PersistentDiskResponse> disks;

  /// Details of the disks-only migration target.
  final Map<String, dynamic> disksTargetDetails;

  /// Details for the VM the migrated data disks are attached to.
  final DisksMigrationVmTargetDetailsResponse vmTargetDetails;

  ComputeEngineDisksTargetDetailsResponse({
    required this.disks,
    required this.disksTargetDetails,
    required this.vmTargetDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disks'] =
        Input.encodeList<PersistentDiskResponse, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['disksTargetDetails'] = disksTargetDetails;
    map['vmTargetDetails'] = vmTargetDetails.toMap();
    return map;
  }

  factory ComputeEngineDisksTargetDetailsResponse.fromMap(
      Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDetailsResponse(
      disks: Input.decodeList<PersistentDiskResponse>(
          map['disks'],
          (value) => PersistentDiskResponse.fromMap(
              (value as Map).cast<String, dynamic>())),
      disksTargetDetails:
          (map['disksTargetDetails'] as Map).cast<String, dynamic>(),
      vmTargetDetails: DisksMigrationVmTargetDetailsResponse.fromMap(
          (map['vmTargetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
