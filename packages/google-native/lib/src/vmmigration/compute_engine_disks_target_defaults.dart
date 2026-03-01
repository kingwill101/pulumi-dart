// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_defaults.dart';
import 'persistent_disk_defaults.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaults {
  /// The details of each Persistent Disk to create.
  final List<PersistentDiskDefaults>? disks;

  /// Details of the disk only migration target.
  final Map<String, dynamic>? disksTargetDefaults;

  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final String? targetProject;

  /// Details of the VM migration target.
  final DisksMigrationVmTargetDefaults? vmTargetDefaults;

  /// The zone in which to create the Persistent Disks.
  final String? zone;

  /// Creates a new [ComputeEngineDisksTargetDefaults].
  /// [disks] The details of each Persistent Disk to create.
  /// [disksTargetDefaults] Details of the disk only migration target.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  /// [vmTargetDefaults] Details of the VM migration target.
  /// [zone] The zone in which to create the Persistent Disks.
  ComputeEngineDisksTargetDefaults({
    this.disks,
    this.disksTargetDefaults,
    this.targetProject,
    this.vmTargetDefaults,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null
          ? null
          : pulumi.Input.encodeList<
              PersistentDiskDefaults,
              Map<String, dynamic>
            >(disks!, (value) => value.toMap()),
      'disksTargetDefaults': ?disksTargetDefaults,
      'targetProject': ?targetProject,
      'vmTargetDefaults': ?vmTargetDefaults == null
          ? null
          : vmTargetDefaults!.toMap(),
      'zone': ?zone,
    };
  }

  factory ComputeEngineDisksTargetDefaults.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaults(
      disks: map['disks'] == null
          ? null
          : pulumi.Input.decodeList<PersistentDiskDefaults>(
              map['disks'],
              (value) => PersistentDiskDefaults.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      disksTargetDefaults: map['disksTargetDefaults'] == null
          ? null
          : (map['disksTargetDefaults'] as Map).cast<String, dynamic>(),
      targetProject: map['targetProject'] == null
          ? null
          : map['targetProject'] as String,
      vmTargetDefaults: map['vmTargetDefaults'] == null
          ? null
          : DisksMigrationVmTargetDefaults.fromMap(
              (map['vmTargetDefaults'] as Map).cast<String, dynamic>(),
            ),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}
