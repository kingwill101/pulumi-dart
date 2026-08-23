// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'windows_file_system_audit_log_configuration.dart';
import 'windows_file_system_disk_iops_configuration.dart';
import 'windows_file_system_self_managed_active_directory.dart';

/// Input properties used for looking up and filtering WindowsFileSystem resources.
class WindowsFileSystemState {
  /// ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `selfManagedActiveDirectory`.
  final pulumi.Input<String>? activeDirectoryId;
  /// Array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  final pulumi.Input<List<String>>? aliases;
  /// Amazon Resource Name of the file system.
  final pulumi.Input<String>? arn;
  /// Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `auditLogConfiguration` Block for details.
  final pulumi.Input<WindowsFileSystemAuditLogConfiguration>? auditLogConfiguration;
  /// Number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  final pulumi.Input<int>? automaticBackupRetentionDays;
  /// ID of the source backup to create the filesystem from.
  final pulumi.Input<String>? backupId;
  /// Whether to copy tags on the file system to backups. Defaults to `false`.
  final pulumi.Input<bool>? copyTagsToBackups;
  /// Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  final pulumi.Input<String>? dailyAutomaticBackupStartTime;
  /// File system deployment type. Valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  final pulumi.Input<String>? deploymentType;
  /// SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `diskIopsConfiguration` Block for details.
  final pulumi.Input<WindowsFileSystemDiskIopsConfiguration>? diskIopsConfiguration;
  /// DNS name for the file system, e.g., `fs-12345678.corp.example.com` (domain name matching the Active Directory domain name)
  final pulumi.Input<String>? dnsName;
  /// Map of tags to apply to the file system's final backup.
  final pulumi.Input<Map<String, String>>? finalBackupTags;
  /// ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  final pulumi.Input<String>? kmsKeyId;
  /// Set of Elastic Network Interface identifiers from which the file system is accessible.
  final pulumi.Input<List<String>>? networkInterfaceIds;
  /// Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  final pulumi.Input<String>? networkType;
  /// AWS account identifier that created the file system.
  final pulumi.Input<String>? ownerId;
  /// IP address of the primary, or preferred, file server.
  final pulumi.Input<String>? preferredFileServerIp;
  /// Subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  final pulumi.Input<String>? preferredSubnetId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// For `MULTI_AZ_1` deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For `SINGLE_AZ_1` deployment types, this is the DNS name of the file system.
  final pulumi.Input<String>? remoteAdministrationEndpoint;
  /// List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  final pulumi.Input<List<String>>? securityGroupIds;
  /// Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `activeDirectoryId`. See `selfManagedActiveDirectory` Block for details.
  final pulumi.Input<WindowsFileSystemSelfManagedActiveDirectory>? selfManagedActiveDirectory;
  /// When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  final pulumi.Input<bool>? skipFinalBackup;
  /// Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  final pulumi.Input<int>? storageCapacity;
  /// Storage type. Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  final pulumi.Input<String>? storageType;
  /// List of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deploymentType` to `MULTI_AZ_1`.
  final pulumi.Input<List<String>>? subnetIds;
  /// Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  ///
  /// The following arguments are optional:
  final pulumi.Input<int>? throughputCapacity;
  /// Identifier of the Virtual Private Cloud for the file system.
  final pulumi.Input<String>? vpcId;
  /// Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  final pulumi.Input<String>? weeklyMaintenanceStartTime;

