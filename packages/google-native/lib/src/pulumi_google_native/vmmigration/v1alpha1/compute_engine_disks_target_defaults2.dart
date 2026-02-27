// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'disks_migration_vm_target_defaults2.dart';
import 'persistent_disk_defaults2.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaults2 {
  /// The details of each Persistent Disk to create.
  final List<PersistentDiskDefaults2>? disks;

  /// Details of the disk only migration target.
  final Map<String, dynamic>? disksTargetDefaults;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final String? targetProject;

  /// Details of the VM migration target.
  final DisksMigrationVmTargetDefaults2? vmTargetDefaults;

  /// The zone in which to create the Persistent Disks.
  final String? zone;

  ComputeEngineDisksTargetDefaults2({
    this.disks,
    this.disksTargetDefaults,
    this.targetProject,
    this.vmTargetDefaults,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disksValue = disks;
    if (disksValue != null) {
      map['disks'] =
          Input.encodeList<PersistentDiskDefaults2, Map<String, dynamic>>(
              disksValue, (value) => value.toMap());
    }
    final disksTargetDefaultsValue = disksTargetDefaults;
    if (disksTargetDefaultsValue != null) {
      map['disksTargetDefaults'] = disksTargetDefaultsValue;
    }
    final targetProjectValue = targetProject;
    if (targetProjectValue != null) {
      map['targetProject'] = targetProjectValue;
    }
    final vmTargetDefaultsValue = vmTargetDefaults;
    if (vmTargetDefaultsValue != null) {
      map['vmTargetDefaults'] = vmTargetDefaultsValue.toMap();
    }
    final zoneValue = zone;
    if (zoneValue != null) {
      map['zone'] = zoneValue;
    }
    return map;
  }

  factory ComputeEngineDisksTargetDefaults2.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaults2(
      disks: map['disks'] == null
          ? null
          : Input.decodeList<PersistentDiskDefaults2>(
              map['disks'],
              (value) => PersistentDiskDefaults2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      disksTargetDefaults: map['disksTargetDefaults'] == null
          ? null
          : (map['disksTargetDefaults'] as Map).cast<String, dynamic>(),
      targetProject:
          map['targetProject'] == null ? null : map['targetProject'] as String,
      vmTargetDefaults: map['vmTargetDefaults'] == null
          ? null
          : DisksMigrationVmTargetDefaults2.fromMap(
              (map['vmTargetDefaults'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
