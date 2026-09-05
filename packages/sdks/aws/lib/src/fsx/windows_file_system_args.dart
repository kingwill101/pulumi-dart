// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_file_system_audit_log_configuration.dart';
import 'windows_file_system_disk_iops_configuration.dart';
import 'windows_file_system_self_managed_active_directory.dart';

/// {@template pulumi_fsx_windows_file_system_windows_file_system_args_doc}
/// The set of arguments for WindowsFileSystem.
/// {@endtemplate}
/// {@macro pulumi_fsx_windows_file_system_windows_file_system_args_doc}
class WindowsFileSystemArgs {
  /// ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `selfManagedActiveDirectory`.
  final pulumi.Input<String?>? activeDirectoryId;
  /// Array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  final pulumi.Input<List<String>?>? aliases;
  /// Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `auditLogConfiguration` Block for details.
  final pulumi.Input<WindowsFileSystemAuditLogConfiguration?>? auditLogConfiguration;
  /// Number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  final pulumi.Input<int?>? automaticBackupRetentionDays;
  /// ID of the source backup to create the filesystem from.
  final pulumi.Input<String?>? backupId;
  /// Whether to copy tags on the file system to backups. Defaults to `false`.
  final pulumi.Input<bool?>? copyTagsToBackups;
  /// Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final pulumi.Input<String?>? dailyAutomaticBackupStartTime;
  /// File system deployment type. Valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  final pulumi.Input<String?>? deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `diskIopsConfiguration` Block for details.
  final pulumi.Input<WindowsFileSystemDiskIopsConfiguration?>? diskIopsConfiguration;
  /// Map of tags to apply to the file system's final backup.
  final pulumi.Input<Map<String, String>?>? finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  final pulumi.Input<String?>? kmsKeyId;
  /// Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  final pulumi.Input<String?>? networkType;
  /// Subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  final pulumi.Input<String?>? preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>?>? securityGroupIds;
  /// Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `activeDirectoryId`. See `selfManagedActiveDirectory` Block for details.
  final pulumi.Input<WindowsFileSystemSelfManagedActiveDirectory?>? selfManagedActiveDirectory;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool?>? skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  final pulumi.Input<int?>? storageCapacity;
  /// Storage type. Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  final pulumi.Input<String?>? storageType;
  /// List of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deploymentType` to `MULTI_AZ_1`.
  final pulumi.Input<List<String>> subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> throughputCapacity;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String?>? weeklyMaintenanceStartTime;

  /// Creates a new [WindowsFileSystemArgs].
  /// [activeDirectoryId] ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `selfManagedActiveDirectory`.
  /// [aliases] Array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  /// [auditLogConfiguration] Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `auditLogConfiguration` Block for details.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  /// [backupId] ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] Whether to copy tags on the file system to backups. Defaults to `false`.
  /// [dailyAutomaticBackupStartTime] Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  /// [deploymentType] File system deployment type. Valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  /// [diskIopsConfiguration] SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `diskIopsConfiguration` Block for details.
  /// [finalBackupTags] Map of tags to apply to the file system's final backup.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  /// [networkType] Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  /// [preferredSubnetId] Subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [selfManagedActiveDirectory] Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `activeDirectoryId`. See `selfManagedActiveDirectory` Block for details.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  /// [storageType] Storage type. Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  /// [subnetIds] List of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deploymentType` to `MULTI_AZ_1`.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputCapacity] Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const WindowsFileSystemArgs({
    this.activeDirectoryId,
    this.aliases,
    this.auditLogConfiguration,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.dailyAutomaticBackupStartTime,
    this.deploymentType,
    this.diskIopsConfiguration,
    this.finalBackupTags,
    this.kmsKeyId,
    this.networkType,
    this.preferredSubnetId,
    this.region,
    this.securityGroupIds,
    this.selfManagedActiveDirectory,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    required this.subnetIds,
    this.tags,
    required this.throughputCapacity,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': ?activeDirectoryId,
      'aliases': ?aliases,
      'auditLogConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemAuditLogConfiguration, Map<String, dynamic>>(auditLogConfiguration, (value) => value.toMap()),
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deploymentType': ?deploymentType,
      'diskIopsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfiguration, (value) => value.toMap()),
      'finalBackupTags': ?finalBackupTags,
      'kmsKeyId': ?kmsKeyId,
      'networkType': ?networkType,
      'preferredSubnetId': ?preferredSubnetId,
      'region': ?region,
      'securityGroupIds': ?securityGroupIds,
      'selfManagedActiveDirectory': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemSelfManagedActiveDirectory, Map<String, dynamic>>(selfManagedActiveDirectory, (value) => value.toMap()),
      'skipFinalBackup': ?skipFinalBackup,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': subnetIds,
      'tags': ?tags,
      'throughputCapacity': throughputCapacity,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory WindowsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemArgs(
      activeDirectoryId: (() { final guardedValue = map['activeDirectoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      auditLogConfiguration: (() { final guardedValue = map['auditLogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemAuditLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToBackups: (() { final guardedValue = map['copyTagsToBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIopsConfiguration: (() { final guardedValue = map['diskIopsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      finalBackupTags: (() { final guardedValue = map['finalBackupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredSubnetId: (() { final guardedValue = map['preferredSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfManagedActiveDirectory: (() { final guardedValue = map['selfManagedActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemSelfManagedActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipFinalBackup: (() { final guardedValue = map['skipFinalBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: pulumi.Input.fromValue((map['subnetIds'] as List).cast<String>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputCapacity: pulumi.Input.fromValue((map['throughputCapacity'] as num).toInt()),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
