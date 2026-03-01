// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_dataprotection_backup_instance_disk_backup_instance_disk_args_doc}
/// The set of arguments for BackupInstanceDisk.
/// {@endtemplate}
/// {@macro pulumi_dataprotection_backup_instance_disk_backup_instance_disk_args_doc}
class BackupInstanceDiskArgs {
  /// The ID of the Backup Policy.
  final pulumi.Input<String> backupPolicyId;
  /// The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String> diskId;
  /// The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? location;
  /// The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? name;
  /// The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String> snapshotResourceGroupName;
  /// The subscription ID of the Resource Group where snapshots are stored. The default value is the subscription ID of the Backup Vault. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String>? snapshotSubscriptionId;
  /// The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  final pulumi.Input<String> vaultId;

  /// Creates a new [BackupInstanceDiskArgs].
  /// [backupPolicyId] The ID of the Backup Policy.
  /// [diskId] The ID of the source Disk. Changing this forces a new Backup Instance Disk to be created.
  /// [location] The Azure Region where the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  /// [name] The name which should be used for this Backup Instance Disk. Changing this forces a new Backup Instance Disk to be created.
  /// [snapshotResourceGroupName] The name of the Resource Group where snapshots are stored. Changing this forces a new Backup Instance Disk to be created.
  /// [snapshotSubscriptionId] The subscription ID of the Resource Group where snapshots are stored. The default value is the subscription ID of the Backup Vault. Changing this forces a new Backup Instance Disk to be created.
  /// [vaultId] The ID of the Backup Vault within which the Backup Instance Disk should exist. Changing this forces a new Backup Instance Disk to be created.
  BackupInstanceDiskArgs({
    required String backupPolicyId,
    required String diskId,
    String? location,
    String? name,
    required String snapshotResourceGroupName,
    String? snapshotSubscriptionId,
    required String vaultId,
  }) :
      backupPolicyId = pulumi.Input.asInput<String>(backupPolicyId),
      diskId = pulumi.Input.asInput<String>(diskId),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      snapshotResourceGroupName = pulumi.Input.asInput<String>(snapshotResourceGroupName),
      snapshotSubscriptionId = pulumi.Input.asOptionalInput<String>(snapshotSubscriptionId),
      vaultId = pulumi.Input.asInput<String>(vaultId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupPolicyId': backupPolicyId,
      'diskId': diskId,
      'location': ?location,
      'name': ?name,
      'snapshotResourceGroupName': snapshotResourceGroupName,
      'snapshotSubscriptionId': ?snapshotSubscriptionId,
      'vaultId': vaultId,
    };
  }

  factory BackupInstanceDiskArgs.fromMap(Map<String, dynamic> map) {
    return BackupInstanceDiskArgs(
      backupPolicyId: map['backupPolicyId'] as String,
      diskId: map['diskId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      snapshotResourceGroupName: map['snapshotResourceGroupName'] as String,
      snapshotSubscriptionId: map['snapshotSubscriptionId'] == null ? null : map['snapshotSubscriptionId'] as String,
      vaultId: map['vaultId'] as String,
    );
  }
}

