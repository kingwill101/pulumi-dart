// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_defaults_vmmigration_v1alpha1.dart';
import 'persistent_disk_defaults_vmmigration_v1alpha1.dart';

/// ComputeEngineDisksTargetDefaults is a collection of details for creating Persistent Disks in a target Compute Engine project.
class ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1 {
  /// The details of each Persistent Disk to create.
  final List<PersistentDiskDefaultsVmmigrationV1alpha1>? disks;
  /// Details of the disk only migration target.
  final Map<String, dynamic>? disksTargetDefaults;
  /// The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  final String? targetProject;
  /// Details of the VM migration target.
  final DisksMigrationVmTargetDefaultsVmmigrationV1alpha1? vmTargetDefaults;
  /// The zone in which to create the Persistent Disks.
  final String? zone;

  /// Creates a new [ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1].
  /// [disks] The details of each Persistent Disk to create.
  /// [disksTargetDefaults] Details of the disk only migration target.
  /// [targetProject] The full path of the resource of type TargetProject which represents the Compute Engine project in which to create the Persistent Disks.
  /// [vmTargetDefaults] Details of the VM migration target.
  /// [zone] The zone in which to create the Persistent Disks.
  ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1({
    this.disks,
    this.disksTargetDefaults,
    this.targetProject,
    this.vmTargetDefaults,
    this.zone,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disks': ?disks == null ? null : pulumi.Input.encodeList<PersistentDiskDefaultsVmmigrationV1alpha1, Map<String, dynamic>>(disks!, (value) => value.toMap()),
      'disksTargetDefaults': ?disksTargetDefaults,
      'targetProject': ?targetProject,
      'vmTargetDefaults': ?vmTargetDefaults == null ? null : vmTargetDefaults!.toMap(),
      'zone': ?zone,
    };
  }

  factory ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1.fromMap(Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDefaultsVmmigrationV1alpha1(
      disks: map['disks'] == null ? null : pulumi.Input.decodeList<PersistentDiskDefaultsVmmigrationV1alpha1>(map['disks'], (value) => PersistentDiskDefaultsVmmigrationV1alpha1.fromMap((value as Map).cast<String, dynamic>())),
      disksTargetDefaults: map['disksTargetDefaults'] == null ? null : (map['disksTargetDefaults'] as Map).cast<String, dynamic>(),
      targetProject: map['targetProject'] == null ? null : map['targetProject'] as String,
      vmTargetDefaults: map['vmTargetDefaults'] == null ? null : DisksMigrationVmTargetDefaultsVmmigrationV1alpha1.fromMap((map['vmTargetDefaults'] as Map).cast<String, dynamic>()),
      zone: map['zone'] == null ? null : map['zone'] as String,
    );
  }
}

