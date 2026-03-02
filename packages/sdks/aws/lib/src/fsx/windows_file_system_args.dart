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
  /// The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `self_managed_active_directory`.
  final pulumi.Input<String>? activeDirectoryId;
  /// An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  final pulumi.Input<List<String>>? aliases;
  /// The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `audit_log_configuration` Block for details.
  final pulumi.Input<WindowsFileSystemAuditLogConfiguration>? auditLogConfiguration;
  /// The number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// The ID of the source backup to create the filesystem from.
  final pulumi.Input<String>? backupId;
  /// A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to `false`.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// The preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// Specifies the file system deployment type, valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  final pulumi.Input<String>? deploymentType;
  /// The SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `disk_iops_configuration` Block for details.
  final pulumi.Input<WindowsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// A map of tags to apply to the file system's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  final pulumi.Input<String>? preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `active_directory_id`. See `self_managed_active_directory` Block for details.
  final pulumi.Input<WindowsFileSystemSelfManagedActiveDirectory>? selfManagedActiveDirectory;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  final pulumi.Input<int>? storageCapacity;
  /// Specifies the storage type, Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  final pulumi.Input<String>? storageType;
  /// A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deployment_type` to `MULTI_AZ_1`.
  final pulumi.Input<List<String>> subnetIds;
  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<int> throughputCapacity;
  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [WindowsFileSystemArgs].
  /// [activeDirectoryId] The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `self_managed_active_directory`.
  /// [aliases] An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  /// [auditLogConfiguration] The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `audit_log_configuration` Block for details.
  /// [automaticBackupRetentionDays] The number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  /// [backupId] The ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to `false`.
  /// [dailyAutomaticBackupStartTime] The preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  /// [deploymentType] Specifies the file system deployment type, valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  /// [diskIopsConfiguration] The SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `disk_iops_configuration` Block for details.
  /// [finalBackupTags] A map of tags to apply to the file system's final backup.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  /// [preferredSubnetId] Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityGroupIds] A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [selfManagedActiveDirectory] Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `active_directory_id`. See `self_managed_active_directory` Block for details.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  /// [storageType] Specifies the storage type, Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  /// [subnetIds] A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deployment_type` to `MULTI_AZ_1`.
  /// [tags] A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [throughputCapacity] Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  /// [weeklyMaintenanceStartTime] The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  WindowsFileSystemArgs({
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
      activeDirectoryId: map['activeDirectoryId'] == null ? null : ((map['activeDirectoryId'] as String).input()).input(),
      aliases: map['aliases'] == null ? null : (((map['aliases'] as List).cast<String>()).input()).input(),
      auditLogConfiguration: map['auditLogConfiguration'] == null ? null : ((WindowsFileSystemAuditLogConfiguration.fromMap((map['auditLogConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null ? null : ((map['automaticBackupRetentionDays'] as int).input()).input(),
      backupId: map['backupId'] == null ? null : ((map['backupId'] as String).input()).input(),
      copyTagsToBackups: map['copyTagsToBackups'] == null ? null : ((map['copyTagsToBackups'] as bool).input()).input(),
      dailyAutomaticBackupStartTime: map['dailyAutomaticBackupStartTime'] == null ? null : ((map['dailyAutomaticBackupStartTime'] as String).input()).input(),
      deploymentType: map['deploymentType'] == null ? null : ((map['deploymentType'] as String).input()).input(),
      diskIopsConfiguration: map['diskIopsConfiguration'] == null ? null : ((WindowsFileSystemDiskIopsConfiguration.fromMap((map['diskIopsConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      finalBackupTags: map['finalBackupTags'] == null ? null : (((map['finalBackupTags'] as Map).cast<String, String>()).input()).input(),
      kmsKeyId: map['kmsKeyId'] == null ? null : ((map['kmsKeyId'] as String).input()).input(),
      preferredSubnetId: map['preferredSubnetId'] == null ? null : ((map['preferredSubnetId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityGroupIds: map['securityGroupIds'] == null ? null : (((map['securityGroupIds'] as List).cast<String>()).input()).input(),
      selfManagedActiveDirectory: map['selfManagedActiveDirectory'] == null ? null : ((WindowsFileSystemSelfManagedActiveDirectory.fromMap((map['selfManagedActiveDirectory']! as Map).cast<String, dynamic>())).input()).input(),
      skipFinalBackup: map['skipFinalBackup'] == null ? null : ((map['skipFinalBackup'] as bool).input()).input(),
      storageCapacity: map['storageCapacity'] == null ? null : ((map['storageCapacity'] as int).input()).input(),
      storageType: map['storageType'] == null ? null : ((map['storageType'] as String).input()).input(),
      subnetIds: ((map['subnetIds'] as List).cast<String>()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      throughputCapacity: (map['throughputCapacity'] as int).input(),
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null ? null : ((map['weeklyMaintenanceStartTime'] as String).input()).input(),
    );
  }
}

