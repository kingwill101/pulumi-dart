// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
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

  /// Creates a new [ComputeEngineDisksTargetDetailsResponse].
  /// [disks] The details of each created Persistent Disk.
  /// [disksTargetDetails] Details of the disks-only migration target.
  /// [vmTargetDetails] Details for the VM the migrated data disks are attached to.
  ComputeEngineDisksTargetDetailsResponse({
    required this.disks,
    required this.disksTargetDetails,
    required this.vmTargetDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': pulumi.Input.encodeList<PersistentDiskResponse, Map<String, dynamic>>(disks, (value) => value.toMap()),
      'disksTargetDetails': disksTargetDetails,
      'vmTargetDetails': vmTargetDetails.toMap(),
    };
  }

  factory ComputeEngineDisksTargetDetailsResponse.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDetailsResponse(
      disks: pulumi.Input.decodeList<PersistentDiskResponse>(map['disks'], (value) => PersistentDiskResponse.fromMap((value as Map).cast<String, dynamic>())),
      disksTargetDetails: (map['disksTargetDetails'] as Map).cast<String, dynamic>(),
      vmTargetDetails: DisksMigrationVmTargetDetailsResponse.fromMap((map['vmTargetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}