  /// Creates a new [WindowsFileSystemState].
  /// [activeDirectoryId] ID for an existing Microsoft Active Directory instance that the file system should join when it's created. Cannot be specified with `selfManagedActiveDirectory`.
  /// [aliases] Array DNS alias names that you want to associate with the Amazon FSx file system.  For more information, see [Working with DNS Aliases](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/managing-dns-aliases.html)
  /// [arn] Amazon Resource Name of the file system.
  /// [auditLogConfiguration] Configuration that Amazon FSx for Windows File Server uses to audit and log user accesses of files, folders, and file shares on the Amazon FSx for Windows File Server file system. See `auditLogConfiguration` Block for details.
  /// [automaticBackupRetentionDays] Number of days to retain automatic backups. Minimum of `0` and maximum of `90`. Defaults to `7`. Set to `0` to disable.
  /// [backupId] ID of the source backup to create the filesystem from.
  /// [copyTagsToBackups] Whether to copy tags on the file system to backups. Defaults to `false`.
  /// [dailyAutomaticBackupStartTime] Preferred time (in `HH:MM` format) to take daily automatic backups, in the UTC time zone.
  /// [deploymentType] File system deployment type. Valid values are `MULTI_AZ_1`, `SINGLE_AZ_1` and `SINGLE_AZ_2`. Default value is `SINGLE_AZ_1`.
  /// [diskIopsConfiguration] SSD IOPS configuration for the Amazon FSx for Windows File Server file system. See `diskIopsConfiguration` Block for details.
  /// [dnsName] DNS name for the file system, e.g., `fs-12345678.corp.example.com` (domain name matching the Active Directory domain name)
  /// [finalBackupTags] Map of tags to apply to the file system's final backup.
  /// [kmsKeyId] ARN for the KMS Key to encrypt the file system at rest. Defaults to an AWS managed KMS Key.
  /// [networkInterfaceIds] Set of Elastic Network Interface identifiers from which the file system is accessible.
  /// [networkType] Network type. Valid values are `IPV4` and `DUAL`. Default value is `IPV4`.
  /// [ownerId] AWS account identifier that created the file system.
  /// [preferredFileServerIp] IP address of the primary, or preferred, file server.
  /// [preferredSubnetId] Subnet in which you want the preferred file server to be located. Required for when deployment type is `MULTI_AZ_1`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [remoteAdministrationEndpoint] For `MULTI_AZ_1` deployment types, use this endpoint when performing administrative tasks on the file system using Amazon FSx Remote PowerShell. For `SINGLE_AZ_1` deployment types, this is the DNS name of the file system.
  /// [securityGroupIds] List of IDs for the security groups that apply to the specified network interfaces created for file system access. These security groups will apply to all network interfaces.
  /// [selfManagedActiveDirectory] Configuration block that Amazon FSx uses to join the Windows File Server instance to your self-managed (including on-premises) Microsoft Active Directory (AD) directory. Cannot be specified with `activeDirectoryId`. See `selfManagedActiveDirectory` Block for details.
  /// [skipFinalBackup] When enabled, will skip the default final backup taken when the file system is deleted. This configuration must be applied separately before attempting to delete the resource to have the desired behavior. Defaults to `false`.
  /// [storageCapacity] Storage capacity (GiB) of the file system. Minimum of 32 and maximum of 65536. If the storage type is set to `HDD` the minimum value is 2000. Required when not creating filesystem for a backup.
  /// [storageType] Storage type. Valid values are `SSD` and `HDD`. `HDD` is supported on `SINGLE_AZ_2` and `MULTI_AZ_1` Windows file system deployment types. Default value is `SSD`.
  /// [subnetIds] List of IDs for the subnets that the file system will be accessible from. To specify more than a single subnet set `deploymentType` to `MULTI_AZ_1`.
  /// [tags] Map of tags to assign to the file system. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [throughputCapacity] Throughput (megabytes per second) of the file system. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/performance.html).
  /// [vpcId] Identifier of the Virtual Private Cloud for the file system.
  /// [weeklyMaintenanceStartTime] Preferred start time (in `d:HH:MM` format) to perform weekly maintenance, in the UTC time zone.
  const WindowsFileSystemState({
    this.activeDirectoryId,
    this.aliases,
    this.arn,
    this.auditLogConfiguration,
    this.automaticBackupRetentionDays,
    this.backupId,
    this.copyTagsToBackups,
    this.dailyAutomaticBackupStartTime,
    this.deploymentType,
    this.diskIopsConfiguration,
    this.dnsName,
    this.finalBackupTags,
    this.kmsKeyId,
    this.networkInterfaceIds,
    this.networkType,
    this.ownerId,
    this.preferredFileServerIp,
    this.preferredSubnetId,
    this.region,
    this.remoteAdministrationEndpoint,
    this.securityGroupIds,
    this.selfManagedActiveDirectory,
    this.skipFinalBackup,
    this.storageCapacity,
    this.storageType,
    this.subnetIds,
    this.tags,
    this.tagsAll,
    this.throughputCapacity,
    this.vpcId,
    this.weeklyMaintenanceStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activeDirectoryId': ?activeDirectoryId,
      'aliases': ?aliases,
      'arn': ?arn,
      'auditLogConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemAuditLogConfiguration, Map<String, dynamic>>(auditLogConfiguration, (value) => value.toMap()),
      'automaticBackupRetentionDays': ?automaticBackupRetentionDays,
      'backupId': ?backupId,
      'copyTagsToBackups': ?copyTagsToBackups,
      'dailyAutomaticBackupStartTime': ?dailyAutomaticBackupStartTime,
      'deploymentType': ?deploymentType,
      'diskIopsConfiguration': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemDiskIopsConfiguration, Map<String, dynamic>>(diskIopsConfiguration, (value) => value.toMap()),
      'dnsName': ?dnsName,
      'finalBackupTags': ?finalBackupTags,
      'kmsKeyId': ?kmsKeyId,
      'networkInterfaceIds': ?networkInterfaceIds,
      'networkType': ?networkType,
      'ownerId': ?ownerId,
      'preferredFileServerIp': ?preferredFileServerIp,
      'preferredSubnetId': ?preferredSubnetId,
      'region': ?region,
      'remoteAdministrationEndpoint': ?remoteAdministrationEndpoint,
      'securityGroupIds': ?securityGroupIds,
      'selfManagedActiveDirectory': ?pulumi.Input.mapOptionalInputValue<WindowsFileSystemSelfManagedActiveDirectory, Map<String, dynamic>>(selfManagedActiveDirectory, (value) => value.toMap()),
      'skipFinalBackup': ?skipFinalBackup,
      'storageCapacity': ?storageCapacity,
      'storageType': ?storageType,
      'subnetIds': ?subnetIds,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'throughputCapacity': ?throughputCapacity,
      'vpcId': ?vpcId,
      'weeklyMaintenanceStartTime': ?weeklyMaintenanceStartTime,
    };
  }

