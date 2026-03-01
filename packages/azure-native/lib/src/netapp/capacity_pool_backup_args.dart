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
    required String accountName,
    String? backupName,
    String? label,
    String? location,
    required String poolName,
    required String resourceGroupName,
    bool? useExistingSnapshot,
    required String volumeName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      label = pulumi.Input.asOptionalInput<String>(label),
      location = pulumi.Input.asOptionalInput<String>(location),
      poolName = pulumi.Input.asInput<String>(poolName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      useExistingSnapshot = pulumi.Input.asOptionalInput<bool>(useExistingSnapshot),
      volumeName = pulumi.Input.asInput<String>(volumeName);

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
      accountName: map['accountName'] as String,
      backupName: map['backupName'] == null ? null : map['backupName'] as String,
      label: map['label'] == null ? null : map['label'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      poolName: map['poolName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      useExistingSnapshot: map['useExistingSnapshot'] == null ? null : map['useExistingSnapshot'] as bool,
      volumeName: map['volumeName'] as String,
    );
  }
}

