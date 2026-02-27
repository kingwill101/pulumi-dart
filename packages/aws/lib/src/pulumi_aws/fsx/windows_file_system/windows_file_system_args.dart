// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../windows_file_system_audit_log_configuration/windows_file_system_audit_log_configuration.dart';
import '../windows_file_system_disk_iops_configuration/windows_file_system_disk_iops_configuration.dart';
import '../windows_file_system_self_managed_active_directory/windows_file_system_self_managed_active_directory.dart';

/// The set of arguments for WindowsFileSystem.
class WindowsFileSystemArgs {
  /// The ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `self_managed_active_directory`.
  final Input<String>? activeDirectoryId;

  /// An array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  final Input<List<String>>? aliases;

  /// The configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `audit_log_configuration` Block for details.
  final Input<WindowsFileSystemAuditLogConfiguration>? auditLogConfiguration;

  /// The number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  final Input<int>? automaticBackupRetentionDays;

  /// The ID of the source backup to create the filesystem from.
  final Input<String>? backupId;

  /// A boolean flag indicating whether tags on the file system should be copied to backups. Defaults to `false`.
  final Input<bool>? copyTagsToBackups;

  /// The preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final Input<String>? dailyAutomaticBackupStartTime;

  /// Specifies the file system deployment type, valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  final Input<String>? deploymentType;

  /// The SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `disk_iops_configuration` Block for details.
  final Input<WindowsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;

  /// A map of tags to apply to the file system's final backup.
  final Input<Map<String, String>>? finalBackupTags;

  /// ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  final Input<String>? kmsKeyId;

  /// Specifies the subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  final Input<String>? preferredSubnetId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// A list of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final Input<List<String>>? securityGroupIds;

  /// Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `active_directory_id`. See `self_managed_active_directory` Block for details.
  final Input<WindowsFileSystemSelfManagedActiveDirectory>?
      selfManagedActiveDirectory;

  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final Input<bool>? skipFinalBackup;

  /// Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  final Input<int>? storageCapacity;

  /// Specifies the storage type, Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  final Input<String>? storageType;

  /// A list of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deployment_type` to `MULTI_AZ_1`.
  final Input<List<String>> subnetIds;

  /// A map of tags to assign to the file system. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  ///
  /// The following arguments are optional:
  final Input<int> throughputCapacity;