  factory WindowsFileSystemState.fromMap(Map<String, dynamic> map) {
    return WindowsFileSystemState(
      activeDirectoryId: (() { final guardedValue = map['activeDirectoryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aliases: (() { final guardedValue = map['aliases']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      auditLogConfiguration: (() { final guardedValue = map['auditLogConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemAuditLogConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      automaticBackupRetentionDays: (() { final guardedValue = map['automaticBackupRetentionDays']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      copyTagsToBackups: (() { final guardedValue = map['copyTagsToBackups']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dailyAutomaticBackupStartTime: (() { final guardedValue = map['dailyAutomaticBackupStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentType: (() { final guardedValue = map['deploymentType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskIopsConfiguration: (() { final guardedValue = map['diskIopsConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemDiskIopsConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      dnsName: (() { final guardedValue = map['dnsName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      finalBackupTags: (() { final guardedValue = map['finalBackupTags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      kmsKeyId: (() { final guardedValue = map['kmsKeyId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkInterfaceIds: (() { final guardedValue = map['networkInterfaceIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      networkType: (() { final guardedValue = map['networkType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ownerId: (() { final guardedValue = map['ownerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredFileServerIp: (() { final guardedValue = map['preferredFileServerIp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredSubnetId: (() { final guardedValue = map['preferredSubnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteAdministrationEndpoint: (() { final guardedValue = map['remoteAdministrationEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityGroupIds: (() { final guardedValue = map['securityGroupIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      selfManagedActiveDirectory: (() { final guardedValue = map['selfManagedActiveDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(WindowsFileSystemSelfManagedActiveDirectory.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      skipFinalBackup: (() { final guardedValue = map['skipFinalBackup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageCapacity: (() { final guardedValue = map['storageCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subnetIds: (() { final guardedValue = map['subnetIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      throughputCapacity: (() { final guardedValue = map['throughputCapacity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weeklyMaintenanceStartTime: (() { final guardedValue = map['weeklyMaintenanceStartTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
