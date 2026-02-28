// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'disks_migration_vm_target_details_response_vmmigration_v1alpha1.dart';
import 'persistent_disk_response_vmmigration_v1alpha1.dart';

/// ComputeEngineDisksTargetDetails is a collection of created Persistent Disks details.
class ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1 {
  /// The details of each created Persistent Disk.
  final List<PersistentDiskResponseVmmigrationV1alpha1> disks;

  /// Details of the disks-only migration target.
  final Map<String, dynamic> disksTargetDetails;

  /// Details for the VM the migrated data disks are attached to.
  final DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1
      vmTargetDetails;

  /// Creates a new [ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1].
  /// [disks] The details of each created Persistent Disk.
  /// [disksTargetDetails] Details of the disks-only migration target.
  /// [vmTargetDetails] Details for the VM the migrated data disks are attached to.
  ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1({
    required this.disks,
    required this.disksTargetDetails,
    required this.vmTargetDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disks'] = pulumi.Input.encodeList<
        PersistentDiskResponseVmmigrationV1alpha1,
        Map<String, dynamic>>(disks, (value) => value.toMap());
    map['disksTargetDetails'] = disksTargetDetails;
    map['vmTargetDetails'] = vmTargetDetails.toMap();
    return map;
  }

  factory ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1.fromMap(
      Map<String, dynamic> map) {
    return ComputeEngineDisksTargetDetailsResponseVmmigrationV1alpha1(
      disks: pulumi.Input.decodeList<PersistentDiskResponseVmmigrationV1alpha1>(
          map['disks'],
          (value) => PersistentDiskResponseVmmigrationV1alpha1.fromMap(
              (value as Map).cast<String, dynamic>())),
      disksTargetDetails:
          (map['disksTargetDetails'] as Map).cast<String, dynamic>(),
      vmTargetDetails:
          DisksMigrationVmTargetDetailsResponseVmmigrationV1alpha1.fromMap(
              (map['vmTargetDetails'] as Map).cast<String, dynamic>()),
    );
  }
}
