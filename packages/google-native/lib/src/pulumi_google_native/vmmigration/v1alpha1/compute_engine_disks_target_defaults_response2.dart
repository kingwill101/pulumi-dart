// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'disks_migration_vm_target_defaults_response2.dart';
import 'persistent_disk_defaults_response2.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaultsResponse2 {
  /// The details of each Persistent Disk to create.
  final List<PersistentDiskDefaultsResponse2> disks;

  /// Details of the disk only migration target.
  final Map<String, dynamic> disksTargetDefaults;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final String targetProject;

  /// Details of the VM migration target.
  final DisksMigrationVmTargetDefaultsResponse2 vmTargetDefaults;

  /// The zone in which to create the Persistent Disks.
  final String zone;

  ComputeEngineDisksTargetDefaultsResponse2({
    required this.disks,
    required this.disksTargetDefaults,
    required this.targetProject,
    required this.vmTargetDefaults,
    required this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disks'] =
        Input.encodeList<PersistentDiskDefaultsResponse2, Map<String, dynamic>>(
            disks, (value) => value.toMap());
    map['disksTargetDefaults'] = disksTargetDefaults;
    map['targetProject'] = targetProject;
    map['vmTargetDefaults'] = vmTargetDefaults.toMap();
    map['zone'] = zone;
    return map;
  }

  factory ComputeEngineDisksTargetDefaultsResponse2.fromMap(
      Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaultsResponse2(
      disks: Input.decodeList<PersistentDiskDefaultsResponse2>(
          map['disks'],
          (value) => PersistentDiskDefaultsResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      disksTargetDefaults:
          (map['disksTargetDefaults'] as Map).cast<String, dynamic>(),
      targetProject: map['targetProject'] as String,
      vmTargetDefaults: DisksMigrationVmTargetDefaultsResponse2.fromMap(
          (map['vmTargetDefaults'] as Map).cast<String, dynamic>()),
      zone: map['zone'] as String,
    );
  }
}
