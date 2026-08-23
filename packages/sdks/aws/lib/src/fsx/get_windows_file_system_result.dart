// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_windows_file_system_audit_log_configuration.dart';
import 'get_windows_file_system_disk_iops_configuration.dart';

/// Result data returned by getWindowsFileSystem.
class GetWindowsFileSystemResult {
  /// ID for Microsoft Active Directory instance that the file system is joined to.
  final String activeDirectoryId;
  /// Set of DNS alias names associated with the Amazon FSx file system.
  final List<String> aliases;
  /// Amazon Resource Name of the file system.
  final String arn;
  /// Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system.
  final List<GetWindowsFileSystemAuditLogConfiguration> auditLogConfigurations;
  /// Number of days to retain automatic backups.
  final int automaticBackupRetentionDays;
  /// Identifier of the source backup used to create the file system.
  final String backupId;
  /// Whether tags on the file system are copied to backups.
  final bool copyTagsToBackups;
  /// Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final String dailyAutomaticBackupStartTime;
  /// File system deployment type.
  final String deploymentType;
  /// SSD IOPS configuration for the file system.
  final List<GetWindowsFileSystemDiskIopsConfiguration> diskIopsConfigurations;
  /// DNS name for the file system (e.g. `fs-12345678.corp.example.com`).
  final String dnsName;
  /// Identifier of the file system (e.g. `fs-12345678`).
  final String id;
  /// ARN for the KMS Key to encrypt the file system at rest.
  final String kmsKeyId;
  /// Set of network interface identifiers for the file system.
  final List<String> networkInterfaceIds;
  /// Network type (`IPV4` or `DUAL`).
  final String networkType;
  /// AWS account identifier that created the file system.
  final String ownerId;
  /// IP address of the primary, or preferred, file server.
  final String preferredFileServerIp;
  /// Subnet in which the preferred file server is located.
  final String preferredSubnetId;
  final String region;
  /// Set of security group identifiers associated with the file system.
  final List<String> securityGroupIds;
  /// Whether a final backup is skipped when the file system is deleted.
  final bool skipFinalBackup;
  /// Storage capacity of the file system in gibibytes (GiB).
  final int storageCapacity;
  /// Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  final String storageType;
  /// IDs of the subnets that the file system is accessible from.
  final List<String> subnetIds;
  /// Tags to associate with the file system.
  final Map<String, String> tags;
  /// Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of `8` and maximum of `2048`.
  final int throughputCapacity;
  /// ID of the primary virtual private cloud (VPC) for the file system.
  final String vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final String weeklyMaintenanceStartTime;

  /// Creates a new [GetWindowsFileSystemResult].
  /// [activeDirectoryId] ID for Microsoft Active Directory instance that the file system is joined to.
  /// [aliases] Set of DNS alias names associated with the Amazon FSx file system.
  /// [arn] Amazon Resource Name of the file system.
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
  /// [region] Required.
  /// [securityGroupIds] Set of security group identifiers associated with the file system.
  /// [skipFinalBackup] Whether a final backup is skipped when the file system is deleted.
  /// [storageCapacity] Storage capacity of the file system in gibibytes (GiB).
  /// [storageType] Type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  /// [subnetIds] IDs of the subnets that the file system is accessible from.
  /// [tags] Tags to associate with the file system.
  /// [throughputCapacity] Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of `8` and maximum of `2048`.
  /// [vpcId] ID of the primary virtual private cloud (VPC) for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const GetWindowsFileSystemResult({
    required this.activeDirectoryId,
    required this.aliases,
    required this.arn,
    required this.auditLogConfigurations,
    required this.automaticBackupRetentionDays,
    required this.backupId,
    required this.copyTagsToBackups,
    required this.dailyAutomaticBackupStartTime,
    required this.deploymentType,
    required this.diskIopsConfigurations,
    required this.dnsName,
    required this.id,
    required this.kmsKeyId,
    required this.networkInterfaceIds,
    required this.networkType,
    required this.ownerId,
    required this.preferredFileServerIp,
    required this.preferredSubnetId,
    required this.region,
    required this.securityGroupIds,
    required this.skipFinalBackup,
    required this.storageCapacity,
    required this.storageType,
    required this.subnetIds,
    required this.tags,
    required this.throughputCapacity,
    required this.vpcId,
    required this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': activeDirectoryId,
      'aliases': aliases,
      'arn': arn,
      'auditLogConfigurations': pulumi.Input.encodeList<GetWindowsFileSystemAuditLogConfiguration, Map<String, dynamic>>(auditLogConfigurations, (value) => value.toMap()),
      'automaticBackupRetentionDays': automaticBackupRetentionDays,
      'backupId': backupId,
      'copyTagsToBackups': copyTagsToBackups,
      'dailyAutomaticBackupStartTime': dailyAutomaticBackupStartTime,
      'deploymentType': deploymentType,
      'diskIopsConfigurations': pulumi.Input.encodeList<GetWindowsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfigurations, (value) => value.toMap()),
      'dnsName': dnsName,
      'id': id,
      'kmsKeyId': kmsKeyId,
      'networkInterfaceIds': networkInterfaceIds,
      'networkType': networkType,
      'ownerId': ownerId,
      'preferredFileServerIp': preferredFileServerIp,
      'preferredSubnetId': preferredSubnetId,
      'region': region,
      'securityGroupIds': securityGroupIds,
      'skipFinalBackup': skipFinalBackup,
      'storageCapacity': storageCapacity,
      'storageType': storageType,
      'subnetIds': subnetIds,
      'tags': tags,
      'throughputCapacity': throughputCapacity,
      'vpcId': vpcId,
      'weeklyMaintenanceStartTime': weeklyMaintenanceStartTime,
    };
  }

  factory GetWindowsFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemResult(
      activeDirectoryId: map['activeDirectoryId'] as String,
      aliases: (map['aliases'] as List).cast<String>(),
      arn: map['arn'] as String,
      auditLogConfigurations: pulumi.Input.decodeList<GetWindowsFileSystemAuditLogConfiguration>(map['auditLogConfigurations']!, (value) => GetWindowsFileSystemAuditLogConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] as int,
      backupId: map['backupId'] as String,
      copyTagsToBackups: map['copyTagsToBackups'] as bool,
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] as String,
      deploymentType: map['deploymentType'] as String,
      diskIopsConfigurations: pulumi.Input.decodeList<GetWindowsFileSystemDiskIopsConfiguration>(map['diskIopsConfigurations']!, (value) => GetWindowsFileSystemDiskIopsConfiguration.fromMap((value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      networkInterfaceIds: (map['networkInterfaceIds'] as List).cast<String>(),
      networkType: map['networkType'] as String,
      ownerId: map['ownerId'] as String,
      preferredFileServerIp: map['preferredFileServerIp'] as String,
      preferredSubnetId: map['preferredSubnetId'] as String,
      region: map['region'] as String,
      securityGroupIds: (map['securityGroupIds'] as List).cast<String>(),
      skipFinalBackup: map['skipFinalBackup'] as bool,
      storageCapacity: map['storageCapacity'] as int,
      storageType: map['storageType'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: (map['tags'] as Map).cast<String, String>(),
      throughputCapacity: map['throughputCapacity'] as int,
      vpcId: map['vpcId'] as String,
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] as String,
    );
  }
}