  /// The preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final Input<String>? weeklyMaintenanceStartTime;

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
    final map = <String, dynamic>{};
    final activeDirectoryIdValue = activeDirectoryId;
    if (activeDirectoryIdValue != null) {
      map['activeDirectoryId'] = activeDirectoryIdValue;
    }
    final aliasesValue = aliases;
    if (aliasesValue != null) {
      map['aliases'] = aliasesValue;
    }
    final auditLogConfigurationValue = auditLogConfiguration;
    if (auditLogConfigurationValue != null) {
      map['auditLogConfiguration'] = Input.mapOptionalInputValue<
              WindowsFileSystemAuditLogConfiguration, Map<String, dynamic>>(
          auditLogConfigurationValue, (value) => value.toMap());
    }
    final automaticBackupRetentionDaysValue = automaticBackupRetentionDays;
    if (automaticBackupRetentionDaysValue != null) {
      map['automaticBackupRetentionDays'] = automaticBackupRetentionDaysValue;
    }
    final backupIdValue = backupId;
    if (backupIdValue != null) {
      map['backupId'] = backupIdValue;
    }
    final copyTagsToBackupsValue = copyTagsToBackups;
    if (copyTagsToBackupsValue != null) {
      map['copyTagsToBackups'] = copyTagsToBackupsValue;
    }
    final dailyAutomaticBackupStartTimeValue = dailyAutomaticBackupStartTime;
    if (dailyAutomaticBackupStartTimeValue != null) {
      map['dailyAutomaticBackupStartTime'] = dailyAutomaticBackupStartTimeValue;
    }
    final deploymentTypeValue = deploymentType;
    if (deploymentTypeValue != null) {
      map['deploymentType'] = deploymentTypeValue;
    }
    final diskIopsConfigurationValue = diskIopsConfiguration;
    if (diskIopsConfigurationValue != null) {
      map['diskIopsConfiguration'] = Input.mapOptionalInputValue<
              WindowsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(
          diskIopsConfigurationValue, (value) => value.toMap());
    }
    final finalBackupTagsValue = finalBackupTags;
    if (finalBackupTagsValue != null) {
      map['finalBackupTags'] = finalBackupTagsValue;
    }
    final kmsKeyIdValue = kmsKeyId;
    if (kmsKeyIdValue != null) {
      map['kmsKeyId'] = kmsKeyIdValue;
    }
    final preferredSubnetIdValue = preferredSubnetId;
    if (preferredSubnetIdValue != null) {
      map['preferredSubnetId'] = preferredSubnetIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityGroupIdsValue = securityGroupIds;
    if (securityGroupIdsValue != null) {
      map['securityGroupIds'] = securityGroupIdsValue;
    }
    final selfManagedActiveDirectoryValue = selfManagedActiveDirectory;
    if (selfManagedActiveDirectoryValue != null) {
      map['selfManagedActiveDirectory'] = Input.mapOptionalInputValue<
              WindowsFileSystemSelfManagedActiveDirectory,
              Map<String, dynamic>>(
          selfManagedActiveDirectoryValue, (value) => value.toMap());
    }
    final skipFinalBackupValue = skipFinalBackup;
    if (skipFinalBackupValue != null) {
      map['skipFinalBackup'] = skipFinalBackupValue;
    }
    final storageCapacityValue = storageCapacity;
    if (storageCapacityValue != null) {
      map['storageCapacity'] = storageCapacityValue;
    }
    final storageTypeValue = storageType;
    if (storageTypeValue != null) {
      map['storageType'] = storageTypeValue;
    }
    map['subnetIds'] = subnetIds;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['throughputCapacity'] = throughputCapacity;
    final weeklyMaintenanceStartTimeValue = weeklyMaintenanceStartTime;
    if (weeklyMaintenanceStartTimeValue != null) {
      map['weeklyMaintenanceStartTime'] = weeklyMaintenanceStartTimeValue;
    }
    return map;
  }

  factory WindowsFileSystemArgs.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemArgs(
      activeDirectoryId:
          Input.asOptionalInput<String>(map['activeDirectoryId']),
      aliases: Input.asOptionalInput<List<String>>(map['aliases']),
      auditLogConfiguration:
          Input.asOptionalInput<WindowsFileSystemAuditLogConfiguration>(
              map['auditLogConfiguration']),
      automaticBackupRetentionDays:
          Input.asOptionalInput<int>(map['automaticBackupRetentionDays']),
      backupId: Input.asOptionalInput<String>(map['backupId']),
      copyTagsToBackups: Input.asOptionalInput<bool>(map['copyTagsToBackups']),
      dailyAutomaticBackupStartTime:
          Input.asOptionalInput<String>(map['dailyAutomaticBackupStartTime']),
      deploymentType: Input.asOptionalInput<String>(map['deploymentType']),
      diskIopsConfiguration:
          Input.asOptionalInput<WindowsFileSystemDiskIopsConfiguration>(
              map['diskIopsConfiguration']),
      finalBackupTags:
          Input.asOptionalInput<Map<String, String>>(map['finalBackupTags']),
      kmsKeyId: Input.asOptionalInput<String>(map['kmsKeyId']),
      preferredSubnetId:
          Input.asOptionalInput<String>(map['preferredSubnetId']),
      region: Input.asOptionalInput<String>(map['region']),
      securityGroupIds:
          Input.asOptionalInput<List<String>>(map['securityGroupIds']),
      selfManagedActiveDirectory:
          Input.asOptionalInput<WindowsFileSystemSelfManagedActiveDirectory>(
              map['selfManagedActiveDirectory']),
      skipFinalBackup: Input.asOptionalInput<bool>(map['skipFinalBackup']),
      storageCapacity: Input.asOptionalInput<int>(map['storageCapacity']),
      storageType: Input.asOptionalInput<String>(map['storageType']),
      subnetIds: Input.asInput<List<String>>(map['subnetIds']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      throughputCapacity: Input.asInput<int>(map['throughputCapacity']),
      weeklyMaintenanceStartTime:
          Input.asOptionalInput<String>(map['weeklyMaintenanceStartTime']),
    );
  }
}
