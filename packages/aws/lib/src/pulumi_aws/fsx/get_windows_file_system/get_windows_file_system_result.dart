// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_windows_file_system_audit_log_configuration/get_windows_file_system_audit_log_configuration.dart';
import '../get_windows_file_system_disk_iops_configuration/get_windows_file_system_disk_iops_configuration.dart';

/// Result data returned by getWindowsFileSystem.
class GetWindowsFileSystemResult {
  /// The ID for Microsoft Active Directory instance that the file system is join to.
  final String activeDirectoryId;

  /// An array DNS alias names associated with the Amazon FSx file system.
  final List<String> aliases;

  /// Amazon Resource Name of the file system.
  final String arn;

  /// The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system.
  final List<GetWindowsFileSystemAuditLogConfiguration> auditLogConfigurations;

  /// The number of days to retain automatic backups.
  final int automaticBackupRetentionDays;
  final String backupId;

  /// A boolean flag indicating whether tags on the file system should be copied to backups.
  final bool copyTagsToBackups;

  /// The preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final String dailyAutomaticBackupStartTime;

  /// The file system deployment type.
  final String deploymentType;

  /// The SSD IOPS configuration for the file system.
  final List<GetWindowsFileSystemDiskIopsConfiguration> diskIopsConfigurations;

  /// DNS name for the file system (e.g. `fs-12345678.corp.example.com`).
  final String dnsName;

  /// Identifier of the file system (e.g. `fs-12345678`).
  final String id;

  /// ARN for the KMS Key to encrypt the file system at rest.
  final String kmsKeyId;
  final List<String> networkInterfaceIds;

  /// AWS account identifier that created the file system.
  final String ownerId;

  /// The IP address of the primary, or preferred, file server.
  final String preferredFileServerIp;

  /// Specifies the subnet in which you want the preferred file server to be located.
  final String preferredSubnetId;
  final String region;
  final List<String> securityGroupIds;
  final bool skipFinalBackup;

  /// The storage capacity of the file system in gibibytes (GiB).
  final int storageCapacity;

  /// The type of storage the file system is using. If set to `SSD`, the file system uses solid state drive storage. If set to `HDD`, the file system uses hard disk drive storage.
  final String storageType;

  /// Specifies the IDs of the subnets that the file system is accessible from.
  final List<String> subnetIds;

  /// The tags to associate with the file system.
  final Map<String, String> tags;

  /// Throughput (megabytes per second) of the file system in power of 2 increments. Minimum of <span pulumi-lang-nodejs="`8`" pulumi-lang-dotnet="`8`" pulumi-lang-go="`8`" pulumi-lang-python="`8`" pulumi-lang-yaml="`8`" pulumi-lang-java="`8`">`8`</span> and maximum of <span pulumi-lang-nodejs="`2048`" pulumi-lang-dotnet="`2048`" pulumi-lang-go="`2048`" pulumi-lang-python="`2048`" pulumi-lang-yaml="`2048`" pulumi-lang-java="`2048`">`2048`</span>.
  final int throughputCapacity;

  /// The ID of the primary virtual private cloud (VPC) for the file system.
  final String vpcId;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final String weeklyMaintenanceStartTime;

  GetWindowsFileSystemResult({
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
    final map = <String, dynamic>{};
    map['activeDirectoryId'] = activeDirectoryId;
    map['aliases'] = aliases;
    map['arn'] = arn;
    map['auditLogConfigurations'] = Input.encodeList<
        GetWindowsFileSystemAuditLogConfiguration,
        Map<String, dynamic>>(auditLogConfigurations, (value) => value.toMap());
    map['automaticBackupRetentionDays'] = automaticBackupRetentionDays;
    map['backupId'] = backupId;
    map['copyTagsToBackups'] = copyTagsToBackups;
    map['dailyAutomaticBackupStartTime'] = dailyAutomaticBackupStartTime;
    map['deploymentType'] = deploymentType;
    map['diskIopsConfigurations'] = Input.encodeList<
        GetWindowsFileSystemDiskIopsConfiguration,
        Map<String, dynamic>>(diskIopsConfigurations, (value) => value.toMap());
    map['dnsName'] = dnsName;
    map['id'] = id;
    map['kmsKeyId'] = kmsKeyId;
    map['networkInterfaceIds'] = networkInterfaceIds;
    map['ownerId'] = ownerId;
    map['preferredFileServerIp'] = preferredFileServerIp;
    map['preferredSubnetId'] = preferredSubnetId;
    map['region'] = region;
    map['securityGroupIds'] = securityGroupIds;
    map['skipFinalBackup'] = skipFinalBackup;
    map['storageCapacity'] = storageCapacity;
    map['storageType'] = storageType;
    map['subnetIds'] = subnetIds;
    map['tags'] = tags;
    map['throughputCapacity'] = throughputCapacity;
    map['vpcId'] = vpcId;
    map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTime;
    return map;
  }

  factory GetWindowsFileSystemResult.fromMap(Map<String, dynamic> map) {
    return GetWindowsFileSystemResult(
      activeDirectoryId: map['activeDirectoryId'] as String,
      aliases: (map['aliases'] as List).cast<String>(),
      arn: map['arn'] as String,
      auditLogConfigurations:
          Input.decodeList<GetWindowsFileSystemAuditLogConfiguration>(
              map['auditLogConfigurations'],
              (value) => GetWindowsFileSystemAuditLogConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] as int,
      backupId: map['backupId'] as String,
      copyTagsToBackups: map['copyTagsToBackups'] as bool,
      dailyAutomaticBackupStartTime:
          map['dailyAutomaticBackupStartTime'] as String,
      deploymentType: map['deploymentType'] as String,
      diskIopsConfigurations:
          Input.decodeList<GetWindowsFileSystemDiskIopsConfiguration>(
              map['diskIopsConfigurations'],
              (value) => GetWindowsFileSystemDiskIopsConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      dnsName: map['dnsName'] as String,
      id: map['id'] as String,
      kmsKeyId: map['kmsKeyId'] as String,
      networkInterfaceIds: (map['networkInterfaceIds'] as List).cast<String>(),
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
