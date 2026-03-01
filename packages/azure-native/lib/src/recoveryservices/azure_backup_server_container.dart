// ignore_for_file: unused_element, unnecessary_cast

import 'dpmcontainer_extended_info.dart';

/// AzureBackupServer (DPMVenus) workload-specific protection container.
class AzureBackupServerContainer {
  /// Type of backup management for the container.
  final String? backupManagementType;
  /// Specifies whether the container is re-registrable.
  final bool? canReRegister;
  /// ID of container.
  final String? containerId;
  /// Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// Classic Compute Azure VM is Microsoft.ClassicCompute/virtualMachines 3. Windows machines (like MAB, DPM etc) is
  /// Windows 4. Azure SQL instance is AzureSqlContainer. 5. Storage containers is StorageContainer. 6. Azure workload
  /// Backup is VMAppContainer
  /// Expected value is 'AzureBackupServerContainer'.
  final String containerType;
  /// Backup engine Agent version
  final String? dpmAgentVersion;
  /// List of BackupEngines protecting the container
  final List<String>? dpmServers;
  /// Extended Info of the container.
  final DPMContainerExtendedInfo? extendedInfo;
  /// Friendly name of the container.
  final String? friendlyName;
  /// Status of health of the container.
  final String? healthStatus;
  /// Type of the protectable object associated with this container
  final String? protectableObjectType;
  /// Number of protected items in the BackupEngine
  final double? protectedItemCount;
  /// Protection status of the container.
  final String? protectionStatus;
  /// Status of registration of the container with the Recovery Services Vault.
  final String? registrationStatus;
  /// To check if upgrade available
  final bool? upgradeAvailable;

  /// Creates a new [AzureBackupServerContainer].
  /// [backupManagementType] Type of backup management for the container.
  /// [canReRegister] Specifies whether the container is re-registrable.
  /// [containerId] ID of container.
  /// [containerType] Type of the container. The value of this property for: 1. Compute Azure VM is Microsoft.Compute/virtualMachines 2.
  /// [dpmAgentVersion] Backup engine Agent version
  /// [dpmServers] List of BackupEngines protecting the container
  /// [extendedInfo] Extended Info of the container.
  /// [friendlyName] Friendly name of the container.
  /// [healthStatus] Status of health of the container.
  /// [protectableObjectType] Type of the protectable object associated with this container
  /// [protectedItemCount] Number of protected items in the BackupEngine
  /// [protectionStatus] Protection status of the container.
  /// [registrationStatus] Status of registration of the container with the Recovery Services Vault.
  /// [upgradeAvailable] To check if upgrade available
  AzureBackupServerContainer({
    this.backupManagementType,
    this.canReRegister,
    this.containerId,
    required this.containerType,
    this.dpmAgentVersion,
    this.dpmServers,
    this.extendedInfo,
    this.friendlyName,
    this.healthStatus,
    this.protectableObjectType,
    this.protectedItemCount,
    this.protectionStatus,
    this.registrationStatus,
    this.upgradeAvailable,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupManagementType': ?backupManagementType,
      'canReRegister': ?canReRegister,
      'containerId': ?containerId,
      'containerType': containerType,
      'dpmAgentVersion': ?dpmAgentVersion,
      'dpmServers': ?dpmServers,
      'extendedInfo': ?extendedInfo == null ? null : extendedInfo!.toMap(),
      'friendlyName': ?friendlyName,
      'healthStatus': ?healthStatus,
      'protectableObjectType': ?protectableObjectType,
      'protectedItemCount': ?protectedItemCount,
      'protectionStatus': ?protectionStatus,
      'registrationStatus': ?registrationStatus,
      'upgradeAvailable': ?upgradeAvailable,
    };
  }

  factory AzureBackupServerContainer.fromMap(Map<String, dynamic> map) {
    return AzureBackupServerContainer(
      backupManagementType: map['backupManagementType'] == null ? null : map['backupManagementType'] as String,
      canReRegister: map['canReRegister'] == null ? null : map['canReRegister'] as bool,
      containerId: map['containerId'] == null ? null : map['containerId'] as String,
      containerType: map['containerType'] as String,
      dpmAgentVersion: map['dpmAgentVersion'] == null ? null : map['dpmAgentVersion'] as String,
      dpmServers: map['dpmServers'] == null ? null : (map['dpmServers'] as List).cast<String>(),
      extendedInfo: map['extendedInfo'] == null ? null : DPMContainerExtendedInfo.fromMap((map['extendedInfo'] as Map).cast<String, dynamic>()),
      friendlyName: map['friendlyName'] == null ? null : map['friendlyName'] as String,
      healthStatus: map['healthStatus'] == null ? null : map['healthStatus'] as String,
      protectableObjectType: map['protectableObjectType'] == null ? null : map['protectableObjectType'] as String,
      protectedItemCount: map['protectedItemCount'] == null ? null : map['protectedItemCount'] as double,
      protectionStatus: map['protectionStatus'] == null ? null : map['protectionStatus'] as String,
      registrationStatus: map['registrationStatus'] == null ? null : map['registrationStatus'] as String,
      upgradeAvailable: map['upgradeAvailable'] == null ? null : map['upgradeAvailable'] as bool,
    );
  }
}

