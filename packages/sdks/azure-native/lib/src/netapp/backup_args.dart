// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_netapp_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_netapp_backup_args_doc}
class BackupArgs {
  /// The name of the NetApp account
  final pulumi.Input<String> accountName;
  /// The name of the backup
  final pulumi.Input<String>? backupName;
  /// The name of the Backup Vault
  final pulumi.Input<String> backupVaultName;
  /// Label for backup
  final pulumi.Input<String>? label;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the snapshot
  final pulumi.Input<String>? snapshotName;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  final pulumi.Input<bool>? useExistingSnapshot;
  /// ResourceId used to identify the Volume
  final pulumi.Input<String> volumeResourceId;

  /// Creates a new [BackupArgs].
  /// [accountName] The name of the NetApp account
  /// [backupName] The name of the backup
  /// [backupVaultName] The name of the Backup Vault
  /// [label] Label for backup
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [snapshotName] The name of the snapshot
  /// [useExistingSnapshot] Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  /// [volumeResourceId] ResourceId used to identify the Volume
  BackupArgs({
    required pulumi.Output<String> accountName,
    pulumi.Output<String>? backupName,
    required pulumi.Output<String> backupVaultName,
    pulumi.Output<String>? label,
    required pulumi.Output<String> resourceGroupName,
    pulumi.Output<String>? snapshotName,
    pulumi.Output<bool>? useExistingSnapshot,
    required pulumi.Output<String> volumeResourceId,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      backupName = pulumi.Input.asOptionalInput<String>(backupName),
      backupVaultName = pulumi.Input.asInput<String>(backupVaultName),
      label = pulumi.Input.asOptionalInput<String>(label),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      snapshotName = pulumi.Input.asOptionalInput<String>(snapshotName),
      useExistingSnapshot = pulumi.Input.asOptionalInput<bool>(useExistingSnapshot),
      volumeResourceId = pulumi.Input.asInput<String>(volumeResourceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'backupName': ?backupName,
      'backupVaultName': backupVaultName,
      'label': ?label,
      'resourceGroupName': resourceGroupName,
      'snapshotName': ?snapshotName,
      'useExistingSnapshot': ?useExistingSnapshot,
      'volumeResourceId': volumeResourceId,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      backupName: map['backupName'] == null ? null : pulumi.Output.create<String>(map['backupName'] as String),
      backupVaultName: pulumi.Output.create<String>(map['backupVaultName'] as String),
      label: map['label'] == null ? null : pulumi.Output.create<String>(map['label'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      snapshotName: map['snapshotName'] == null ? null : pulumi.Output.create<String>(map['snapshotName'] as String),
      useExistingSnapshot: map['useExistingSnapshot'] == null ? null : pulumi.Output.create<bool>(map['useExistingSnapshot'] as bool),
      volumeResourceId: pulumi.Output.create<String>(map['volumeResourceId'] as String),
    );
  }
}

