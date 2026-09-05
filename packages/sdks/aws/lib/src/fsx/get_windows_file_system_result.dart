// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_file_system_audit_log_configuration.dart';
import 'get_windows_file_system_disk_iops_configuration.dart';

/// Result data returned by getWindowsFileSystem.
class GetWindowsFileSystemResult {
  /// ID for Microsoft Active Directory instance that the file system is joined to.
  final String? activeDirectoryId;
  /// Set of DNS alias names associated with the Amazon FSx file system.
  final List<String>? aliases;
  /// ARN of the file system.
  final String? arn;
  /// Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system.
  final List<GetWindowsFileSystemAuditLogConfiguration>? auditLogConfigurations;
  /// Number of days to retain automatic backups.
  final int? automaticBackupRetentionDays;
  /// Identifier of the source backup used to create the file system.
  final String? backupId;
  /// Whether tags on the file system are copied to backups.
  final bool? copyTagsToBackups;
  /// Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final String? dailyAutomaticBackupStartTime;
  /// File system deployment type.
  final String? deploymentType;
  /// SSD IOPS configuration for the file system.
  final List<GetWindowsFileSystemDiskIopsConfiguration>? diskIopsConfigurations;
  /// DNS name for the file system (e.g. `fs-12345678.corp.example.com`).
  final String? dnsName;
  /// Identifier of the file system (e.g. `fs-12345678`).
  final String? id;
  /// ARN for the KMS Key to encrypt the file system at rest.
  final String? kmsKeyId;
  /// Set of network interface identifiers for the file system.
  final List<String>? networkInterfaceIds;
  /// Network type (`IPV4` or `DUAL`).
  final String? networkType;
  /// AWS account identifier that created the file system.
  final String? ownerId;
  /// IP address of the primary, or preferred, file server.
  final String? preferredFileServerIp;
  /// Subnet in which the preferred file server is located.
  final String? preferredSubnetId;
  final String? region;
  /// Set of security group identifiers associated with the file system.
  final List<String>? securityGroupIds;
  /// Whether a final backup is skipped when the file system is deleted.
  final bool? skipFinalBackup;
  /// Storage capacity of the file system in gibibytes (GiB).
  final int? storageCapacity;
  /// Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  final String? storageType;
  /// IDs of the subnets that the file system is accessible from.
  final List<String>? subnetIds;
  /// Tags to associate with the file system.
  final Map<String, String>? tags;
  /// Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of `8` and maximum of `2048`.
  final int? throughputCapacity;
  /// ID of the primary VPC for the file system.
  final String? vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final String? weeklyMaintenanceStartTime;

  /// Creates a new [GetWindowsFileSystemResult].
  /// [activeDirectoryId] ID for Microsoft Active Directory instance that the file system is joined to.
  /// [aliases] Set of DNS alias names associated with the Amazon FSx file system.
  /// [arn] ARN of the file system.
  /// [auditLogConfigurations] Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups.
  /// [backupId] Identifier of the source backup used to create the file system.
  /// [copyTagsToBackups] Whether tags on the file system are copied to backups.
  /// [dailyAutomaticBackupStartTime] Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  /// [deploymentType] File system deployment type.
  /// [diskIopsConfigurations] SSD IOPS configuration for the file system.
  /// [dnsName] DNS name for the file system (e.g. `fs-12345678.corp.example.com`).
  /// [id] Identifier of the file system (e.g. `fs-12345678`).
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest.
  /// [networkInterfaceIds] Set of network interface identifiers for the file system.
  /// [networkType] Network type (`IPV4` or `DUAL`).
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredFileServerIp] IP address of the primary, or preferred, file server.
  /// [preferredSubnetId] Subnet in which the preferred file server is located.
  /// [region] Optional.
  /// [securityGroupIds] Set of security group identifiers associated with the file system.
  /// [skipFinalBackup] Whether a final backup is skipped when the file system is deleted.
  /// [storageCapacity] Storage capacity of the file system in gibibytes (GiB).
  /// [storageType] Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  /// [subnetIds] IDs of the subnets that the file system is accessible from.
  /// [tags] Tags to associate with the file system.
  /// [throughputCapacity] Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of `8` and maximum of `2048`.
  /// [vpcId] ID of the primary VPC for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const GetWindowsFileSystemResult({
    this.activeDirectoryId,
    this.aliases,
    this.arn,
    this.auditLogConfigurations,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.dailyAutomaticBackupStartTime,
    this.deploymentType,
    this.diskIopsConfigurations,
    this.dnsName,
    this.id,
    this.kmsKeyId,
    this.networkInterfaceIds,
    this.networkType,
    this.ownerId,
    this.preferredFileServerIp,
    this.preferredSubnetId,
    this.region,
    this.securityGroupIds,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.throughputCapacity,
    this.vpcId,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': ?activeDirectoryId,
      'aliases': ?aliases,
      'arn': ?arn,
      'auditLogConfigurations': ?(() { final guardedValue = auditLogConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsFileSystemAuditLogConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deploymentType': ?deploymentType,
      'diskIopsConfigurations': ?(() { final guardedValue = diskIopsConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetWindowsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'dnsName': ?dnsName,
      'id': ?id,
      'kmsKeyId': ?kmsKeyId,
      'networkInterfaceIds': ?networkInterfaceIds,
      'networkType': ?networkType,
      'ownerId': ?ownerId,
      'preferredFileServerIp': ?preferredFileServerIp,
      'preferredSubnetId': ?preferredSubnetId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'skipFinalBackup': ?skipFinalBackup,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'throughputCapacity': ?throughputCapacity,
      'vpcId': ?vpcId,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory GetWindowsFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemResult(
      activeDirectoryId: (() { final guardedValue = map['activeDirectoryId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      auditLogConfigurations: (() { final guardedValue = map['auditLogConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsFileSystemAuditLogConfiguration>(guardedValue, (value) => GetWindowsFileSystemAuditLogConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      copyTagsToBackups: (() { final guardedValue = map['copyTagsToBackups']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      diskIopsConfigurations: (() { final guardedValue = map['diskIopsConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetWindowsFileSystemDiskIopsConfiguration>(guardedValue, (value) => GetWindowsFileSystemDiskIopsConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredFileServerIp: (() { final guardedValue = map['preferredFileServerIp']; if (guardedValue == null) return null; return guardedValue as String; })(),
      preferredSubnetId: (() { final guardedValue = map['preferredSubnetId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      skipFinalBackup: (() { final guardedValue = map['skipFinalBackup']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      throughputCapacity: (() { final guardedValue = map['throughputCapacity']; if (guardedValue == null) return null; return (guardedValue as num).toInt(); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
