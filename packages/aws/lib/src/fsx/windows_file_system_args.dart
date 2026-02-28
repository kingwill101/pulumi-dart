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
  final pulumi.Input<WindowsFileSystemAuditLogConfiguration>?
      auditLogConfiguration;

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
  final pulumi.Input<WindowsFileSystemDiskIopsConfiguration>?
      diskIopsConfiguration;

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
  final pulumi.Input<WindowsFileSystemSelfManagedActiveDirectory>?
      selfManagedActiveDirectory;

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
    String? activeDirectoryId,
    List<String>? aliases,
    WindowsFileSystemAuditLogConfiguration? auditLogConfiguration,
    int? automaticBackupRetentionDays,
    String? backupId,
    bool? copyTagsToBackups,
    String? dailyAutomaticBackupStartTime,
    String? deploymentType,
    WindowsFileSystemDiskIopsConfiguration? diskIopsConfiguration,
    Map<String, String>? finalBackupTags,
    String? kmsKeyId,
    String? preferredSubnetId,
    String? region,
    List<String>? securityGroupIds,
    WindowsFileSystemSelfManagedActiveDirectory? selfManagedActiveDirectory,
    bool? skipFinalBackup,
    int? storageCapacity,
    String? storageType,
    required List<String> subnetIds,
    Map<String, String>? tags,
    required int throughputCapacity,
    String? weeklyMaintenanceStartTime,
  })  : activeDirectoryId =
            pulumi.Input.asOptionalInput<String>(activeDirectoryId),
        aliases = pulumi.Input.asOptionalInput<List<String>>(aliases),
        auditLogConfiguration = pulumi.Input.asOptionalInput<
            WindowsFileSystemAuditLogConfiguration>(auditLogConfiguration),
        automaticBackupRetentionDays =
            pulumi.Input.asOptionalInput<int>(automaticBackupRetentionDays),
        backupId = pulumi.Input.asOptionalInput<String>(backupId),
        copyTagsToBackups =
            pulumi.Input.asOptionalInput<bool>(copyTagsToBackups),
        dailyAutomaticBackupStartTime =
            pulumi.Input.asOptionalInput<String>(dailyAutomaticBackupStartTime),
        deploymentType = pulumi.Input.asOptionalInput<String>(deploymentType),
        diskIopsConfiguration = pulumi.Input.asOptionalInput<
            WindowsFileSystemDiskIopsConfiguration>(diskIopsConfiguration),
        finalBackupTags =
            pulumi.Input.asOptionalInput<Map<String, String>>(finalBackupTags),
        kmsKeyId = pulumi.Input.asOptionalInput<String>(kmsKeyId),
        preferredSubnetId =
            pulumi.Input.asOptionalInput<String>(preferredSubnetId),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityGroupIds =
            pulumi.Input.asOptionalInput<List<String>>(securityGroupIds),
        selfManagedActiveDirectory = pulumi.Input.asOptionalInput<
                WindowsFileSystemSelfManagedActiveDirectory>(
            selfManagedActiveDirectory),
        skipFinalBackup = pulumi.Input.asOptionalInput<bool>(skipFinalBackup),
        storageCapacity = pulumi.Input.asOptionalInput<int>(storageCapacity),
        storageType = pulumi.Input.asOptionalInput<String>(storageType),
        subnetIds = pulumi.Input.asInput<List<String>>(subnetIds),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        throughputCapacity = pulumi.Input.asInput<int>(throughputCapacity),
        weeklyMaintenanceStartTime =
            pulumi.Input.asOptionalInput<String>(weeklyMaintenanceStartTime);

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
      map['auditLogConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
      map['diskIopsConfiguration'] = pulumi.Input.mapOptionalInputValue<
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
      map['selfManagedActiveDirectory'] = pulumi.Input.mapOptionalInputValue<
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
      activeDirectoryId: map['activeDirectoryId'] == null
          ? null
          : map['activeDirectoryId'] as String,
      aliases: map['aliases'] == null
          ? null
          : (map['aliases'] as List).cast<String>(),
      auditLogConfiguration: map['auditLogConfiguration'] == null
          ? null
          : WindowsFileSystemAuditLogConfiguration.fromMap(
              (map['auditLogConfiguration'] as Map).cast<String, dynamic>()),
      automaticBackupRetentionDays: map['automaticBackupRetentionDays'] == null
          ? null
          : map['automaticBackupRetentionDays'] as int,
      backupId: map['backupId'] == null ? null : map['backupId'] as String,
      copyTagsToBackups: map['copyTagsToBackups'] == null
          ? null
          : map['copyTagsToBackups'] as bool,
      dailyAutomaticBackupStartTime:
          map['dailyAutomaticBackupStartTime'] == null
              ? null
              : map['dailyAutomaticBackupStartTime'] as String,
      deploymentType: map['deploymentType'] == null
          ? null
          : map['deploymentType'] as String,
      diskIopsConfiguration: map['diskIopsConfiguration'] == null
          ? null
          : WindowsFileSystemDiskIopsConfiguration.fromMap(
              (map['diskIopsConfiguration'] as Map).cast<String, dynamic>()),
      finalBackupTags: map['finalBackupTags'] == null
          ? null
          : (map['finalBackupTags'] as Map).cast<String, String>(),
      kmsKeyId: map['kmsKeyId'] == null ? null : map['kmsKeyId'] as String,
      preferredSubnetId: map['preferredSubnetId'] == null
          ? null
          : map['preferredSubnetId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityGroupIds: map['securityGroupIds'] == null
          ? null
          : (map['securityGroupIds'] as List).cast<String>(),
      selfManagedActiveDirectory: map['selfManagedActiveDirectory'] == null
          ? null
          : WindowsFileSystemSelfManagedActiveDirectory.fromMap(
              (map['selfManagedActiveDirectory'] as Map)
                  .cast<String, dynamic>()),
      skipFinalBackup: map['skipFinalBackup'] == null
          ? null
          : map['skipFinalBackup'] as bool,
      storageCapacity:
          map['storageCapacity'] == null ? null : map['storageCapacity'] as int,
      storageType:
          map['storageType'] == null ? null : map['storageType'] as String,
      subnetIds: (map['subnetIds'] as List).cast<String>(),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      throughputCapacity: map['throughputCapacity'] as int,
      weeklyMaintenanceStartTime: map['weeklyMaintenanceStartTime'] == null
          ? null
          : map['weeklyMaintenanceStartTime'] as String,
    );
  }
}
