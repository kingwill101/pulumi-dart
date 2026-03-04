// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_capacity_pool_backup_args_doc}
/// The set of arguments for CapacityPoolBackup.
/// {@endtemplate}
/// {@macro pulumi_netapp_capacity_pool_backup_args_doc}
class CapacityPoolBackupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;

  /// The name of the backup
  final pulumi.Input<String>? backupName;

  /// Label for backup
  final pulumi.Input<String>? label;

  /// Resource location
  final pulumi.Input<String>? location;

  /// The name of the capacity pool
  final pulumi.Input<String> poolName;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  final pulumi.Input<bool>? useExistingSnapshot;

  /// The name of the volume
  final pulumi.Input<String> volumeName;

  /// Creates a new [CapacityPoolBackupArgs].
  /// [accountName] The name of the NetApp account
  /// [backupName] The name of the backup
  /// [label] Label for backup
  /// [location] Resource location
  /// [poolName] The name of the capacity pool
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [useExistingSnapshot] Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  /// [volumeName] The name of the volume
  CapacityPoolBackupArgs({
    required this.accountName,
    this.backupName,
    this.label,
    this.location,
    required this.poolName,
    required this.resourceGroupName,
    this.useExistingSnapshot,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupName': ?backupName,
      'label': ?label,
      'location': ?location,
      'poolName': poolName,
      'resourceGroupName': resourceGroupName,
      'useExistingSnapshot': ?useExistingSnapshot,
      'volumeName': volumeName,
    };
  }

  factory CapacityPoolBackupArgs.fromMap(Map<String, dynamic> map) {
    return CapacityPoolBackupArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      backupName: (() {
        final guardedValue = map['backupName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      label: (() {
        final guardedValue = map['label'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      poolName: pulumi.Input.fromValue(map['poolName'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      useExistingSnapshot: (() {
        final guardedValue = map['useExistingSnapshot'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      volumeName: pulumi.Input.fromValue(map['volumeName'] as String),
    );
  }
}
